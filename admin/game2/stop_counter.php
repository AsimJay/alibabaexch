<?php
// include 'connect.php'; // Include your database connection file
include 'gameCon.php'; // Include your database connection file

$sql = "UPDATE admin_control SET run_function = FALSE WHERE id = 1";
$result = mysqli_query($con, $sql);
// header("location : numberSelect.php");

$redirectUrl = "game.php";

// JavaScript script to display alert and redirect
echo "<script>
    alert('Counter stopped.');
    window.location.href = '$redirectUrl';
</script>";
?>
?>
