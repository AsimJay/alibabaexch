<?php
include "userAuth.php";
include "connect.php";

if (isset($_GET['userId'])) {
    $userId = $_GET['userId'];
    $sql = "SELECT * FROM `dealer` WHERE `dealer`.`dealerID` = $userId";
    $result = mysqli_query($con, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $username = $row['username'];
        $password = $row['password'];
        // $credit = $row['credit'];
    }
}


if (isset($_POST['submit'])) {
    $userId = $_POST['userId'];
    $newPassword = $_POST['password'];
    // $newCredit = $_POST['credit'];
    echo $userId;
    echo $newPassword;
    $sql = "SELECT `username` FROM `dealer`";
    $result = mysqli_query($con, $sql);
    
    $insertSql = "UPDATE `dealer` SET `password` = '$newPassword' WHERE `dealer`.`dealerID` = $userId;";
    $insertResult = mysqli_query($con, $insertSql);

    if ($insertResult) {
        echo '<script>alert("Account Updated Successfully.");</script>';
        header("Location: admin.php");
        exit;
    }else {
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
    <title>Create Account</title>
</head>

<style>
    .d-none{
        visibility: hidden;
    }
    
</style>

<body>
    <?php include "aNav.php"; ?>
    <div class="container mt-4">
        <h1 class="">Edit Account</h1>
        <form action="editAccount.php" method="POST" class="m-3">
            <div class="form-group">
                <!--<label for="name">Username:</label>-->
                <input type="text" id="userId" class="d-none" name="userId" class="form-control" value="<?php echo isset($userId) ? $userId : ''; ?>">
            </div>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" class="form-control" value="<?php echo isset($username) ? $username : ''; ?>" disabled>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="text" id="password" name="password" class="form-control" value="<?php echo isset($password) ? $password : ''; ?>">
            </div>
            <!--<div class="form-group">-->
            <!--    <label for="credit">Credit:</label>-->
            <!--    <input type="number" id="credit" name="credit" class="form-control" value="<?php echo isset($credit) ? $credit : ''; ?>">-->
            <!--</div>-->

            <button type="submit" class="btn btn-primary mt-3" name="submit">Update Account</button>
        </form>

    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>