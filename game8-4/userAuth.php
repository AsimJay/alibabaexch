<?php
error_reporting(0);
ini_set('display_errors', 0);

session_start();
if (!isset($_SESSION['username'])) {
  header('Location: login.html');
  exit;
}

$connection = mysqli_connect('localhost','u423067381_lottery_web','Asim123$','u423067381_lottery_web');
// $connection = mysqli_connect('localhost', 'root', '', 'lottery');
if (!$connection) {
  die("Database connection failed: " . mysqli_connect_error());
}

$columnName = "game8-4";
// Prepare the SQL statement using a placeholder for the username
$sql = "SELECT `$columnName` FROM users WHERE username = ?";
$stmt = mysqli_prepare($connection, $sql);
mysqli_stmt_bind_param($stmt, "s", $_SESSION['username']);
mysqli_stmt_execute($stmt);
mysqli_stmt_bind_result($stmt, $game2Value);

if (mysqli_stmt_fetch($stmt)) {
    if ($game2Value == '0') {
        $previousPageURL = "javascript:history.go(-1);";
        if (isset($_SERVER['HTTP_REFERER'])) {
            $previousPageURL = $_SERVER['HTTP_REFERER'];
        }
        echo '<script> 
                 alert("You are not allowed to play this game. Contact your admin.");
                 var previousPageURL = "' . $previousPageURL . '";
                 window.location.href = previousPageURL;
             </script>';
        exit;
    }
} else {
    echo "No records found.";
}

mysqli_stmt_close($stmt);
mysqli_close($connection);
