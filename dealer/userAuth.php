<?php
error_reporting(0);
ini_set('display_errors', 0);
session_start();
if (!isset($_SESSION['username']) && $_SESSION['dealerID']) {
  header('Location: ../login.html');
  exit;
}
?>
