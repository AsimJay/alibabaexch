<?php
    include "userAuth.php";
    include "./admin/connect.php";
    $username = $_SESSION['username'];
    $sql ="SELECT * FROM users, funds WHERE username = '$username' AND users.id = funds.userId;";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_assoc($result);
    $balance = $row['balance'];
    echo json_encode(['balance' => $balance]);
?>
