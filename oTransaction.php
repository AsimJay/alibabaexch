<?php include "userAuth.php"; ?>


<?php
include "./admin/connect.php";
if(!$_GET['userID']){
    $url = "https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=6";
        echo "<script>window.location.href = '$url';</script>";
    // header("Location: https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=6");
    // exit;
}
$userId = $_GET['userID'];
$game = $_GET['game'];
$gameDB = str_replace("asmitixc_", "", $game);
$digits = $_GET['number'];
$price = $_GET['price'];
// echo $game;
//Decoding the digits
$digitsArray= explode(',', $digits);
$digitsArray = array_map('intval', $digitsArray);
// print_r($digitsArray);
$digit = $digitsArray[0];

// $gameCon = new mysqli('localhost', 'root', '', 'game1');
$gameCon = new mysqli('localhost',$game,'Asim123$', $game);


function purchaseDigits($userId, $digit, $price, $gameCon, $con, $digitsArray){
    $totalBidSql = "SELECT bid_amount FROM firstbiddetails WHERE bid_number = $digit AND user_id = $userId";
    $totalBidSqlResult = mysqli_query($gameCon, $totalBidSql);
    if ($totalBidSqlResult && mysqli_num_rows($totalBidSqlResult) > 0) {
        $totalBidSqlResultRow = mysqli_fetch_assoc($totalBidSqlResult);
        $totalBid = $totalBidSqlResultRow["bid_amount"];
    } else {
        $totalBid = 0; 
    }

    if(checkBid($totalBid, $price)){
        echo "Bid Limit Exceed";
        $url = "https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=6";
        echo "<script>window.location.href = '$url';</script>";
    }else{
        if(updateBalance($userId, $price, $con)){
            // echo "Done Updating the Balance...";
            if(recordTransaction($userId, $digit, $price, $gameCon)){
                //    echo "Done Recording the Transactions";
                   if(updateNumberTable($digit, $userId, $price, $gameCon)){
                        // echo "Done updating the numeber table";
                        $fetchSql = "SELECT balance FROM funds WHERE userId = $userId LIMIT 1";
                        $result = $con->query($fetchSql);
                        if ($result->num_rows > 0) {
                            $row = $result->fetch_assoc();
                            $updatedBalance = $row['balance'];
                        }
                    }else{
                        logError();
                    }
               }else{
                logError();
               }
        }else{
            logError();
        }
    }


    
}

function checkBalance($userId, $price, $digitsArray, $con){
    $digitsLength = count($digitsArray);
    $sql2 = "SELECT balance FROM funds WHERE funds.userId = $userId LIMIT 1;";
    $result = mysqli_query($con, $sql2);
    $row = mysqli_fetch_assoc($result);
    $currentBalance = (int)$row['balance'];
    // Calculating total amount
    $totalAmount = ($price * $digitsLength);
    // echo $totalAmount;
    if($currentBalance < $totalAmount ){
        // echo "Insufficient Balance.";
        $url = "https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=3";
        echo "<script>window.location.href = '$url';</script>";
        // header("Location: https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=3");
        // exit;
    }else{
        // echo "Sufficient Balance.";
        return true;
    }
}

function getUpdatedBalance($userId, $price, $digitsArray, $con){
    $digitsLength = count($digitsArray);
    $sql2 = "SELECT balance FROM funds WHERE funds.userId = $userId LIMIT 1;";
    $result = mysqli_query($con, $sql2);
    $row = mysqli_fetch_assoc($result);
    $currentBalance = (int)$row['balance'];
    return $currentBalance;
}

function checkBid($totalBid, $price){
    $bidLimitExceed = false;
    if($totalBid > 20000 || ($totalBid + $price) > 20000){
        $bidLimitExceed = true;
    }
    return $bidLimitExceed;
}

