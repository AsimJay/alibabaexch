<?php include "userAuth.php"; ?>
<?php include "./admin/connect.php"; ?>
<!DOCTYPE html>
<html>

<head>
    <title>Statement</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="./img/favicon.ico" type="image/x-icon">

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
                if (mysqli_connect_errno()) {
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                    exit();
                }

                
                // Fetch transactions from the database)
                $query = "SELECT * FROM transactions, users WHERE transactions.user_id = users.id AND transactions.user_id = $id";

                if (isset($_POST['submit'])) {
                    $from = $_POST['from'];
                    $to = $_POST['to'];
                    $query = "SELECT * FROM transactions, users WHERE transactions.user_id = users.id AND transactions.user_id = $id AND DATE(transactions.transaction_date) BETWEEN '$from' AND '$to';;";
                    // echo $query;
                }

                $result = mysqli_query($con, $query);
                $result = mysqli_query($con, $query);

                // Loop through the transactions and display them in the table
                while ($row = mysqli_fetch_assoc($result)) {
                    $bidDate = $row['transaction_date'];
                    $dateTime = new DateTime($bidDate);
                    $formattedBidDate = $dateTime->format("d-m-Y H:i:s");

                    echo "<tr>";
                    echo "<td>" . $row['transaction_id'] . "</td>";
                    echo "<td>" . $row['name'] . "</td>";
                    echo "<td>" . $row['transaction_type'] . "</td>";
                    echo "<td>" . $row['amount'] . " PKR</td>";
                    // echo "<td>" . $row['transaction_date'] . "</td>";
                    echo "<td>" . $formattedBidDate. "</td>";
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

    <script>
        $(document).ready(function() {
            // Initialize DataTables
            $('#transactionTable').DataTable();
        });
    </script>
</body>

</html>