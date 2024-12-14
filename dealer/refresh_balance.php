<?php
    include "userAuth.php";
    include "../admin/connect.php";
    $username = $_SESSION['username'];
    $sql ="SELECT * FROM dealer WHERE username = '$username'";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_assoc($result);
    $balance = $row['balance'];
    echo json_encode(['balance' => $balance]);
?>
