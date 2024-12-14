<?php
ob_start();

include "userAuth.php";
include "connect.php";
if (isset($_GET['userId'])) {
    $userId = $_GET['userId'];
    echo $userId;
    $sql = "UPDATE `users` SET `activation` = '0' WHERE `users`.`id` = $userId;";
    $result = mysqli_query($con, $sql);
    if ($result) {
        $previousPage = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '';
        header("Location: " . $previousPage);
        exit;
    }
}
ob_end_flush();
?>