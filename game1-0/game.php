<?php include "userAuth.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="game.css">
    <link rel="icon" href="./img/favicon.ico" type="image/x-icon">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <title>Alibaba</title>
</head>

<body>
    <?php include "nav.php"; ?>

    <br>
    <div class="div container text-center">
        <h2 class="heading2 text-center">Alibaba</h2>
        <br>


        <?php include "numberSelector.php" ?>
        <?php include "timer.php" ?>
        <br><br><br>

    </div>
    
   

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
                        // setTimeout(updateOdometer, 2000);
                        setTimeout(startOdometerAnimation, 2000);
                    }
                }
            });
        }, 3000); // Refresh every 10 seconds
    </script>
    <script>
        window.onload = function() {
            // Retrieve the stored scroll position from session storage
            var scrollPosition = sessionStorage.getItem('scrollPosition');

            // Scroll to the stored position
            window.scrollTo(0, scrollPosition);

            // Clear the stored scroll position
            sessionStorage.removeItem('scrollPosition');
        };
    </script>
</body>

</html>