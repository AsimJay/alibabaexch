
<?php 
    include "./admin/connect.php";
    $username = $_SESSION['username'];
    $sql = "SELECT * FROM users, funds WHERE username = '$username' AND users.id = funds.userId;";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_assoc($result);
    $name = $row['name'];
    $id = $row['id'];
    $balance = $row['balance'];
    // $credit = $row['credit'];
?>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#3a1e56; z-index: 100;">
    <!-- <a class="navbar-brand" href="./index.php">Alibaba Exchange</a> -->
    <a class="navbar-brand" href="./index.php"><img src="./img/logo.png" alt="Alibaba Logo" class="m" width="120"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <!-- <li class="nav-item">
                <a class="nav-link" href="./index.php">Home</a>
            </li> -->
            <!-- <li class="nav-item">
                <a class="nav-link" href="./profile.php">Profile</a>
            </li> -->
            <!-- <li class="nav-item">
                <a class="nav-link" href="./myNumbers.php">Double</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./firstDigit.php">Open</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./secondDigit.php">Close</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./statement.php">Statement</a>
            </li> -->
            <li class="nav-item">
                <a class="nav-link" href="./kainchi.php">Kainchi</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./multiDigit.php">Multi Digit</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./multiOpen.php">Multi Open</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./multiClose.php">Multi Close</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./games.php">More Games</a>
            </li>
        </ul>

        <div class="form-inline my-2 my-lg-0">
            <h6 class="my-2 my-sm-0 text-light">Mr. <?php echo $name;?></span></h6>
            <h6 class="my-2 my-sm-0 mx-3 text-light">Balance: <span id="balance"><?php echo $balance;?></span> PKR</h6>
            <?php
            if (isset($credit)) {
                echo '<h6 class="my-2 mx-3" style="color: red;">Credit: <span id="balance">' . $credit . '</span> PKR</h6>';
            }
            ?>


            <a class="btn btn-outline-light my-2 my-sm-0" type="submit" href="logout.php">Logout</a>
        </div>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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