<?php
include "userAuth.php";
include "connect.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
    <title>Game Activition</title>
</head>

<body>
    <?php include "aNav.php";?>
    <div class="container mt-4">
        <h1 class="text-center">Game Activation</h1>
        <br>
        <div class="table-responsive">
            <table id="transactionTable" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Alibaba-0</th>
                        <th>Alibaba-1</th>
                        <th>Alibaba-2</th>
                        <th>Alibaba-3</th>
                        <th>Alibaba-4</th>
                        <th>Ak</th>
                        <th>Ak Close</th>
                        <th>Ak-1</th>
                        <th>Ak-2</th>
                        <th>Ak-3</th>
                        <th>Ak-4</th>
                        <th>OYO Tv</th>
                        <th>Gm</th>
                        <th>Gm-1</th>
                        <th>Gm-2</th>
                        <th>Gm-3</th>
                        <th>Gm-4</th>
                        <th>OLA Tv</th>
                        <th>Ls</th>
                        <th>Ls-1</th>
                        <th>Ls-2</th>
                        <th>Ls-3</th>
                        <th>Ls-4</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Construct the dynamic query
                    $query = "SELECT * FROM dealer";
                    $result = mysqli_query($con, $query);

                    // Loop through the transactions and display them in the table
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr>";
                        echo "<td>" . $row['dealerID'] . "</td>";
                        echo "<td>" . $row['username'] . "</td>";

                        // Loop through the game columns and add buttons to toggle the status
                        $games = ['game1-0', 'game1', 'game2', 'game1-3', 'game1-4', 'game3', 'game3-0', 'game3-1', 'game3-2', 'game3-3', 'game3-4', 'game4-0', 'game4', 'game4-1', 'game4-2', 'game4-3', 'game4-4', 'game8-0', 'game8', 'game5', 'game6', 'game7', 'game8-4'];
                        foreach ($games as $game) {
                            echo "<td>";
                            $buttonID = $game . "-" . $row['dealerID']; // Create a unique button ID using game and userID
                            if ($row[$game] == 0) {
                                echo '<a href="allowGame.php?user=' . $row['dealerID'] . '&game=' . $game . '" class="btn btn-primary">Activate</a>';
                            } else {
                                echo '<a href="disableGame.php?user=' . $row['dealerID'] . '&game=' . $game . '" class="btn btn-danger">Deactivate</a>';
                            }
                            echo "</td>";
                        }
                        echo "</tr>";
                    }


                    // Close the database connection
                    mysqli_close($con);
                    ?>
                </tbody>
            </table>
        </div>
    </div>

    <!-- JavaScript to handle button click and update game status -->
    <script>
        function updateGameStatus(userID, game) {
            console.log("userID:", userID);
            console.log("game:", game);
            var status = document.getElementById(game + "-" + userID).innerText;
            console.log("currentStatus:", status);
            var newStatus = status === "Activate" ? 1 : 0;
            document.getElementById(game + "-" + userID).innerText = newStatus === 1 ? "Deactivate" : "Activate";
            // Use AJAX to update the game status in the database
            $.ajax({
                type: "POST",
                url: "update_game_status.php", // Replace with the actual URL to update the game status
                data: {
                    userID: userID,
                    game: game,
                    status: newStatus
                },
                success: function(response) {
                    alert('done');
                    // Handle the response if needed
                },
                error: function(xhr, status, error) {
                    alert('not done');
                    console.error(xhr.responseText);
                }
            });
        }
    </script>


    <!-- Include jQuery before Bootstrap JavaScript -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>