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
        $updateQuery = "UPDATE users SET $game = 1 WHERE id = $userID";

        if (mysqli_query($con, $updateQuery)) {
            // The game status has been updated successfully
            echo "Success";
        } else {
            // An error occurred while updating the game status
            echo "Error";
        }
    } else {
        // Required parameters not provided
        echo "Invalid request";
    }
} else {
    // Only handle GET requests for updating game status
    echo "Invalid request method";
}

// Close the database connection
mysqli_close($con);

header('location: gameActivation.php');
?>
