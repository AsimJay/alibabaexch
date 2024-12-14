<?php
include "connect.php";
$sql = "SELECT * FROM luckyNumber";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$number = $row['number'];



?>


<link rel="stylesheet" href="./odometer-theme-train-station.css" />
<script src="./odometer.js"></script>
<style>
    .odometer {
        font-size: 200px;
        padding: 50px;
    }
</style>
<br><br>
<h1 class="text-dark">Lottery Winning Number</h1>
<div class="odometer">88</div>
<div class="container">
    <?php
    if (!$checkRun) {
        echo '<a href="run_counter.php" type="submit" class="btn btn-primary">Run Counter</a>';
    } else {
        echo '<a href="stop_counter.php" type="submit" class="btn btn-danger">Stop Counter</a>';
    }
    ?>

    <br><br><br><br>
</div>
<script>
    let odometer = document.querySelector('.odometer');
    let targetValue = 88;
    targetValue = <?php echo $number; ?>;
    let delay = 3000; // Delay between each update in milliseconds
    let startTime = Date.now();

    function updateOdometer() {
        let currentTime = Date.now();
        let elapsedTime = currentTime - startTime;

        if (elapsedTime >= 10000) {
            odometer.innerHTML = targetValue;
        } else {
            let randomValue = Math.floor(Math.random() * 100); // Generate a random value between 0 and 9999
            odometer.innerHTML = randomValue;

            if (randomValue !== targetValue) {
                setTimeout(updateOdometer, delay);
            }
        }
    }

    // setTimeout(updateOdometer, 2000); // Delay before starting the animation (2 seconds)
</script>

<script src="../jquery.js"></script>

<script>
    setInterval(function() {
        // Send an AJAX request to a PHP file that retrieves the boolean value from the database
        // and calls the JavaScript function if the value is TRUE
        // Example AJAX code using jQuery:
        $.ajax({
            url: 'check_run_function.php',
            method: 'GET',
            success: function(response) {
                if (response === 'true') {
                    // Call your JavaScript function here
                    // myFunction();
                    // alert("run_function success");
                    console.log("success");
                    setTimeout(updateOdometer, 2000);
                }
            }
        });
    }, 3000); // Refresh every 10 seconds
</script>