<?php include "userAuth.php"; ?>
<?php include "../admin/connect.php"; ?>
<!DOCTYPE html>
<html>

<head>
    <title>Ak-3 Statement</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="game.css">

    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }
    </style>
</head>

<body>
    <?php include "nav.php" ?>
    <div class="container">
        <h2>Client Statement</h2>
        <form method="POST" class="form-inline">
            <div class="form-group mr-2">
                <label for="from">From:</label>
                <?php
                if (isset($_POST['from'])) {
                    $from = $_POST['from'];
                    echo '<input type="date" class="form-control" id="from" name="from" value="' . $from . '">';
                } else {
                    echo '<input type="date" class="form-control" id="from" name="from">';
                }
                ?>
            </div>
            <div class="form-group mr-2">
                <label for="to">To:</label>
                <?php
                if (isset($_POST['to'])) {
                    $to = $_POST['to'];
                    echo '<input type="date" class="form-control" id="to" name="to" value="' . $to . '">';
                } else {
                    echo '<input type="date" class="form-control" id="to" name="to">';
                }
                ?>
            </div>
            <button type="submit" name="submit" class="btn btn-primary">Search</button>
        </form>
        <br>
        <table id="transactionTable" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>User</th>
                    <th>Transaction Type</th>
                    <th>Amount</th>
                    <th>Transaction Date</th>
                    <th>Details</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Connection for the 'game8-4' database
                $gameCon = new mysqli('localhost', 'u423067381_game3_3', 'Asim123$', 'u423067381_game3_3');
                if (mysqli_connect_errno()) {
                    echo "Failed to connect to MySQL (game8-4): " . mysqli_connect_error();
                    exit();
                }
            
                // Connection for the 'lottery_web' database
                $lotteryCon = new mysqli('localhost', 'u423067381_lottery_web', 'Asim123$', 'u423067381_lottery_web');
                if (mysqli_connect_errno()) {
                    echo "Failed to connect to MySQL (lottery_web): " . mysqli_connect_error();
                    exit();
                }
            
                // Default query to fetch transactions
                $query = "SELECT * FROM transactions WHERE user_id = $id";
            
                // Modify query if the form is submitted with date filters
                if (isset($_POST['submit'])) {
                    $from = $_POST['from'];
                    $to = $_POST['to'];
                    $query = "SELECT * FROM transactions WHERE user_id = $id AND DATE(transaction_date) BETWEEN '$from' AND '$to';";
                }
            
                // Execute the transactions query on the 'game8-4' database
                $result = mysqli_query($gameCon, $query);
            
                // Loop through the transactions and fetch user details from 'lottery_web'
                while ($row = mysqli_fetch_assoc($result)) {
                    $userId = $row['user_id'];
            
                    // Fetch user details from the 'lottery_web' database based on user_id
                    $userQuery = "SELECT * FROM users WHERE id = $userId";
                    $userResult = mysqli_query($lotteryCon, $userQuery);
                    $user = mysqli_fetch_assoc($userResult);
            
                    // Date formatting for transaction date
                    $bidDate = $row['transaction_date'];
                    $dateTime = new DateTime($bidDate);
                    $formattedBidDate = $dateTime->format("d-m-Y H:i:s");
            
                    // Display transaction and user details in the table
                    echo "<tr>";
                    echo "<td>" . $row['transaction_id'] . "</td>";
                    echo "<td>" . $user['name'] . "</td>"; // Display user name from 'lottery_web'
                    echo "<td>" . $row['transaction_type'] . "</td>";
                    echo "<td>" . $row['amount'] . " PKR</td>";
                    echo "<td>" . $formattedBidDate . "</td>";
                    echo "<td>" . $row['details'] . "</td>";
                    echo "</tr>";
                }
            
                // Close the database connections
                mysqli_close($gameCon);
                mysqli_close($lotteryCon);
                ?>
            </tbody>

        </table>
    </div>

    <!-- Include jQuery, Bootstrap, and DataTables JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function() {
            // Initialize DataTables
            $('#transactionTable').DataTable();
        });
    </script>
</body>

</html>