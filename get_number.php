<?php
include "./admin/connect.php";
$sql = "SELECT number FROM luckynumber WHERE id = 1";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$number = $row['number'];
// print_r($row);
echo $number;
?>
