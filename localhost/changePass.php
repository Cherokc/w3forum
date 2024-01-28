<?php include("header.php");?>
    <?php
	session_start();
    if(!isset($_SESSION['nickname']))
    {
        header('Location: index.php');
    }
	if(isset($_POST["register"])){
	if(!empty($_POST['oldpassword']) && !empty($_POST['newpassword'])) {
        if($_POST['oldpassword'] != $_POST['newpassword']){
        require("connection.php");
        if ($con != false){
        $nickname= $_SESSION['nickname'];
        $oldpassword=$_POST['oldpassword'];
        $query=mysqli_query($mysqli,"SELECT password FROM User WHERE nickname ='$nickname'");
        if($query){
            $row = mysqli_fetch_assoc($query);
            if (password_verify($oldpassword,$row['password'])){
                $newpassword = password_hash(htmlspecialchars($_POST['newpassword']),PASSWORD_DEFAULT);
                $query=mysqli_query($mysqli,"UPDATE User SET password = '$newpassword' WHERE nickname ='$nickname'");
                if($query){
                    $message = "Пароль успешно сменен!";
                } else {
                    $message = "Ошибка смены пароля!";
                }
            }
            else {
                $message = "Неверный пароль! $oldpassword ".$row['password'];
            }
        }
        }
        } else {
            $message = "Новый пароль не отличается от старого!";
        }
        } else {
            $message = "Вы заполнили не все поля!";
        }
	}
    if (!empty($message)) {echo "<script>alert('$message')</script>";} ?>

    <div id="popup" border-color="black">
        <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
                <legend>Смена пароля</legend>    
                <form  action="changePass.php" method="post">
                <table class='reg-form'>
                    <tr>
                        <td>
                            <input type="password" name="oldpassword" id="oldpassword" placeholder="Введите текущий пароль"><br>
                        </td>
                    </tr>
                <tr>
                    <td>
                        <input type="password" name="newpassword" id="newpassword" placeholder="Введите новый пароль"><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button id="register" name="register" type="submit">Сменить пароль</button>
                    </td>
                </tr>
                </table>      
                </form>
		        <br>
        </fieldset>
    </div>
</body>