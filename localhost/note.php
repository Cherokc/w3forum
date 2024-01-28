<?php 
    include("header.php"); 
    if(isset($_GET["n"])){
        $id = (int)$_GET["n"];
        if ($id == 0){
            header("Location: index.php");
        }
        require("connection.php");
        if($con){
            $query = mysqli_query($mysqli, "SELECT title, info1, info2, info3, author, date FROM Article WHERE id = $id");
            if (!$query){
                echo '<script>alert("Ошибка загрузки страницы")</script>';
            }
            else{
                $result = mysqli_fetch_assoc($query);
            }
        }
        if($con){
            $query = mysqli_query($mysqli, "SELECT id,content, author, date FROM Comment WHERE articleId = $id");
            if (!$query){
                echo '<script>alert("Ошибка загрузки комментариев")</script>';
            }
            else{
                while($row = mysqli_fetch_assoc($query)){
                    $comments[] = $row; 
                }
            }
        }
    }
    else{
        header("Location: index.php");
    }

    if(isset($_GET['commentrate'])){
        if(isset($_SESSION['nickname'])){
        $commentid = (int)$_GET['commentrate'];
        if ($commentid != 0){
            if($con){
                if(isset($_POST['plus'])){
                    $term=1;
                }
                elseif(isset($_POST['minus'])){
                    $term=-1;
                }                
                elseif(isset($_POST['zero'])){
                    $term=0;
                }
                $query = mysqli_query($mysqli,"SELECT * FROM CommentRating where user = '$nickname' and commentId = $commentid");
                if($query){
                    while($row = mysqli_fetch_assoc($query)){
                        $array[] = $row;
                    }
                    if(isset($array) && count($array) > 0){
                        $query = mysqli_query($mysqli,"UPDATE CommentRating SET term = $term where user = '$nickname' and commentId = $commentid");
                        if($query){
                            header("Location: note.php?n=".$_GET['n']);
                        }
                    }
                    else{
                        $query = mysqli_query($mysqli,"INSERT INTO CommentRating(user,commentId,term) VALUES ('$nickname',$commentid,$term)");
                        if($query){
                            header("Location: note.php?n=".$_GET['n']);
                        }
                    }
                }
            }
        }
    }    else {
        echo '<script>alert("Необходимо авторизоваться!")</script>';
    }
    }

    if(isset($_GET['sort'])){
        if(isset($_POST['rate+'])){
            $condition = '(SELECT sum(term) FROM CommentRating WHERE commentId = id)';
        }
        if(isset($_POST['rate-'])){
            $condition = '(SELECT sum(term) FROM CommentRating WHERE commentId = id) DESC';
        }
        if(isset($_POST['date+'])){
            $condition = '(date)';
        }
        if(isset($_POST['date-'])){
            $condition = '(date) DESC';
        }
        if($con){
            $sql = "SELECT id,content, author, date FROM Comment WHERE articleId = $id ORDER BY $condition";
            $query = mysqli_query($mysqli,$sql);
            if($query){
                unset($comments);
                while($row = mysqli_fetch_assoc($query)){
                    $comments[] = $row; 
                }
            }
        }
    }

    if(isset($_GET['articlerate'])){
        if(isset($_SESSION['nickname'])){
        $articleid = (int)$_GET['articlerate'];
        if ($articleid != 0){
            if($con){
                if(isset($_POST['plus'])){
                    $term=1;
                }
                elseif(isset($_POST['minus'])){
                    $term=-1;
                }                
                elseif(isset($_POST['zero'])){
                    $term=0;
                }
                $query = mysqli_query($mysqli,"SELECT * FROM ArticleRating where user = '$nickname' and articleId = $id");
                if($query){
                    while($row = mysqli_fetch_assoc($query)){
                        $array[] = $row;
                    }
                    if(isset($array) && count($array) > 0){
                        $query = mysqli_query($mysqli,"UPDATE ArticleRating SET term = $term where user = '$nickname' and articleId = $id");
                        if($query){
                            header("Location: note.php?n=".$_GET['n']);
                        }
                    }
                    else{
                        $query = mysqli_query($mysqli,"INSERT INTO ArticleRating(user,articleId,term) VALUES ('$nickname',$id,$term)");
                        if($query){
                            header("Location: note.php?n=".$_GET['n']);
                        }
                    }
                }            
                else{
                    echo "SELECT * FROM CommentRating where user = '$nickname' and commentId = $commentid";
                }
            }
        }    }    else {
            echo '<script>alert("Необходимо авторизоваться!")</script>';
        }
    }

    if(isset($_POST['comment']) && !empty($_POST['content']))
    {
        if(isset($_SESSION['nickname'])){
        if($con){
            $nickname = htmlspecialchars($_SESSION['nickname']);
            $content = str_replace('\'','\'\'',htmlspecialchars($_POST['content']));
            $query = mysqli_query($mysqli, "INSERT INTO Comment(content,author,articleId) VALUES ('$content','$nickname',$id)");
            if (!$query){
                echo '<script>alert(Ошибка загрузки вашего комментария)</script>';
            }
            else{
                header("Location: note.php?n=$id");
            }
        }
    }    else {
        echo '<script>alert("Необходимо авторизоваться!")</script>';
    }
    }
    ?>
    <div id="popup" border-color="black">
        <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
        <legend><?php echo $result['title'] ?></legend>
                <table>
                    <tr>
                        <td>
                            <span id="info1">
                                <?php echo $result['info1'] ?>
                            </span>
                        </td>
                    </tr>
                </table>
        </fieldset>
        <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
        <legend>Подробная информация</legend>
                <table>
                    <tr>
                        <td>
                            <span id="info1">
                                <?php echo $result['info2'] ?>
                            </span>
                        </td>
                    </tr>
                </table>
        </fieldset>
        <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
        <legend>Практическая информация</legend>
                <table>
                    <tr>
                        <td>
                            <span id="info1">
                                <?php echo $result['info3'] ?>
                            </span>
                        </td>
                    </tr>
                </table>  
        </fieldset>
        <?php
            $rating = 0;
            $buttons = "<button name='plus' type='submit'>+</button><button name='minus' type='submit'>-</button>";
            if($con){
                $query = mysqli_query($mysqli,"SELECT term,user From ArticleRating WHERE articleId = $id");
                if($query){
                    while($row = mysqli_fetch_assoc($query)){
                        if($row['user'] == $nickname){
                            if($row['term'] == 1)
                                $buttons = "<button name='zero' type='submit'>o</button><button name='minus' type='submit'>-</button>";                                
                            if($row['term'] == -1)
                                $buttons = "<button name='plus' type='submit'>+</button><button name='zero' type='submit'>o</button>";
                        }
                        $rating = $rating + $row['term'];
                    }
                }
            echo "
            <div style='float: left; margin-left: 5px'>
                Рейтинг: ".$rating."
                <form action='note.php?n=$id&articlerate=1' method='post'>
                $buttons
                </form>
            </div>
            ";};
        ?>
        
        <div class='article-footer'>Статью написал <?php echo $result['author'] ?> | <?php echo $result['date'] ?></div>
        <div class='article-footer'>
            Теги:
            <?php
                if($con){
                    $query = mysqli_query($mysqli, "SELECT heroId FROM Tag WHERE articleId = $id");
                    if (!$query){
                        echo '<script>alert(Ошибка загрузки тегов)</script>';
                    }
                    else{
                        while( $row = mysqli_fetch_assoc($query)){
                            $tagList[] = $row; 
                        }
                        $query = mysqli_query($mysqli, "SELECT id,name FROM Hero ORDER BY race");
                        if ($query){
                            while( $row = mysqli_fetch_assoc($query)){
                                $heroList[] = $row; 
                            }
                            for($i = 0; $i<count($tagList);$i++){
                                for($j = 0; $j<count($heroList);$j++){
                                    if($heroList[$j]['id'] == $tagList[$i]['heroId']){
                                        echo "<a class='main-link' href='popup.php?hero=$j'>".$heroList[$j]['name']."</a>  ";
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            ?>
    </div>    
</div>
    <div id="comments" border-color="black">
    <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
        <legend>Комментарии</legend>
        <form action="note.php?n=<?php echo $id?>" method="post">
        <textarea style="width: 100%; height: 40px; resize:vertical" maxlength='300' name='content'></textarea>
        <button  id="comment" name="comment" type="submit">Написать комментарий</button>
        </form>
        <form action="note.php?n=<?php echo $id?>&sort" method="post">
            <button  id="rate+" name="rate+" type="submit">По рейтингу ↑</button>
            <button  id="rate-" name="rate-" type="submit">По рейтингу ↓</button>
            <button  id="date+" name="date+" type="submit">По дате ↑</button>
            <button  id="date-" name="date-" type="submit">По дате ↓</button>
        </form>
        <?php 
        if(isset($comments)){
            for($i = 0; $i<count($comments);$i++){
                $rating = 0;
                    $buttons = "<button name='plus' type='submit'>+</button><button name='minus' type='submit'>-</button>";
                if($con){
                    $query = mysqli_query($mysqli,"SELECT term,user From CommentRating WHERE commentId = ".($comments[$i]['id']));
                    if($query){
                        while($row = mysqli_fetch_assoc($query)){
                            if($row['user'] == $nickname){
                                if($row['term'] == 1)
                                    $buttons = "<button name='zero' type='submit'>o</button><button name='minus' type='submit'>-</button>";                                
                                if($row['term'] == -1)
                                    $buttons = "<button name='plus' type='submit'>+</button><button name='zero' type='submit'>o</button>";
                            }
                            $rating = $rating + $row['term'];
                        }
                    }
                    echo "        
            <div class='article-item'>
                <div class='comment-item comment-item-centre'>
                        <article>
                            ".$comments[$i]['content']."
                        </article>
                </div>
                <div class='comment-item'>
                    <table>
                        <tr>
                            <td>
                                Рейтинг: ".$rating."
                                <form action='note.php?n=$id&commentrate=".$comments[$i]['id']."' method='post'>
                                $buttons
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Автор: ".$comments[$i]['author']."
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Дата: ".$comments[$i]['date']."
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        ";
                }
            }
        }
        ?>
        </fieldset>
    </div>
</body>
</html>