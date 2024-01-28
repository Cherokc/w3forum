    <?php include("header.php");?>   
    <?php
                            if(isset($_GET["hero"])){
                                $i = (int)$_GET["hero"];
                            }
                            else{
                                header("Location: index.php");
                            }
                            require("connection.php");
                            if ($con != false){
                                $sql = 'SELECT id, race, name, info1, info2 FROM Hero ORDER BY race,id';
                                $result = mysqli_query($mysqli, $sql);
                                for($j = 0; $j <= $i && $row = mysqli_fetch_assoc($result); $j++){
                                    $heroList[] = $row; 
                                }
                            }
                    ?>   
        <div id="popup" border-color="black">
            <fieldset style="border: 20px solid; border-image: url(&quot./resources/<?php echo $heroList[$i]['race'] ?>-borders.png&quot) 30  round;">
                <legend><?php echo $heroList[$i]['name'] ?></legend>
                <table>
                    <tr>
                        <td><img id="portrait" src="./heroes/<?php echo $heroList[$i]['id'] ?>.gif"></td>
                        <td>
                            <span id="info1">
                                <?php echo $heroList[$i]['info1'] ?>
                            </span>
                        </td>
                    </tr>
                </table>
            </fieldset>
            <fieldset style="border: 20px solid; border-image: url(&quot./resources/<?php echo $heroList[$i]['race'] ?>-borders.png&quot) 30  round;">
                <legend>Information</legend>
                <table>
                    <tr>
                        <td>
                            <span id="info2">
                                <?php echo $heroList[$i]['info2'] ?>
                            </span>
                        </td>
                    </tr>
                </table>
            </fieldset>
            <fieldset style="border: 20px solid; border-image: url(&quot./resources/<?php echo $heroList[$i]['race'] ?>-borders.png&quot) 30  round;">
                <legend>Skills</legend>
                <table>
                    <tr>
                        <?php
                            if ($con != false){
                                $id = $heroList[$i]['id'];
                                $sql = "SELECT name FROM SkillLink WHERE heroId = '$id'";
                                $result = mysqli_query($mysqli, $sql);
                                while($skill = mysqli_fetch_assoc($result)){
                                    $skillList[] = $skill;
                                }           
                                for($skill = 0; $skill < 4; $skill++)
                                {
                                    $name = $skillList[$skill]['name'];
                                    echo "<td><img src='./heroes/skills/$name.gif'></td>";
                                }
                            }
                        ?>
                    </tr>
                </table>
            </fieldset>
            <?php
                include("articlePopup.php");
            ?>
    </div>
</body>