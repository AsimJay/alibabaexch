<?php include "userAuth.php"; ?>

<?php
include "../admin/connect.php";
// $gameCon = new mysqli('localhost', 'root', '', 'game1-3');
$gameCon = new mysqli('localhost', 'u423067381_game1_3', 'Asim123$', 'u423067381_game1_3');

$sql = "SELECT suspend FROM market LIMIT 1";
$result = mysqli_query($gameCon, $sql);
$marketSuspend = mysqli_fetch_assoc($result)['suspend'];
$result = FALSE;
if (!$marketSuspend) {
    $bidLimitExceed = false;
    if (isset($_GET['userId'])) {
        $userId = $_GET['userId'];
        $number = $_GET['number'];
        $digit = $_GET['digit'];
        $amount = (int)$_GET['amount'];
        if ($digit == 0 || !$digit) {
            $totalBidSql = "SELECT bid_amount FROM firstbiddetails WHERE bid_number = $number AND user_id = $userId";
            $totalBidSqlResult = mysqli_query($gameCon, $totalBidSql);
            $totalBidSqlResultRow = mysqli_fetch_assoc($totalBidSqlResult);
            $totalBid = $totalBidSqlResultRow["bid_amount"];
            if($totalBid > 20000 || ($totalBid + $amount) > 20000){
                $bidLimitExceed = true;
            }
        } else if ($digit == 1) {
            $totalBidSql = "SELECT bid_amount FROM secondbiddetails WHERE bid_number = $number AND user_id = $userId";
            $totalBidSqlResult = mysqli_query($gameCon, $totalBidSql);
            $totalBidSqlResultRow = mysqli_fetch_assoc($totalBidSqlResult);
            $totalBid = $totalBidSqlResultRow["bid_amount"];
            if($totalBid > 20000 || ($totalBid + $amount) > 20000){
                $bidLimitExceed = true;
            }
        } else if ($digit == 2) {
            $totalBidSql = "SELECT bid_amount FROM biddetails WHERE bid_number = $number AND user_id = $userId";
            $totalBidSqlResult = mysqli_query($gameCon, $totalBidSql);
            $totalBidSqlResultRow = mysqli_fetch_assoc($totalBidSqlResult);
            $totalBid = $totalBidSqlResultRow["bid_amount"];
            if($totalBid > 2000 || ($totalBid + $amount) > 2000){
                $bidLimitExceed = true;
            }
        }

        if($bidLimitExceed){
            $response = array(
                'success' => false,
                'message' => 'Bid limit exceed. 
                Full Digit Limit = 2000 (Two Thousand Only)
                First Digit Limit = 20000 (Twenty Thousand Only)
                Second Digit Limit = 20000 (Twenty Thousand Only)'
            );
            echo json_encode($response);
            exit;
        }
        
        
        
        
        
        $sql2 = "SELECT balance FROM funds WHERE funds.userId = $userId LIMIT 1;";
        $result = mysqli_query($con, $sql2);
        $row = mysqli_fetch_assoc($result);



        $currentBalance = (int)$row['balance'];
        $amount = (int)$_GET['amount'];
        $newBalance = $currentBalance - $amount;
        $sql = "UPDATE `funds` SET `balance` = '$newBalance' WHERE `funds`.`userId` = $userId;";
        $result = mysqli_query($con, $sql);
        if ($result) {
            $number = $_GET['number'];
            $digit = $_GET['digit'];
            if ($digit == 0 || !$digit) {
                $string1 = "Spent on first digit number ";
                $tableName = "firstbiddetails";
                $digitTable = "first_digit";
            } else if ($digit == 1) {
                $string1 = "Spent on second digit number ";
                $tableName = "secondbiddetails";
                $digitTable = "second_digit";
                
            } else if ($digit == 2) {
                $string1 = "Spent on 2 digit number ";
                $tableName = "biddetails";
                $digitTable = "number_table";
            }
            $combinedString = $string1 . " " . $number;

            $sql = "INSERT INTO transactions (transaction_id, user_id, transaction_type, amount, transaction_date, details)
        VALUES (NULL, '$userId', 'Spend', $amount, CURRENT_TIMESTAMP, '$combinedString');";

            $result = mysqli_query($gameCon, $sql);

            //Getting the number;
            // checking if the number already exsists
            // $sql = "SELECT * FROM firstbiddetails WHERE bid_number = $number AND user_id = $userId";
            $sql = "SELECT * FROM " . $tableName . " WHERE bid_number = " . $number . " AND user_id = " . $userId;
            $result = mysqli_query($gameCon, $sql);

            if (mysqli_num_rows($result) > 0) {
                // $sql = "UPDATE firstbiddetails SET bid_amount = bid_amount + $amount, bid_date = CURRENT_TIMESTAMP WHERE user_id = $userId AND bid_number = $number";
                $sql = "UPDATE " . $tableName . " SET bid_amount = bid_amount + " . $amount . ", bid_date = CURRENT_TIMESTAMP WHERE user_id = " . $userId . " AND bid_number = " . $number;
                $result = mysqli_query($gameCon, $sql);
            } else {
                //     $sql = "INSERT INTO firstbiddetails (user_id, bid_number, bid_amount, bid_date)
                // VALUES ('$userId', '$number', $amount, CURRENT_TIMESTAMP)";
                $sql = "INSERT INTO " . $tableName . " (user_id, bid_number, bid_amount, bid_date)
                VALUES ('" . $userId . "', '" . $number . "', " . $amount . ", CURRENT_TIMESTAMP)";
                $result = mysqli_query($gameCon, $sql);
            }

            // $sql3 = "UPDATE `first_digit` SET `amount` = `amount` + $amount WHERE `id` = $number+1;";
            $sql3 = "UPDATE " . $digitTable . " SET amount = amount ". " + " . $amount . " WHERE id = " . ($number + 1);
            $result = mysqli_query($gameCon, $sql3);


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
            'message' => 'Unable to bid.'
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
