<?php include "userAuth.php"; 

?>

<?php
include "../admin/connect.php";
$sql = "SELECT * FROM luckynumber";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$number = $row['number'];
?>


<link rel="stylesheet" href="../odometer-theme-train-station.css" />
<script src="../odometer.js"></script>
<style>
    .odometer {
        font-size: 200px;
        padding: 50px;
    }
    @media (max-width: 768px) {
        .odometer {
            font-size: 150px;
            /* padding: 50px; */
        }

    }
</style>
<br><br>
<h1 class="text-dark">Lottery Winning Number</h1>
<div class="odometer">-</div>
<script>
    function markOdo(){
    var odometerValue = document.querySelector('.odometer-value');
    odometerValue.innerHTML = '-';
    }
    setTimeout(markOdo, 500);

    let odometer = document.querySelector('.odometer');
    let targetValue = 8;
    let delay = 3000; // Delay between each update in milliseconds
    let startTime = Date.now();

    // Getting target number
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            targetValue = parseInt(this.responseText);
            // startOdometerAnimation();
        }
    };
    xhttp.open("GET", "get_number.php", true);
    xhttp.send();

    function startOdometerAnimation() {
        let currentTime = Date.now();
        let elapsedTime = currentTime - startTime;

        if (elapsedTime >= 10000) {
            odometer.innerHTML = targetValue;
            if (targetValue < 10) {
                targetValue = '.' + targetValue; // Add a leading zero if the targetValue is less than 10
            }
            odometer.innerHTML = targetValue;
        } else {
            let randomValue = getRandomNumber(); // Generate a random value between 0 and 99
            if (randomValue < 10) {
                randomValue = '.' + randomValue; // Add a leading zero if the randomValue is less than 10
            }
            odometer.innerHTML = randomValue;

            if (randomValue !== targetValue) {
                setTimeout(startOdometerAnimation, delay);
            }
        }
    }

    function getRandomNumber() {
        return Math.floor(Math.random() * 100); // Generate a random value between 0 and 99 (including 99)
    }

    // setTimeout(startOdometerAnimation, 2000); // Delay before starting the animation (2 seconds)
</script>