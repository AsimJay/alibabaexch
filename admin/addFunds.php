<?php
include "userAuth.php";
include "connect.php";

if (isset($_GET['userId'])) {
    $userId = $_GET['userId'];
    $sql = "SELECT * FROM `dealer` WHERE `dealer`.`dealerID` = $userId";
    $result = mysqli_query($con, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $username = $row['username'];
    }
}


if (isset($_POST['submit'])) {
    $userId = $_POST['userId'];
    $currentBalance = 0;
    $newBalance = $_POST['balance'];
    $update = NULL;

    $sql = "SELECT * FROM `dealer`";
    $result = mysqli_query($con, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        if ($row['dealerID'] === $userId) {
            $update = TRUE;
            $currentBalance = $row['balance'];
        }
    }
    $balance = $newBalance + $currentBalance;
    if ($update) {
        $sql = "UPDATE `dealer` SET `balance` = '$balance' WHERE `dealer`.`dealerID` = $userId;";
        $result = mysqli_query($con, $sql);
    }
    if ($result) {
        $sql = "INSERT INTO dealer_transactions (transaction_id, dealer_id, transaction_type, amount, transaction_date, details)
        VALUES (NULL, '$userId', 'Deposit', $newBalance, CURRENT_TIMESTAMP, 'Deposit to dealer account');";
        $result = mysqli_query($con, $sql);

        if ($result) {
            echo "<script>alert('Balance added.'); window.location.href = 'funds.php';</script>";
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
                <label for="username">Username:</label>
                <input type="text" id="userId" class="d-none" name="userId" class="form-control" value="<?php echo isset($userId) ? $userId : ''; ?>">
                <input type="text" id="name" name="name" class="form-control" value="<?php echo isset($username) ? $username : ''; ?>">
            </div>

            <div class="form-group">
                <label for="balance">Balance:</label>
                <div class="input-group">
                    <input type="number" id="balance" name="balance" class="form-control" placeholder="0" required>
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