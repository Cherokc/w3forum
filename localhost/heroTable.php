<div class="herolist">
<?php
require("connection.php");
if ($con != false){
    $sql = 'SELECT id, race FROM Hero ORDER BY race,id';
    $result = mysqli_query($mysqli, $sql);
    if($result){
            while( $row = mysqli_fetch_assoc($result)){
        $heroList[] = $row; 
    }    
    for ($i = 0; $i < count($heroList); $i++) {
        if ($heroList[$i]['race'] != 'neutral')
        {?>
            <table class='hero-table' id=<?php echo ("table_".$heroList[$i]['race']);?>>
                <?php 
                    for ($j = $i; $i <= $j+3; $i++) {
                ?>
                    <td><a href="popup.php?hero=<?php echo $i?>"> <img class="td" id='<?php echo $heroList[$i]['id'] ?>' onmouseover="overImg(this,'<?php echo $heroList[$i]['id'] ?>')" onmouseout="outImg(this,'<?php echo $heroList[$i]['id'] ?>')" onmousedown="downImg(this,'<?php echo $heroList[$i]['id'] ?>',<?php echo $i ?>)" style="background-image: url(&quot;./heroes/<?php echo $heroList[$i]['id'] ?>.webp&quot;); width: 64px; height: 64px; border: 1px black; box-shadow: 2px 2px 1px; transition: background-linear-gradient 1s ease 0s;"> </a></td>
                <?php } $i--; ?>
            </table> 
        <?php
        }
        else
        {?>
            <table class='hero-table' id=<?php echo ('table_'.$heroList[$i]['race']) ?>>
            <tr>
            <?php 
                    for ($j = $i; $i <= $j+3; $i++) {
                ?>
                    <td><a href="popup.php?hero=<?php echo $i?>"> <img class="td" id='<?php echo $heroList[$i]['id'] ?>' onmouseover="overImg(this,'<?php echo $heroList[$i]['id'] ?>')" onmouseout="outImg(this,'<?php echo $heroList[$i]['id'] ?>')" onmousedown="downImg(this,'<?php echo $heroList[$i]['id'] ?>',<?php echo $i ?>)" style="background-image: url(&quot;./heroes/<?php echo $heroList[$i]['id'] ?>.webp&quot;); width: 64px; height: 64px; border: 1px black; box-shadow: 2px 2px 1px; transition: background-linear-gradient 1s ease 0s;"> </a></td>
                <?php } ?>
                </tr>
                <tr>
                <?php 
                    for ($j = $i; $i <= $j+3; $i++) {
                ?>
                    <td><a href="popup.php?hero=<?php echo $i?>"> <img class="td" id='<?php echo $heroList[$i]['id'] ?>' onmouseover="overImg(this,'<?php echo $heroList[$i]['id'] ?>')" onmouseout="outImg(this,'<?php echo $heroList[$i]['id'] ?>')" onmousedown="downImg(this,'<?php echo $heroList[$i]['id'] ?>',<?php echo $i ?>)" style="background-image: url(&quot;./heroes/<?php echo $heroList[$i]['id'] ?>.webp&quot;); width: 64px; height: 64px; border: 1px black; box-shadow: 2px 2px 1px; transition: background-linear-gradient 1s ease 0s;"> </a></td>
                <?php } $i--; ?>
                </tr>
            </table> 
        <?php
        }
    }
    }
}
?>
</div>