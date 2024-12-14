<?php include "userAuth.php";
$dealerID = $_SESSION['dealerID'];
$game = "Alibaba Exchange";
$defaultDatabase = "asmitixc_lottery_web"; // Make sure to validate and sanitize the input
// $query = "SELECT * FROM transactions, users WHERE transactions.user_id = users.id;";
if (isset($_GET['selected_db'])) {
    $selectedDatabase = $_GET['selected_db']; // Make sure to validate and sanitize the input
    if ($selectedDatabase == "asmitixc_lottery_web") {
        $game = "Alibaba Exchange";
    } else if ($selectedDatabase == "u423067381_game1") {
        $game = "Alibaba-1";
    } else if ($selectedDatabase == "u423067381_game2") {
        $game = "Alibaba-2";
    } else if ($selectedDatabase == "u423067381_game3") {
        $game = "Alibaba-3";
    } else if ($selectedDatabase == "u423067381_game4") {
        $game = "Gm";
    } else if ($selectedDatabase == "u423067381_game5") {
        $game = "Ls-1";
    } else if ($selectedDatabase == "u423067381_game6") {
        $game = "Ls-2";
    } else if ($selectedDatabase == "u423067381_game7") {
        $game = "Ls-3";
    }
} else {
    // If not provided, assign a default database   
    $selectedDatabase = $defaultDatabase;
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>Open</title>
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
        <h2>Open - <span><?php echo $game; ?></span></h2>
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
                  <option value="./fbids.php?selected_db=asmitixc_lottery_web">Alibaba Exchange</option>
                  <option value="./fbids.php?selected_db=asmitixc_game1">Alibaba-1</option>
                  <option value="./fbids.php?selected_db=asmitixc_game2">Alibaba-2</option>
                  <option value="./fbids.php?selected_db=asmitixc_game3">Alibaba-3</option>
                  <option value="./fbids.php?selected_db=asmitixc_game4">Gm</option>
                  <option value="./fbids.php?selected_db=asmitixc_game5">Ls-1</option>
                  <option value="./fbids.php?selected_db=asmitixc_game6">Ls-2</option>
                  <option value="./fbids.php?selected_db=asmitixc_game7">Ls-3</option>
                </select>
            </div>
        </form>

        <br>
        <table id="transactionTable" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>User</th>
                    <th>Number</th>
                    <th>Amount</th>
                    <th>Date & Time</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Connect to your database
                include "connect.php";
                // Check connection
                if (mysqli_connect_errno()) {
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                    exit();
                }

                // Construct the dynamic query
                $query = "SELECT * FROM {$selectedDatabase}.firstbiddetails AS t 
                            INNER JOIN {$defaultDatabase}.users AS u 
                            ON t.user_id = u.id AND u.did = $dealerID;";
                if (isset($_POST['submit'])) {
                    $from = $_POST['from'];
                    $to = $_POST['to'];
                    $query = "SELECT * FROM {$selectedDatabase}.firstbiddetails AS t 
                                INNER JOIN {$defaultDatabase}.users AS u 
                                ON t.user_id = u.id
                                WHERE DATE(t.transaction_date) BETWEEN '$from' AND '$to';";
                }
                $result = mysqli_query($con, $query);
                
if (!$result) {
    die('Error in query: ' . mysqli_error($con));
}
                // Loop through the transactions and display them in the table
                while ($row = mysqli_fetch_assoc($result)) {
                    $bidDate = $row['bid_date'];
                    $dateTime = new DateTime($bidDate);
                    $formattedBidDate = $dateTime->format("d-m-Y H:i:s");

                    echo "<tr>";
                    echo "<td>" . $row['id'] . "</td>";
                    echo "<td>" . $row['name'] . "</td>";
                    echo "<td>" . $row['bid_number'] . "</td>";
                    echo "<td>" . $row['bid_amount'] . " PKR</td>";
                    // echo "<td>" . $row['transaction_date'] . "</td>";
                    echo "<td>" . $formattedBidDate . "</td>";
                    echo "</tr>";
                }

                // Close the database connection
                mysqli_close($con);
                ?>
            </tbody>
        </table>
    </div>

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
          echo '$("#gameSelect").val("./fbids.php?selected_db=' . $selected_db . '");';
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