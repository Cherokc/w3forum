<?php 
        require("connection.php");
        if ($con != false){
            $condition = 'ORDER BY (date) DESC';
        if(isset($_GET['sort'])){
            if(isset($_POST['rate+'])){
                $condition = 'ORDER BY (SELECT sum(term) FROM ArticleRating WHERE articleId = id)';
            }
            if(isset($_POST['rate-'])){
                $condition = 'ORDER BY (SELECT sum(term) FROM ArticleRating WHERE articleId = id) DESC';
            }
            if(isset($_POST['date+'])){
                $condition = 'ORDER BY (date)';
            }
            if(isset($_POST['date-'])){
                $condition = 'ORDER BY (date) DESC';
            }
        }
        $sql = "SELECT * FROM Article $condition";
        $query=mysqli_query($mysqli,$sql);
        if($query)
        {
            while($row = mysqli_fetch_assoc($query)){
                $array[] = $row; 
            }
        }
        }
    ?>
<div id="popup" border-color="black">
    <fieldset style="border: 20px solid; border-image: url(&quot./resources/elf-borders.png&quot) 30  round;">
        <legend>Статьи</legend>   
        <form action="index.php?sort" method="post">
            <button  id="rate+" name="rate+" type="submit">По рейтингу ↑</button>
            <button  id="rate-" name="rate-" type="submit">По рейтингу ↓</button>
            <button  id="date+" name="date+" type="submit">По дате ↑</button>
            <button  id="date-" name="date-" type="submit">По дате ↓</button>
        </form>
        <?php 
            for($i=0;$i<count($array);$i++){
                $rating = 0;
                if($con){
                    $query = mysqli_query($mysqli,"SELECT term From ArticleRating WHERE articleId = ".($array[$i]['id']));
                    if($query){
                        while($row = mysqli_fetch_assoc($query)){
                            $rating = $rating + $row['term'];
                        }
                    }
                echo "
                <div onmouseover='articleOver(this)' onmouseout='articleOut(this)' class='article-item'>            
                <div class='comment-item'>
                    <table>
                        <tr>
                            <td>
                                Рейтинг: ".$rating."
                            </td>
                        </tr>
                    </table>
                </div>
                <div class='comment-item comment-item-centre'>        
                    <a class='main-link' href='note.php?n=".$array[$i]['id']."'>  
                        ".$array[$i]['title']."
                    </a>
                    <article>
                        ".$array[$i]['info1']."
                    </article>
                </div>
                <div class='comment-item'>
                    <table style='float: right'>
                        <tr>
                            <td>
                            Автор: ".$array[$i]['author']."
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Дата: ".$array[$i]['date']."
                            </td>
                        </tr>
                    </table>
                </div>
            </div>";
            }}
        ?>  
    </fieldset>
</div>