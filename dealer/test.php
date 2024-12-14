<?php
    // include "connect.php";
    for($i=0; $i <= 99; $i++){
    $sql = "INSERT INTO number_table (number, amount) VALUES ($i, 500);";
    $result = mysqli_query($con, $sql);
    }
?> 