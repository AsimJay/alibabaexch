<?php include "connect.php" ?>
<?php
$sql = "SELECT number from luckynumber WHERE id = 1;";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$luckyNumber = $row['number'];
// echo $luckyNumber;

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Winners</title>
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
    <?php include "aNav.php";
    $num = 0;
    $num = isset($_GET['number']); ?>
    <div class="container">
        <br>
        <div class="d-flex justify-content-between align-items-center">
            <h2>Winners</h2>
            <div class="btn-group btn-group-toggle mb-3" data-toggle="buttons">
                <a class="btn btn-info <?php echo (isset($_GET['number']) && $_GET['number'] == 0) ? 'active' : ''; ?>" id="numberBtn" href="shareProfit.php?number=0">
                    <input type="radio" name="options" id="option1" autocomplete="off"> Numbers
                </a>
                <a class="btn btn-info <?php echo (isset($_GET['number']) && $_GET['number'] == 1) ? 'active' : ''; ?>" id="firstDigitBtn" href="shareProfit.php?number=1">
                    <input type="radio" name="options" id="option2" autocomplete="off"> First Digit
                </a>
                <a class="btn btn-info <?php echo (isset($_GET['number']) && $_GET['number'] == 2) ? 'active' : ''; ?>" id="secondDigitBtn" href="shareProfit.php?number=2">
                    <input type="radio" name="options" id="option3" autocomplete="off"> Second Digit
                </a>
            </div>

            <a href="depositProfit.php?number=<?php echo isset($_GET['number']) ? $_GET['number'] : 0; ?>" class="btn btn-primary">Deposit Profit</a>

        </div>
        <br>

        <table id="transactionTable" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Number</th>
                    <th>Amount</th>
                    <th>Time</th>
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

                $number = $luckyNumber;
                $firstDigit = (int) ($number / 10) % 10; // Get the first digit
                $secondDigit = $number % 10; // Get the second digit
                // echo $firstDigit;
                // echo $secondDigit;
                $num = isset($_GET['number']) ? $_GET['number'] : null;

                if ($num == 1) {
                    $query = "SELECT * FROM firstbiddetails, users WHERE firstbiddetails.bid_number = $firstDigit AND firstbiddetails.user_id = users.id ORDER BY firstbiddetails.bid_date DESC;";
                } else if ($num == 2) {
                    $query = "SELECT * FROM secondbiddetails, users WHERE secondbiddetails.bid_number = $secondDigit AND secondbiddetails.user_id = users.id ORDER BY secondbiddetails.bid_date DESC;";
                } else {
                    $query = "SELECT * FROM biddetails, users WHERE biddetails.bid_number = $luckyNumber AND biddetails.user_id = users.id ORDER BY biddetails.bid_date DESC;";
                }

                // Fetch transactions from the database
                $result = mysqli_query($con, $query);

                // Loop through the transactions and display them in the table
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td>" . $row['name'] . "</td>";
                    echo "<td>" . $row['username'] . "</td>";
                    echo "<td>" . $row['bid_number'] . "</td>";
                    echo "<td>" . $row['bid_amount'] . " PKR</td>";
                    echo "<td>" . $row['bid_date'] . "</td>";
                    echo "</tr>";
                }

                // Close the database connection
                mysqli_close($con);
                ?>
            </tbody>
        </table>
    </div>
</body>

</html>