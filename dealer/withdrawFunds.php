<?php
ob_start();
error_reporting(E_ALL);
include "userAuth.php";
include "connect.php";

if (isset($_GET['userId'])) {
    $userId = $_GET['userId'];
    $sql = "SELECT * FROM `users`,`funds` WHERE `users`.`id` = $userId";
    $result = mysqli_query($con, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $name = $row['name'];
        $username = $row['username'];
    }
}


if (isset($_POST['submit'])) {
    $userId = $_POST['userId'];
    $currentBalance = 0;
    $withdrawAmount = $_POST['balance'];
    $update = NULL;

    $sql = "SELECT * FROM `funds`";
    $result = mysqli_query($con, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        if ($row['userId'] === $userId) {
            $update = TRUE;
            $currentBalance = $row['balance'];
        }
    }
    if ($withdrawAmount > $currentBalance) {
        $errorMessage = "Insufficient balance. Your balance is $currentBalance.";
        echo "<script>alert('$errorMessage');</script>";

    } else{

        $balance =  $currentBalance - $withdrawAmount;
        if($balance < 0){
            $balance = 0;
        }
        if ($update) {
            $sql = "UPDATE `funds` SET `balance` = '$balance' WHERE `funds`.`userId` = $userId;";
            $result = mysqli_query($con, $sql);
    } else {
        $sql = "INSERT INTO `funds` VALUES (NULL, $userId, $balance)";
        $result = mysqli_query($con, $sql);
    }
    if ($result) {
        $sql = "INSERT INTO transactions (transaction_id, user_id, transaction_type, amount, transaction_date, details)
        VALUES (NULL, '$userId', 'Withdraw', $withdrawAmount, CURRENT_TIMESTAMP, 'Withdraw from dealer account');";
        $result = mysqli_query($con, $sql);
        echo '<script>alert("Balance Withdraw Successfully.");</script>';
        header("Location: funds.php");
        exit;
    } else {
        echo "Error inserting data: " . mysqli_error($con);
    }
}
}
ob_end_flush();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
    <title>Withdraw Funds</title>
</head>

<body>
    <?php include "aNav.php"; ?>
    <div class="container mt-4">
        <h1 class="">Withdraw Funds</h1>
        <form action="" method="POST" class="m-3">
            <div class="form-group">
                <label for="name">Username:</label>
                <input type="text" id="userId" class="d-none" name="userId" class="form-control" value="<?php echo isset($userId) ? $userId : ''; ?>">
                <input type="text" id="name" name="name" class="form-control" value="<?php echo isset($name) ? $name : ''; ?>" disabled>
            </div>

            <div class="form-group">
                <label for="balance">Enter Amount:</label>
                <div class="input-group">
                    <input type="number" id="balance" name="balance" class="form-control" min=0 placeholder="0" required>
                    <div class="input-group-append">
                        <span class="input-group-text">PKR</span>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary mt-3" name="submit">Withdraw Balance</button>
        </form>

    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>