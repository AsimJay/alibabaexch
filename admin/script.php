<?php
include "connect.php";

$sql = "UPDATE number_table SET amount = 0;";
$result = mysqli_query($con, $sql);

$sql = "UPDATE first_digit SET amount = 0;";
$result = mysqli_query($con, $sql);

$sql = "UPDATE second_digit SET amount = 0;";
$result = mysqli_query($con, $sql);

$sql = "DELETE FROM biddetails;";
$result = mysqli_query($con, $sql);

$sql = "DELETE FROM firstbiddetails;";
$result = mysqli_query($con, $sql);

$sql = "DELETE FROM secondbiddetails;";
$result = mysqli_query($con, $sql);

echo '<script>
    alert("Data reset successfully.");
    window.location.href = "numberSelect.php";
</script>';

?>
