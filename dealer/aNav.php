<?php include "userAuth.php";
if (isset($_SESSION['username']) && isset($_SESSION['dealerID'])) {
    $dealer = $_SESSION['username'];
    $dealerID = $_SESSION['dealerID'];
}

include "../admin/connect.php";
$username = $_SESSION['username'];
$sql = "SELECT * FROM dealer WHERE username = '$username' AND dealer.dealerID = $dealerID;";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$dealerID = $row['dealerID'];
$username = $row['username'];
$dealerBalance = $row['balance'];


?>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#3a1e56;">
    <!-- <a class="navbar-brand" href="./admin.php">Pakistan Lottery</a> -->
    <a class="navbar-brand" href="./dealer.php"><img src="../img/logo.png" alt="Alibaba Logo" class="m" width="120"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="./dealer.php">Users</a>
            </li>
            <!--<li class="nav-item">-->
            <!--    <a class="nav-link" href="./bids.php">Full Number</a>-->
            <!--</li>-->
            <!--<li class="nav-item">-->
            <!--    <a class="nav-link" href="./fbids.php">Open</a>-->
            <!--</li>-->
            <!--<li class="nav-item">-->
            <!--    <a class="nav-link" href="./sbids.php">Close</a>-->
            <!--</li>-->
            <li class="nav-item">
                <a class="nav-link" href="./number.php">Numbers</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./transactions.php">Transactions</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./funds.php">Funds</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./createAccount.php">Create Account</a>
            </li>
            <!--<li class="nav-item">-->
            <!--    <a class="nav-link" href="./gameActivation.php">Game Activition</a>-->
            <!--</li>-->
        </ul>

        <div class="form-inline my-2 my-lg-0">
        <h6 class="my-2 my-sm-0 text-light">Mr. <?php echo $username;?></span></h6>
            <h6 class="my-2 my-sm-0 mx-3 text-light">Balance: <span id="balance"><?php echo $dealerBalance;?></span> PKR</h6>
            <a href="logout.php" class="btn btn-outline-light my-2 my-sm-0">Logout</a>
        </div>
    </div>
</nav>
<script>
    function updateBalance() {
    // Make an AJAX request to your PHP script
    $.ajax({
        url: 'refresh_balance.php',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            // Update the balance element in your navbar with the data received from the server
            $('#balance').text(data.balance);
            console.log("Success");
        },
        error: function(error) {
            console.error('Error updating balance:', error);
        }
    });
}

// Call the updateBalance function every 5 seconds (adjust the interval as needed)
setInterval(updateBalance, 1000);

</script>