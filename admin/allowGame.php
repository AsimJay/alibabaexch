<?php
include "connect.php";

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (isset($_GET['user']) && isset($_GET['game'])) {
        $userID = $_GET['user'];
        $game = $_GET['game'];

        $userID = mysqli_real_escape_string($con, $userID);
        $game = mysqli_real_escape_string($con, $game);

        // Update the game status in the database (set to 1 for "Activate")
        $updateQuery = "UPDATE dealer SET `$game` = 1 WHERE dealerID = $userID";
        $updateUsersQuery = "UPDATE users SET `$game` = 1 WHERE did = $userID";

        // Execute the queries
        $result1 = mysqli_query($con, $updateQuery);
        $result2 = mysqli_query($con, $updateUsersQuery);
        
        if ($result1 && $result2) {
            // echo "Success";
        } else {
            // echo "Update failed. Error: " . mysqli_error($con);
        }
    } else {
        // echo "Invalid request";
    }
} else {
    // echo "Invalid request method";
}
mysqli_close($con);

header('location: gameActivation.php');
exit;
?>
