<?php
include "userAuth.php";
include "connect.php";
if (isset($_SESSION['username']) && isset($_SESSION['dealerID'])) {
    $dealer = $_SESSION['username'];
    $dealerID = $_SESSION['dealerID'];
}
if (isset($_POST['submit'])) {
    // Retrieve the form data
    $name = $_POST['name'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT `username` FROM `users`";
    $result = mysqli_query($con, $sql);

    $found = false;
    while ($row = mysqli_fetch_assoc($result)) {
        $user = $row['username'];
        if ($user == $username) {
            $found = true;
            break;
        }
    }

    if ($found) {
        echo '<script>alert("Username already exists. Please choose a different Username.");</script>';
    } else {
        $insertSql = "INSERT INTO `users` VALUES (NULL, '$name', '$username', '$password', $dealerID, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)";
        $insertResult = mysqli_query($con, $insertSql);
        $sql = "SELECT id FROM users ORDER BY id DESC LIMIT 1;";
        $result = mysqli_query($con, $sql);
        if($result){
            $row = mysqli_fetch_assoc($result);
            $newUserId = $row['id'];
            $insertSql = "INSERT INTO `funds` VALUES (NULL, $newUserId, 0)";
            $insertResult2 = mysqli_query($con, $insertSql);
            
            if ($insertResult) {
                echo '<script>alert("New Account Created successfully.");</script>';
                header("location: dealer.php");
                // echo "Data inserted successfully!";
            } else {
                 echo '<script>alert("Error creating account.");</script>';
            }
        }
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
        <h1>Create User Account</h1>
        <form action="createAccount.php" method="POST">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" value="<?php echo isset($name) ? $name : ''; ?>" placeholder="Enter client name">
            </div>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Choose a username">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="text" class="form-control" id="password" name="password" value="<?php echo isset($password) ? $password : ''; ?>" placeholder="Enter a password">
            </div>
            <button type="submit" class="btn btn-primary" name="submit">Create Account</button>
        </form>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>