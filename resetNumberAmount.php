<?php include "userAuth.php"; ?>
<?php
include "./admin/connect.php";
// $sql = "UPDATE `funds` SET `balance` = '200' WHERE `funds`.`userId` = 2;";
// $result = mysqli_query($con, $sql);

$sql = "UPDATE number_table SET amount = 0";

// Execute the query
if ($con->query($sql) === TRUE) {
    echo "Number amount column has been reset successfully.";
} else {
    echo "Error resetting number amount column: " . $conn->error;
}

// Close the connection
$conn->close();
?>