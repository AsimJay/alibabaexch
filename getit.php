<?php
    include "connect.php";
    $sql = "SELECT * FROM number";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_assoc($result);
    $run = $row['run'];
    if($run){
        $data = $run;
        // Return the data as JSON
        header('Content-Type: application/json');
        echo json_encode($data);
        // Assume you have a mechanism to retrieve the latest data
    }




?>
