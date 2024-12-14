<?php
include 'connect.php'; // Include your database connection file

$sql = "UPDATE admin_control SET run_function = TRUE WHERE id = 1";
$result = mysqli_query($con, $sql);

$redirectUrl = "numberSelect.php";

// JavaScript script to display alert and redirect
echo "<script>
    alert('Counter is running.');
    window.location.href = '$redirectUrl';
</script>";
?>
?>