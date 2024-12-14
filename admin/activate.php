<?php
include "userAuth.php";
include "connect.php";
if (isset($_GET['userId'])) {
    $userId = $_GET['userId'];
    // echo $userId;
    $sql = "UPDATE `dealer` SET `activation` = '1' WHERE `dealer`.`dealerID` = $userId;";
    $result = mysqli_query($con, $sql);
    if ($result) {
        $userSql = "UPDATE `users` SET `activation` = '1' WHERE `users`.`did` = $userId;";
        $userResult = mysqli_query($con, $userSql);
        if($userResult){
        $previousPage = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '';
        header("Location: " . $previousPage);
        exit;
        }
    }else{
        // echo "<script>alert('Opperation failure.');";
        $previousPage = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '';
        // echo "<script>window.location.href = '$previousPage';</script>";
        header("Location: " . $previousPage);
        exit;
    }
}