function updateBalance($userId, $price, $con ){
    $sql2 = "SELECT balance FROM funds WHERE funds.userId = $userId LIMIT 1;";
    $result = mysqli_query($con, $sql2);
    $row = mysqli_fetch_assoc($result);
    $currentBalance = (int)$row['balance'];
    // $amount = (int)$_GET['amount'];
    $newBalance = $currentBalance - $price;
    $sql = "UPDATE `funds` SET `balance` = '$newBalance' WHERE `funds`.`userId` = $userId;";
    $result = mysqli_query($con, $sql);
    return $result;
}

function recordTransaction($userId, $digit, $price, $gameCon){
    // $digit = $_GET['number'];
    $string1 = "Spent on 2 digit number ";
    $tableName = "firstbiddetails";
    $combinedString = $string1 . " " . $digit;
    //Insert into transactions
    $sql = "INSERT INTO transactions (transaction_id, user_id, transaction_type, amount, transaction_date, details)
    VALUES (NULL, '$userId', 'Spend', $price, CURRENT_TIMESTAMP, '$combinedString');";
    $result = mysqli_query($gameCon, $sql);
    if($result){
        //Insert into firstbiddetails
        $sql = "SELECT * FROM firstbiddetails WHERE bid_number = " . $digit . " AND user_id = " . $userId;
        $result = mysqli_query($gameCon, $sql);
        if (mysqli_num_rows($result) > 0) {
            $sql = "UPDATE firstbiddetails SET bid_amount = bid_amount + " . $price . ", bid_date = CURRENT_TIMESTAMP WHERE user_id = " . $userId . " AND bid_number = " . $digit;
            $result = mysqli_query($gameCon, $sql);
        } else {
            $sql = "INSERT INTO firstbiddetails(user_id, bid_number, bid_amount, bid_date)
            VALUES ('" . $userId . "', '" . $digit . "', " . $price . ", CURRENT_TIMESTAMP)";
            $result = mysqli_query($gameCon, $sql);
        }
    }
    return $result; 
}

function updateNumberTable($digit, $userId, $price, $gameCon){
    $sql3 = "UPDATE first_digit SET amount = amount ". " + " . $price . " WHERE id = " . ($digit + 1);
    $result = mysqli_query($gameCon, $sql3);
    return $result;
}

function logError(){
    $url = "https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=4";
        echo "<script>window.location.href = '$url';</script>";
    // header("Location: https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=4");
    // exit;
}




// Check if the market is suspeded
$sql = "SELECT suspend FROM market LIMIT 1";
$result = mysqli_query($gameCon, $sql);
$marketSuspend = mysqli_fetch_assoc($result)['suspend'];
$result = FALSE;
// echo $marketSuspend;
if (!$marketSuspend) {
    $bidLimitExceed = false;
    //Get the user ID and Data 
    if (isset($_GET['userID'])) {
        $userId = $_GET['userID'];
        // $number = $_GET['number'];
        // $digit = $_GET['digit'];
        // $amount = (int)$_GET['amount'];
        // Running the function
        // echo "Running the function";
        if(checkBalance($userId, $price, $digitsArray, $con)){
        foreach ($digitsArray as $digit) {
            purchaseDigits($userId, $digit, $price, $gameCon, $con, $digitsArray);
        }
    }   
        $balance = urlencode(getUpdatedBalance($userId, $price, $digitsArray, $con));
        $url = "https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=1&b=" . $balance . "&gameData=" . $game;
        echo "<script>window.location.href = '$url';</script>";
        // header("Location: https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=1&b=" . urlencode(getUpdatedBalance($userId, $price, $digitsArray, $con)) . "&gameDB=" . $gameDB);
        // exit;
        // purchaseDigits($userId, $digitsArray[0], $price, $gameCon, $con);
            // echo "Error inserting data: " . mysqli_error($con);
    }
}else{
    $url = "https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=2";
        echo "<script>window.location.href = '$url';</script>";
    // header("Location: https://{$_SERVER['HTTP_HOST']}/multiOpen.php?m=2");
    // exit;
}
//else {
//     $response = array(
//         'success' => false,
//         'message' => 'Market Suspended Please try again later.'
//     );
//     echo json_encode($response);
// }

// Close the database connection
$con->close();
