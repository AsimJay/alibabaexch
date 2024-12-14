
<?php
error_reporting(E_ALL); // Report all errors
ini_set('display_errors', '1'); // Display errors on the screen

$connection = mysqli_connect('localhost','u423067381_lottery_web','Asim123$','u423067381_lottery_web');
$userName = $_SESSION['username'];
$sql = "SELECT * FROM users WHERE username = '$userName';";
$result = mysqli_query($connection, $sql);
$row = mysqli_fetch_assoc($result);
$userID = $row['id'];

include "./functions.php"

?>
<div class="container">
    <div class="row">
        <!-- Column 1 -->
        <div class="col-md-4">
            <h1 class="text-center mt-5 font-weight-bold subHeading2">Multi Digits</h1>
            <div class="numbersContainer">
                <?php
                bidFetch(0, $userID, $game);
                ?>
            </div>
        </div>
        
        <!-- Column 2 -->
        <div class="col-md-4">
            <h1 class="text-center mt-5 font-weight-bold subHeading2">Open Digits</h1>
            <div class="numbersContainer">
                <?php
                bidFetch(1, $userID, $game);
                ?>
            </div>
        </div>
        
        <!-- Column 3 -->
        <div class="col-md-4">
            <h1 class="text-center mt-5 font-weight-bold subHeading2">Close Digits</h1>
            <div class="numbersContainer">
                <?php
                bidFetch(2, $userID, $game);
                ?>
            </div>
        </div>
    </div>
</div>
