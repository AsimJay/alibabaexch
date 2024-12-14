<?php
include "userAuth.php";
include "connect.php";
if (isset($_SESSION['username']) && isset($_SESSION['dealerID'])) {
    $dealer = $_SESSION['username'];
    $dealerID = $_SESSION['dealerID'];
}
// Fetch data from the database
$sql = "SELECT id, name, username, password, activation FROM users WHERE users.did = $dealerID";
$result = mysqli_query($con, $sql);

// Prepare the data array
$data = array();

while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}

// Return the data as a JSON response
echo json_encode(array('data' => $data));

// Close the database connection
mysqli_close($con);
?>
