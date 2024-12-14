<?php
include "./admin/connect.php";

$sql = "SELECT suspend FROM market LIMIT 1";
$result = mysqli_query($con, $sql);
$marketSuspend = mysqli_fetch_assoc($result)['suspend'];
// echo $marketSuspend;
// echo "hi";
$result = FALSE;
if (!$marketSuspend) {
    if (isset($_GET['userId'])) {
        $userId = $_GET['userId'];
        $sql2 = "SELECT balance FROM funds WHERE funds.userId = $userId LIMIT 1;";
        $result = mysqli_query($con, $sql2);
        $row = mysqli_fetch_assoc($result);

        $currentBalance = (int)$row['balance'];
        // echo $currentBalance;
        $amount = (int)$_GET['amount'];
        // echo $amount;
        $newBalance = $currentBalance - $amount;
        // echo $newBalance;
        $sql = "UPDATE `funds` SET `balance` = '$newBalance' WHERE `funds`.`userId` = $userId;";
        $result = mysqli_query($con, $sql);
        // $result = 0;
        if ($result) {
            $number = $_GET['number'];
            $string1 = "Spent on first digit number ";
            $combinedString = $string1 . " " . $number;
            // echo $combinedString;

            $sql = "INSERT INTO transactions (transaction_id, user_id, transaction_type, amount, transaction_date, details)
        VALUES (NULL, '$userId', 'Spent on first digit', $amount, CURRENT_TIMESTAMP, '$combinedString');";

            $result = mysqli_query($con, $sql);

            //Getting the number;
            // checking if the number already exsists
            $sql = "SELECT * FROM firstbiddetails WHERE bid_number = $number AND user_id = $userId";
            $result = mysqli_query($con, $sql);

            if (mysqli_num_rows($result) > 0) {
                $sql = "UPDATE firstbiddetails SET bid_amount = bid_amount + $amount, bid_date = CURRENT_TIMESTAMP WHERE user_id = $userId AND bid_number = $number";
                $result = mysqli_query($con, $sql);
            } else {
                $sql = "INSERT INTO firstbiddetails (user_id, bid_number, bid_amount, bid_date)
            VALUES ('$userId', '$number', $amount, CURRENT_TIMESTAMP)";
                $result = mysqli_query($con, $sql);
            }

            $sql3 = "UPDATE `first_digit` SET `amount` = `amount` + $amount WHERE `id` = $number+1;";
            $result = mysqli_query($con, $sql3);


            // $previousPage = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : 'index.php';
            // header("Location: $previousPage");
            // header("Location: index.php");

            // exit;
        } else {
            echo "Error inserting data: " . mysqli_error($con);
        }
    }

    // Update the user's balance in the database
    // $sql = "UPDATE users SET balance = balance - $amount WHERE id = $userId";
    if ($result) {
        // Fetch the updated balance from the database
        $updatedBalance = 0;
        $fetchSql = "SELECT balance FROM funds WHERE userId = $userId LIMIT 1";
        $result = $con->query($fetchSql);

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $updatedBalance = $row['balance'];
        }
        // echo $updatedBalance;   
        // Prepare the response
        $response = array(
            'success' => true,
            'updatedBalance' => $updatedBalance
        );
        echo json_encode($response);
    } else {
        // Handle database update error
        $response = array(
            'success' => false,
            'message' => 'Failed to update balance'
        );
        echo json_encode($response);
    }
} else {
    $response = array(
        'success' => false,
        'message' => 'Market Suspended Please try again later.'
    );
    echo json_encode($response);
}

// Close the database connection
$con->close();
