<?php
include "userAuth.php";
include "connect.php";

if (isset($_GET['userId'])) {
    $userId = $_GET['userId'];
    $sql = "SELECT * FROM `users` WHERE `users`.`id` = $userId";
    $result = mysqli_query($con, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $name = $row['name'];
        $cname = $row['username'];
        $password = $row['password'];
        // $credit = $row['credit'];
    }
}


if (isset($_POST['submit'])) {
    $userId = $_POST['userId'];
    $newName = $_POST['name'];
    $newPassword = $_POST['password'];
    // $newCredit = $_POST['credit'];

    $sql = "SELECT `username` FROM `users`";
    $result = mysqli_query($con, $sql);

    $insertSql = "UPDATE `users` SET `name` = '$newName', `password` = '$newPassword' WHERE `users`.`id` = $userId;";
    $insertResult = mysqli_query($con, $insertSql);

    if ($insertResult) {
        echo '<script>alert("Account Updated Successfully.");</script>';
        header("Location: dealer.php");
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

<body>
    <?php include "aNav.php"; ?>
    <div class="container mt-4">
        <h1 class="">Edit Account</h1>
        <form action="editAccount.php" method="POST" class="m-3">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="userId" class="d-none" name="userId" class="form-control" value="<?php echo isset($userId) ? $userId : ''; ?>">
                <input type="text" id="name" name="name" class="form-control" value="<?php echo isset($name) ? $name : ''; ?>">
            </div>

            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" class="form-control" value="<?php echo isset($cname) ? $cname : ''; ?>" disabled>
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

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>