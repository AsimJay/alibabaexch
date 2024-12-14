<?php
include "./admin/connect.php";

$sql = "UPDATE number_table SET amount = 0;";
$result = mysqli_query($con, $sql);

$sql = "DELETE FROM biddetails;";
$result = mysqli_query($con, $sql);

?>
