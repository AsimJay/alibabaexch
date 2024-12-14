<?php
include "userAuth.php";
include "connect.php";

if (isset($_SESSION['dealerID'])) {
    $dealerID = $_SESSION['dealerID'];
    $sql = "SELECT * FROM `dealer` WHERE `dealer`.`dealerID` = $dealerID";
    $result = mysqli_query($con, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
    $username = $row['username'];
    $dealerBalance = $row['balance'];
    }
}else{
    echo "<script>alert('Error loading data.'); window.location.href = 'login.html';</script>";

}

if (isset($_GET['userId'])) {
    $userId = $_GET['userId'];
    $sql = "SELECT * FROM `users` WHERE `users`.`id` = $userId AND `users`.`did` = $dealerID";
    $result = mysqli_query($con, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $name = $row['name'];
        $username = $row['username'];
    }
}


if (isset($_POST['submit'])) {
    $userId = $_POST['userId'];
    $currentBalance = 0;
    $newBalance = $_POST['balance'];
    $update = NULL;

    if($newBalance > $dealerBalance || $newBalance <= 0){
        echo "<script>alert('Insufficient or Invalid Balance.'); window.history.back();</script>";
        exit;
    }

    $sql = "SELECT * FROM `funds`";
    $result = mysqli_query($con, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        if ($row['userId'] === $userId) {
            $update = TRUE;
            $currentBalance = $row['balance'];
        }
    }
    $balance = $newBalance + $currentBalance;
    if ($update) {
        $sql = "UPDATE `funds` SET `balance` = '$balance' WHERE `funds`.`userId` = $userId;";
        $result = mysqli_query($con, $sql);
        $sql = "UPDATE `dealer` SET `balance` = `balance` - $newBalance WHERE `dealer`.`dealerID` = $dealerID;";
        $result = mysqli_query($con, $sql);
    } else {
        $sql = "INSERT INTO `funds` VALUES (NULL, $userId, $balance)";
        $result = mysqli_query($con, $sql);
    }
    if ($result) {
        $sql = "INSERT INTO transactions (transaction_id, user_id, transaction_type, amount, transaction_date, details)
        VALUES (NULL, '$userId', 'Deposit', $newBalance, CURRENT_TIMESTAMP, 'Deposit to user account');";
        $result = mysqli_query($con, $sql);

        if ($result) {
            echo '<script>
            alert("Balance Added.");
            window.location.href = "funds.php";
            </script>';
            exit;
        } else {
            echo "Error: " . mysqli_error($con);
        }

    } else {
        echo "Error inserting data: " . mysqli_error($con);
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
    <title>Add Funds</title>
</head>

<body>
    <?php include "aNav.php"; ?>
    <div class="container mt-4">
        <h1 class="">Edit Account</h1>
        <form action="addFunds.php" method="POST" class="m-3">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="userId" class="d-none" name="userId" class="form-control" value="<?php echo isset($userId) ? $userId : ''; ?>">
                <input type="text" id="name" name="name" class="form-control" value="<?php echo isset($name) ? $name : ''; ?>">
            </div>

            <div class="form-group">
                <label for="balance">Balance:</label>
                <div class="input-group">
                    <input type="number" id="balance" name="balance" class="form-control" placeholder="0" min=0 max=<?php echo $dealerBalance ?> required>
                    <div class="input-group-append">
                        <span class="input-group-text">PKR</span>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary mt-3" name="submit">Add Balance</button>
        </form>

    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>