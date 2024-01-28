<?php include("header.php");?>
    <?php
	session_start();
    if(isset($_SESSION['nickname']))
    {
        header('Location: index.php');
    }
	if(isset($_POST["register"])){
	if(!empty($_POST['nickname']) && !empty($_POST['password'])) {
        require("connection.php");
        if ($con != false){
        $nickname= htmlspecialchars($_POST['nickname']);
        $password=password_hash(htmlspecialchars($_POST['password']),PASSWORD_DEFAULT);
        $query=mysqli_query($mysqli,"SELECT * FROM User WHERE nickname ='$nickname'");
        $numrows=mysqli_num_rows($query);
        if($numrows==0)
        {
	        $sql="INSERT INTO User
            (nickname, password)
	        VALUES('$nickname', '$password')";
            $result=mysqli_query($mysqli,$sql);
            if($result){
                $message = "Успешно зарегистрирован";
                echo "<script>alert('$message')</script>";
                $_SESSION['nickname'] = $nickname;
                header('Location: index.php');
                exit;
            } else {
                $message = "Ошибка во время регистрации!";
            }
	    } else {
	        $message = "Ошибка! Пользователь с данным именем уже существует";
        }
    }
	} else {
	    $message = "Вы заполнили не все поля!";
	}
	}
	?>
    <?php if (!empty($message)) {echo "<script>alert('$message')</script>";} ?>

    <div id="popup" border-color="black">
        <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
                <legend>Регистрация</legend>    
                <form  action="reg.php" method="post">
                <table class='reg-form'>
                    <tr>
                        <td>
                            <input type="text" name="nickname" id="nickname" placeholder="Введите логин"><br>
                        </td>
                    </tr>
                <tr>
                    <td>
                        <input type="password" name="password" id="password" placeholder="Введите пароль"><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button id="register" name="register" type="submit">Зарегистрироваться</button>
                    </td>
                </tr>
                </table>      
                </form>
		        <br>
        </fieldset>
    </div>
</body>