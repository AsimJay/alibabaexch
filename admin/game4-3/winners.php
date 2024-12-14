<?php
include "./gameCon.php";

$sql = "SELECT number from luckynumber WHERE id = 1;";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$luckyNumber = $row['number'];
// echo $luckyNumber;

$db = "asmitixc_game4-3";

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
    <?php include "../aNav.php";
    $num = 0;
    $num = isset($_GET['number']); ?>
    <div class="container">
        <br>
        <div class="d-flex justify-content-between align-items-center">
            <h2>Winners</h2>
            <div class="btn-group btn-group-toggle mb-3" data-toggle="buttons">
                <a class="btn btn-info <?php echo (isset($_GET['number']) && $_GET['number'] == 0) ? 'active' : ''; ?>" id="numberBtn" href="winners.php?number=0">
                    <input type="radio" name="options" id="option1" autocomplete="off"> Numbers
                </a>
                <a class="btn btn-info <?php echo (isset($_GET['number']) && $_GET['number'] == 1) ? 'active' : ''; ?>" id="firstDigitBtn" href="winners.php?number=1">
                    <input type="radio" name="options" id="option2" autocomplete="off"> First Digit
                </a>
                <a class="btn btn-info <?php echo (isset($_GET['number']) && $_GET['number'] == 2) ? 'active' : ''; ?>" id="secondDigitBtn" href="winners.php?number=2">
                    <input type="radio" name="options" id="option3" autocomplete="off"> Second Digit
                </a>
            </div>

            <script src="../widispa.js"></script>
            <script>
              function confirmDeposit() {
                var code = prompt("Please enter the code to proceed with the deposit:");
            
                if (code === depositCode) {
                  // If the code matches "5544", proceed to the depositProfit.php page
                  var redirectURL = "depositProfit.php?number=<?php echo isset($_GET['number']) ? $_GET['number'] : 0; ?>";
                  window.location.href = redirectURL;
                } else {
                  alert("Invalid code. Please try again.");
                }
              }
            </script>
            
            <a href="#" class="btn btn-primary" onclick="confirmDeposit()">Deposit Profit</a>
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
                // echo $num;
                if ($num == 1) {
                    $query = "SELECT * FROM `{$db}`.firstbiddetails, asmitixc_lottery_web.users WHERE `{$db}`.firstbiddetails.bid_number = $firstDigit AND `{$db}`.firstbiddetails.user_id = users.id ORDER BY `{$db}`.firstbiddetails.bid_date DESC;";
                } else if ($num == 2) {
                    $query = "SELECT * FROM `{$db}`.secondbiddetails, asmitixc_lottery_web.users WHERE `{$db}`.secondbiddetails.bid_number = $secondDigit AND `{$db}`.secondbiddetails.user_id = users.id ORDER BY `{$db}`.secondbiddetails.bid_date DESC;";
                } else {
                    $query = "SELECT * FROM `{$db}`.biddetails, asmitixc_lottery_web.users WHERE `{$db}`.biddetails.bid_number = $luckyNumber AND `{$db}`.biddetails.user_id = users.id ORDER BY `{$db}`.biddetails.bid_date DESC;";
                }
                // echo $query;
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>