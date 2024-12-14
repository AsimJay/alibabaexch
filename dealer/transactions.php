<?php include "userAuth.php";
$dealerID = $_SESSION['dealerID'];
$game = "Alibaba Exchange";
$defaultDatabase = "u423067381_lottery_web"; // Make sure to validate and sanitize the input
// $query = "SELECT * FROM transactions, users WHERE transactions.user_id = users.id;";
if (isset($_GET['selected_db'])) {
    $selectedDatabase = $_GET['selected_db']; // Make sure to validate and sanitize the input

    if ($selectedDatabase == "u423067381_lottery_web") {
        $game = "Alibaba Exchange";
    } elseif ($selectedDatabase == "u423067381_game1") {
        $game = "Alibaba-1";
    } elseif ($selectedDatabase == "u423067381_game1_0") {
        $game = "Alibaba-0";
    } elseif ($selectedDatabase == "u423067381_game1_3") {
        $game = "Alibaba-3";
    } elseif ($selectedDatabase == "u423067381_game1_4") {
        $game = "Alibaba-4";
    } elseif ($selectedDatabase == "u423067381_game2") {
        $game = "Alibaba-2";
    } elseif ($selectedDatabase == "u423067381_game3") {
        $game = "Ak";
    } elseif ($selectedDatabase == "u423067381_game3_0") {
        $game = "Ak Close";
    } elseif ($selectedDatabase == "u423067381_game3_1") {
        $game = "Ak-1";
    } elseif ($selectedDatabase == "u423067381_game3_2") {
        $game = "Ak-2";
    } elseif ($selectedDatabase == "u423067381_game3_3") {
        $game = "Ak-3";
    } elseif ($selectedDatabase == "u423067381_game3_4") {
        $game = "Ak-4";
    } elseif ($selectedDatabase == "u423067381_game4_0") {
        $game = "OYO Tv";
    } elseif ($selectedDatabase == "u423067381_game4") {
        $game = "Gm";
    } elseif ($selectedDatabase == "u423067381_game4_1") {
        $game = "Gm-1";
    } elseif ($selectedDatabase == "u423067381_game4_2") {
        $game = "Gm-2";
    } elseif ($selectedDatabase == "u423067381_game4_3") {
        $game = "Gm-3";
    } elseif ($selectedDatabase == "u423067381_game4_4") {
        $game = "Gm-4";
    } elseif ($selectedDatabase == "u423067381_game5") {
        $game = "Ls-1";
    } elseif ($selectedDatabase == "u423067381_game6") {
        $game = "Ls-2";
    } elseif ($selectedDatabase == "u423067381_game7") {
        $game = "Ls-3";
    } elseif ($selectedDatabase == "u423067381_game8") {
        $game = "Ls";
    } elseif ($selectedDatabase == "u423067381_game8_0") {
        $game = "OLA Tv";
    } elseif ($selectedDatabase == "u423067381_game8_4") {
        $game = "Ls-4";
    }
} else {
    // If not provided, assign a default database   
    $selectedDatabase = $defaultDatabase;
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>Transaction History</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
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
    <?php include "aNav.php" ?>
    <div class="container">
        <h2>Transaction History - <span><?php echo $game; ?></span></h2>
        <form method="POST" class="form-inline">
            <div class="form-group mr-2">
                <label for="from" class="mr-2">From:</label>
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
                <label for="to" class="mr-2">To:</label>
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
        <form class="form-inline">
            <div class="form-group mr-2">
                <label for="gameSelect">Select Game:</label>
                <select id="gameSelect" class="form-control ml-2">
                  <option value="./transactions.php?selected_db=u423067381_game1_0">Alibaba-0</option>
                  <option value="./transactions.php?selected_db=u423067381_lottery_web" selected>Alibaba Exchange</option>
                  <option value="./transactions.php?selected_db=u423067381_game1">Alibaba-1</option>
                  <option value="./transactions.php?selected_db=u423067381_game2">Alibaba-2</option>
                  <option value="./transactions.php?selected_db=u423067381_game1_3">Alibaba-3</option>
                  <option value="./transactions.php?selected_db=u423067381_game1_4">Alibaba-4</option>
                  <option value="./transactions.php?selected_db=u423067381_game3">Ak</option>
                  <option value="./transactions.php?selected_db=u423067381_game3_0">Ak Close</option>
                  <option value="./transactions.php?selected_db=u423067381_game3_1">Ak-1</option>
                  <option value="./transactions.php?selected_db=u423067381_game3_2">Ak-2</option>
                  <option value="./transactions.php?selected_db=u423067381_game3_3">Ak-3</option>
                  <option value="./transactions.php?selected_db=u423067381_game3_4">Ak-4</option>
                  <option value="./transactions.php?selected_db=u423067381_game4_0">OYO Tv</option>
                  <option value="./transactions.php?selected_db=u423067381_game4">Gm</option>
                  <option value="./transactions.php?selected_db=u423067381_game4_1">Gm-1</option>
                  <option value="./transactions.php?selected_db=u423067381_game4_2">Gm-2</option>
                  <option value="./transactions.php?selected_db=u423067381_game4_3">Gm-3</option>
                  <option value="./transactions.php?selected_db=u423067381_game4_4">Gm-4</option>
                  <option value="./transactions.php?selected_db=u423067381_game8_0">OLA Tv</option>
                  <option value="./transactions.php?selected_db=u423067381_game8">Ls</option>
                  <option value="./transactions.php?selected_db=u423067381_game5">Ls-1</option>
                  <option value="./transactions.php?selected_db=u423067381_game6">Ls-2</option>
                  <option value="./transactions.php?selected_db=u423067381_game7">Ls-3</option>
                  <option value="./transactions.php?selected_db=u423067381_game8_4">Ls-4</option>
                </select>
            </div>
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
    // Function to establish a database connection
    function getDbConnection($dbName, $dbPassword = 'Asim123$') {
        $username = $dbName; // Username matches the database name in your hosting setup
        $password = $dbPassword;
        $connection = new mysqli('localhost', $username, $password, $dbName);

        if ($connection->connect_error) {
            die("Connection failed for $dbName: " . $connection->connect_error);
        }

        return $connection;
    }

    // Connect to the users database
    $userDbName = 'u423067381_lottery_web';
    $userCon = getDbConnection($userDbName);

    // Query to fetch users with the specified dealer ID
    // $dealerID = 5; // Temp Check Val 
    $userQuery = "SELECT id, name FROM users WHERE did = $dealerID";
    $userResult = mysqli_query($userCon, $userQuery);

    if (!$userResult) {
        die('Error fetching users: ' . mysqli_error($userCon));
    }

    // Collect user IDs
    $userIds = [];
    $userDetails = [];
    while ($user = mysqli_fetch_assoc($userResult)) {
        $userIds[] = $user['id'];
        $userDetails[$user['id']] = $user['name'];
    }

    // Close the connection to the users database
    $userCon->close();

    // If no users found, exit
    if (empty($userIds)) {
        echo "<tr><td colspan='6'>No users found for the specified dealer ID.</td></tr>";
        return;
    }

    // Prepare a comma-separated list of user IDs for the IN clause
    $userIdsList = implode(',', $userIds);

    // Connect to the transactions database
    $gameCon = getDbConnection($selectedDatabase);

    // Query to fetch transactions for the selected users
    $transactionQuery = "SELECT * FROM transactions WHERE user_id IN ($userIdsList)";
    $transactionResult = mysqli_query($gameCon, $transactionQuery);

    if (!$transactionResult) {
        die('Error fetching transactions: ' . mysqli_error($gameCon));
    }

    // Loop through transactions and display them
    while ($transaction = mysqli_fetch_assoc($transactionResult)) {
        $userId = $transaction['user_id'];
        $bidDate = $transaction['transaction_date'];
        $dateTime = new DateTime($bidDate);
        $formattedBidDate = $dateTime->format("d-m-Y H:i:s");

        echo "<tr>";
        echo "<td>" . $transaction['transaction_id'] . "</td>";
        echo "<td>" . $userDetails[$userId] . "</td>"; // Get the user name from the array
        echo "<td>" . $transaction['transaction_type'] . "</td>";
        echo "<td>" . $transaction['amount'] . " PKR</td>";
        echo "<td>" . $formattedBidDate . "</td>";
        echo "<td>" . $transaction['details'] . "</td>";
        echo "</tr>";
    }

    // Close the transactions database connection
    $gameCon->close();
    ?>
</tbody>





    <!-- Include jQuery, Bootstrap, and DataTables JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <script>
          $(document).ready(function() {
      // Handle the change event of the select element
      $('#gameSelect').on('change', function() {
        var selectedOption = $(this).val();
        if (selectedOption) {
          // Redirect to the selected URL
          window.location.href = selectedOption;
        }
      });

      // PHP code to set the selected option based on the 'selected_db' value
      <?php
        $selected_db = $_GET['selected_db'] ?? '';
        if ($selected_db) {
          echo '$("#gameSelect").val("./transactions.php?selected_db=' . $selected_db . '");';
        }
      ?>
    });
        
        $(document).ready(function() {
            $('#transactionTable').DataTable({
                // other DataTable options...
                order: [[0, 'desc']], // Assuming the ID column is the first (index 0)
            });
        });

    </script>
</body>

</html>