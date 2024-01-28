    <?php include("header.php");?>
    <?php
	session_start();
    if(isset($_SESSION['nickname']))
    {
        header('Location: index.php');
    }
    if (isset($_POST['login'])) {
        require("connection.php");
        $nickname = $_POST['nickname'];
        $password = $_POST['password'];
        
        $query = mysqli_query($mysqli,"SELECT * FROM User WHERE nickname ='$nickname'");
        while( $row = mysqli_fetch_assoc($query)){
            $result[] = $row; 
        }
        if (!$query) {
            echo "<script>alert('Неверные имя пользователя или пароль!')</script>";
        } else {
            if (password_verify($password, $result[0]['password'])) {
                $_SESSION['nickname'] = $result[0]['nickname'];
                echo "<script>alert('Вы успешно вошли в систему')</script>";
                header("Location: index.php");
            } else {
                echo "<script>alert('Неверные имя пользователя или пароль!')</script>";
            }
        }
    }
    ?>

    <div id="popup" border-color="black">
        <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
                <legend>Авторизация</legend>    
                <form  action="auth.php" method="post">
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
                        <button id="login" name="login" type="submit">Авторизоваться</button>
                    </td>
                </tr>
                </table>      
                </form>
		        <br>
        </fieldset>
    </div>
</body>