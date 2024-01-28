<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Warcraft III Heroes Guide</title>
    <script src="script.js"></script>
</head>
<body>        
        <header class = "header">
        <table class="buttons">
            <?php 
                session_start();
                if (isset($_POST['logout']))
                {
                    session_destroy();
                    header("Location: index.php");
                }
                if (!isset($_SESSION['nickname']))
                {
                echo "            
                <td>
                    <button onmousedown='auth()'>Вход</button>
                </td>
                <td>
                    <button onmousedown='reg()'>Регистрация</button>
                </td>";}
                else{
                    $nickname = $_SESSION['nickname'];
                    echo "
                    <td>
                    <label>Авторизованы в систему как $nickname</label>
                </td>                
                <td>
                <button onmousedown='writing()'>Опубликовать статью</button>
                </td>
                <td>
                <button onmousedown='changePass()'>Сменить пароль пользователя</button>
                </td>
                <td>
                    <form  action='index.php' method='post'>
                    <button id='logout' name='logout' type='submit'>Выход</button>
                    </form>
                </td>";
                }
            ?>

        </table>
        <a class='main-link' href='index.php'>
            <h1 class="header_h1">WARCRAFT III HEROES GUIDE</h1>
        </a>
</header>        