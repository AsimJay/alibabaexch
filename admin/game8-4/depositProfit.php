<?php
// include "../connect.php";
include "./gameCon.php";
$sql = "SELECT number from luckynumber WHERE id = 1;";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$luckyNumber = $row['number'];

$num = isset($_GET['number']) ? $_GET['number'] : null;

$number = $luckyNumber;
$firstDigit = (int) ($number / 10) % 10; // Get the first digit
$secondDigit = $number % 10; // Get the second digit

$db = "asmitixc_game8-4";

if ($num == 1) {
    $query = "SELECT * FROM `{$db}`.firstbiddetails, asmitixc_lottery_web.users WHERE `{$db}`.firstbiddetails.bid_number = $firstDigit AND `{$db}`.firstbiddetails.user_id = users.id ORDER BY `{$db}`.firstbiddetails.bid_date DESC;";
    $profitQuery = "SELECT * FROM profit_percent WHERE id = 2;";
} else if ($num == 2) {
    $query = "SELECT * FROM `{$db}`.secondbiddetails, asmitixc_lottery_web.users WHERE `{$db}`.secondbiddetails.bid_number = $secondDigit AND `{$db}`.secondbiddetails.user_id = users.id ORDER BY `{$db}`.secondbiddetails.bid_date DESC;";
    $profitQuery = "SELECT * FROM profit_percent WHERE id = 3;";
} else {
    $query = "SELECT * FROM `{$db}`.biddetails, asmitixc_lottery_web.users WHERE `{$db}`.biddetails.bid_number = $luckyNumber AND `{$db}`.biddetails.user_id = users.id ORDER BY `{$db}`.biddetails.bid_date DESC;";
    $profitQuery = "SELECT * FROM profit_percent WHERE id = 1;";
}

// $query = "SELECT * FROM biddetails, users WHERE biddetails.bid_number = $luckyNumber AND biddetails.user_id = users.id ORDER BY biddetails.bid_date DESC;";
$result = mysqli_query($con, $query);
$profitResult = mysqli_query($con, $profitQuery);
$row = mysqli_fetch_assoc($profitResult);
$profitPercent = $row['percentage'];
// Loop through the transactions and display them in the table
while ($row = mysqli_fetch_assoc($result)) {
    // echo "hi";
    $userId = $row['user_id'];
    $bidAmount = $row['bid_amount'];

    // if($num == 1 || $num == 2){
    //     $profit = $bidAmount * (900 / 100); // Calculate the profit
    // }else if($num == 0){
    //     $profit = $bidAmount * (8500 / 100); // Calculate the profit
    // }

    $profit = $bidAmount * ($profitPercent / 100); // Calculate the profit

    $newBalance = $bidAmount + $profit;

    $sql = "UPDATE asmitixc_lottery_web.funds SET `balance` = `balance` + $newBalance WHERE `userId` = $userId;";
    $result2 = mysqli_query($con, $sql);

    if ($result2) {

        if ($num == 1) {
            // echo $num;
            $sql = "INSERT INTO `{$db}`.transactions (transaction_id, user_id, transaction_type, amount, transaction_date, details)
            VALUES (NULL, '$userId', 'Winner', $profit, CURRENT_TIMESTAMP, 'First Digit Winner');";
            $result3 = mysqli_query($con, $sql);
        } else if ($num == 2) {
            // echo $num;
            $sql = "INSERT INTO `{$db}`.transactions (transaction_id, user_id, transaction_type, amount, transaction_date, details)
            VALUES (NULL, '$userId', 'Winner', $profit, CURRENT_TIMESTAMP, 'Second Digit Winner');";
            $result3 = mysqli_query($con, $sql);
        } else {
            // echo $num;
            $sql = "INSERT INTO `{$db}`.transactions (transaction_id, user_id, transaction_type, amount, transaction_date, details)
            VALUES (NULL, '$userId', 'Winner', $profit, CURRENT_TIMESTAMP, 'Full Number Winner');";
            $result3 = mysqli_query($con, $sql);
        }
        // echo "hi";
        
    } else {
        echo "Error inserting data: " . mysqli_error($con);
    }
}
if ($result3) {
    // echo '<script>alert("Profit deposited successfully.");</script>';
    // header("Location: shareProfit.php");
    if ($num == 1) {
        echo "<script>
        alert('Profit deposited to first digit numbers.');
        window.location.href = 'winners.php?number=1';
        </script>";
        exit;
    } else if ($num == 2) {
        echo "<script>
        alert('Profit deposited to second digit numbers.');
        window.location.href = 'winners.php?number=2';
        </script>";
        exit;
    } else if ($num == 0) {
        echo "<script>
        alert('Profit deposited to 2 digit numbers.');
        window.location.href = 'winners.php?number=0';
        </script>";
        exit;
    }
} else {
    echo "Error: " . mysqli_error($con);
}