<?php include "userAuth.php"; ?>
<?php
session_start();
include "../admin/connect.php";
$username = $_SESSION['username'];
$sql = "SELECT * FROM users, funds WHERE username = '$username' AND users.id = funds.userId;";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$name = $row['name'];
$id = $row['id'];
$balance = $row['balance'];
$pass = $row['password'];
?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


<nav class="navbar navbar-expand-lg navbar-dark">
    <!-- <a class="navbar-brand" href="./index.php">Alibaba Exchange</a> -->
    <a class="navbar-brand" href="../home.php"><img src="../img/logo.png" alt="Alibaba Logo" class="m" width="120"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <?php include '../kainchi_styles.php';?>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="./game.php">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./2digit.php">Double</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./fdigit.php">Open</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./sdigit.php">Close</a>
            </li>
            <li class="nav-item kainchi_link">
                <a class="nav-link" href="/kainchi.php">Kainchi</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./statement.php">Statement</a>
            </li>
        </ul>

        <div class="form-inline my-2 my-lg-0">
            <h6 class="my-2 my-sm-0 text-light">Mr. <?php echo $name; ?></span></h6>
            <h6 class="my-2 my-sm-0 mx-4 text-light">Balance: <span id="balance"><?php echo $balance; ?></span> PKR</h6>
            <a class="btn btn-outline-light my-2 my-sm-0" type="submit" href="../logout.php">Logout</a>
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
            // console.log("Success");
        },
        error: function(error) {
            console.error('Error updating balance:', error);
        }
    });
}

// Call the updateBalance function every 5 seconds (adjust the interval as needed)
setInterval(updateBalance, 1000);

</script>