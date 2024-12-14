<?php
include "./gameConnect.php";


$sql = "SELECT run_function FROM admin_control WHERE id = 1";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);

// Return the boolean value as the response
echo ($row['run_function'] ? 'true' : 'false');
