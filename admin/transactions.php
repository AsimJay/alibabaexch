<?php include "userAuth.php";
$game = "Alibaba Exchange";
$defaultDatabase = "lottery_web"; // Make sure to validate and sanitize the input
// $query = "SELECT * FROM transactions, users WHERE transactions.user_id = users.id;";
// if (isset($_GET['selected_db'])) {
//     $selectedDatabase = $_GET['selected_db']; // Make sure to validate and sanitize the input
//     if ($selectedDatabase == "lottery_web") {
//         $game = "Alibaba Exchange";
//     } else if ($selectedDatabase == "game1") {
//         // echo "hi";
//         $game = "Alibaba-1";
//     } else if ($selectedDatabase == "game2") {
//         $game = "Alibaba-2";
//     } else if ($selectedDatabase == "game3") {
//         $game = "Alibaba-3";
//     } else if ($selectedDatabase == "game4") {
//         $game = "Gm";
//     } else if ($selectedDatabase == "game5") {
//         $game = "Ls-1";
//     } else if ($selectedDatabase == "game6") {
//         $game = "Ls-2";
//     } else if ($selectedDatabase == "game7") {
//         $game = "Ls-3";
//     }
// } else {
//     // If not provided, assign a default database   
//     $selectedDatabase = $defaultDatabase;
// }
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
        <!-- <form class="form-inline">
            <div class="form-group mr-2">
                <label for="gameSelect">Select Game:</label>
                <select id="gameSelect" class="form-control ml-2">
                  <option value="./transactions.php?selected_db=lottery_web">Alibaba Exchange</option>
                  <option value="./transactions.php?selected_db=game1">Alibaba-1</option>
                  <option value="./transactions.php?selected_db=game2">Alibaba-2</option>
                  <option value="./transactions.php?selected_db=game3">Alibaba-3</option>
                  <option value="./transactions.php?selected_db=game4">Gm</option>
                  <option value="./transactions.php?selected_db=game5">Ls-1</option>
                  <option value="./transactions.php?selected_db=game6">Ls-2</option>
                  <option value="./transactions.php?selected_db=game7">Ls-3</option>
                </select>
            </div>
        </form> -->

        <table id="transactionTable" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Dealer</th>
                    <th>Transaction Type</th>
                    <th>Amount</th>
                    <th>Transaction Date</th>
                    <th>Details</th>
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
                $query = "SELECT * FROM dealer_transactions AS t 
                            INNER JOIN dealer AS d 
                            ON t.dealer_id = d.dealerID;";

                if (isset($_POST['submit'])) {
                    $from = $_POST['from'];
                    $to = $_POST['to'];
                    $query = "SELECT * FROM {$selectedDatabase}.transactions AS t 
                                INNER JOIN {$defaultDatabase}.users AS u 
                                ON t.user_id = u.id
                                WHERE DATE(t.transaction_date) BETWEEN '$from' AND '$to';";
                    // echo $query;
                }

                $result = mysqli_query($con, $query);
                
                // Loop through the transactions and display them in the table
                while ($row = mysqli_fetch_assoc($result)) {
                    $bidDate = $row['transaction_date'];
                    $dateTime = new DateTime($bidDate);
                    $formattedBidDate = $dateTime->format("d-m-Y H:i:s");

                    echo "<tr>";
                    echo "<td>" . $row['transaction_id'] . "</td>";
                    echo "<td>" . $row['username'] . "</td>";
                    echo "<td>" . $row['transaction_type'] . "</td>";
                    echo "<td>" . $row['amount'] . " PKR</td>";
                    // echo "<td>" . $row['transaction_date'] . "</td>";
                    echo "<td>" . $formattedBidDate . "</td>";
                    echo "<td>" . $row['details'] . "</td>";
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
          echo '$("#gameSelect").val("./transactions.php?selected_db=' . $selected_db . '");';
        }
      ?>
    });
        
        $(document).ready(function() {
    // Initialize DataTables with initial sorting
    $('#transactionTable').DataTable({
        "order": [[0, "desc"]]  
    });
});

    </script>
</body>

</html>