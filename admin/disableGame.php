<?php
include "connect.php";

// Assuming you have already established a database connection here

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Check if the required GET parameters are present
    if (isset($_GET['user']) && isset($_GET['game'])) {
        $userID = $_GET['user'];
        $game = $_GET['game'];

        // Sanitize the input to prevent SQL injection
        $userID = mysqli_real_escape_string($con, $userID);
        $game = mysqli_real_escape_string($con, $game);

        // Update the game status in the database (set to 1 for "Activate")
        $updateQuery = "UPDATE dealer SET `$game` = 0 WHERE dealerID = $userID";
        $updateUsersQuery = "UPDATE users SET `$game` = 0 WHERE did = $userID";

        // Execute the queries
        $result1 = mysqli_query($con, $updateQuery);
        $result2 = mysqli_query($con, $updateUsersQuery);
        
        if ($result1 && $result2) {
            // echo "Success";
        } else {
            // echo "Update failed. Error: " . mysqli_error($con);
        }
    } else {
        // Required parameters not provided
        // echo "Invalid request";
    }
} else {
    // Only handle GET requests for updating game status
    // echo "Invalid request method";
}

// Close the database connection
mysqli_close($con);
header('location: gameActivation.php');

?>
