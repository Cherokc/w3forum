<?php 
    include("header.php"); 
    if(!isset($_SESSION['nickname']))
    {
        header('Location: index.php');
    }
    echo$_POST["publish"];
    if(isset($_POST["publish"])){
        if(!empty($_POST['title']) && !empty($_POST['info1']) && !empty($_POST['info2']) && !empty($_POST['info3'])) {
            require("connection.php");
            if ($con != false){
            $title= str_replace('\'','\'\'',htmlspecialchars($_POST['title']));
            $info1= str_replace('\'','\'\'',htmlspecialchars($_POST['info1']));
            $info2= str_replace('\'','\'\'',htmlspecialchars($_POST['info2']));
            $info3= str_replace('\'','\'\'',htmlspecialchars($_POST['info3']));
            $nickname = htmlspecialchars($_SESSION['nickname']);
            $sql = "INSERT INTO Article(title,info1,info2,info3,author) VALUES ('$title','$info1','$info2','$info3','$nickname')";
            $query=mysqli_query($mysqli,$sql);
            if($query)
            {
                $query=mysqli_query($mysqli,"SELECT id FROM Article WHERE title = '$title' AND info1 = '$info1' AND info2 = '$info2' AND info3 = '$info3'");
                if($query)
                {
                    while( $row = mysqli_fetch_assoc($query)){
                        $articleId[] = $row; 
                    }
                    if(!empty($_POST['tags'])){
                        $tags = explode(';', $_POST['tags']);
                        for($i = 0; $i < count($tags)-1; $i++)
                        {
                            $tag = $tags[$i];
                            $id = $articleId[0]['id'];
                            $query=mysqli_query($mysqli,"INSERT INTO Tag(articleId,heroId) VALUES ($id,'$tag')");
                            if($query) {}
                            else{
                                $message = $message." Не удалось добавить тег $tag";
                            }   
                        }
                    }
                    else{
                        $message = 'нет тегов';
                    }
                }
                else{
                    $message = 'Не удалось получить id текущей статьи';
                }                    
                echo "<script>alert('Успешно опубликовано!$message $id')</script>";
                unset($_POST["publish"]);
                header("Location: index.php");
            }   
            else 
            {
                echo '<script>alert("Ошибка бд")</script>';
            }
        }
        } else {
            echo '<script>alert("Вы заполнили не все поля!")</script>';
        }
    }
    ?>
    <div id="popup" border-color="black">
        <form id='publishForm' action="writing.php" method="post">
        <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
        <legend>Заголовок</legend>   
        Название статьи<br>  
        <input style="width: 700px;" maxlength="100" style="width: 200px;"  type="text" name="title" id="title" ><br>
        </fieldset>
        <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
        <legend>Общая информация</legend>   
        Эта информация выводится под заголовком, опишите в нескольких словах суть статьи<br>
        <textarea style="width: 700px; height: 40px;" maxlength='300' name='info1'></textarea>
        </fieldset>
        <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
        <legend>Подробная информация</legend>   
        Опишите в данной части суть статьи<br>
        <textarea style="width: 700px; height: 120px;" maxlength='3000' name='info2'></textarea>  
        </fieldset>
        <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
        <legend>Практическая информация</legend>  
        Опишите в данной части информацию, которая пригодится во время игры<br>
        <textarea style="width: 700px; height: 120px;" maxlength='3000' name='info3'></textarea>   
        </fieldset>
        <label>Были упомянуты следующие герои:</label>
        <input id='tags' name='tags' readonly><br>
        </form>
        <div id='mentionHeroes' style="margin: 10px">      
            <select name="selectTag" id="selectTag" size="1">
            <option disabled selected> -- выберите героя для тега -- </option>
            <?php 
            require("connection.php");  
            if ($con != false){
                $sql = 'SELECT id, name FROM Hero';
                $result = mysqli_query($mysqli, $sql);
                while( $row = mysqli_fetch_assoc($result)){
                    $heroList[] = $row; 
                }
                for ($i = 0; $i < count($heroList); $i++) {
                    echo "<option value=".$heroList[$i]['id'].";>".$heroList[$i]['name']."</option>";
                }
            }
            ?>
        </select> 
        <button onmousedown='addInput()'>
                Добавить тег
        </button>  
        <button onmousedown='clearInput()'>
                Очистить теги
        </button> 
        </div>
        <button form='publishForm' style="margin:10px" id="publish" name="publish" type="submit">
            Опубликовать
        </bottom>
    </div>
</body>
</html>