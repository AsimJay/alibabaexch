<?php
include "userAuth.php";
include "connect.php";
$sql = "SELECT * FROM dealer;";
$result = mysqli_query($con, $sql);

$data = array();

while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}

// Return the data as a JSON response
echo json_encode(array('data' => $data));

// Close the database connection
mysqli_close($con);
?>
