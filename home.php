<?php include "userAuth.php"; 


// $gameDatabases = array( "asmitixc_game1-0", "asmitixc_lottery_web", "asmitixc_game1","asmitixc_game1-3", "asmitixc_game1-4", "asmitixc_game2", "asmitixc_game3", "asmitixc_game3-0", "asmitixc_game3-1", "asmitixc_game3-2", "asmitixc_game3-3", "asmitixc_game3-4", "asmitixc_game4", "asmitixc_game4-0", "asmitixc_game4-1", "asmitixc_game4-2", "asmitixc_game4-3", "asmitixc_game4-4", "asmitixc_game5", "asmitixc_game6", "asmitixc_game7", "asmitixc_game8", "asmitixc_game8-0", "asmitixc_game8-4");


// $formattedTimes = array();

// foreach ($gameDatabases as $gameDatabase) {
//     $con= new mysqli('localhost','root','',$gameDatabase); 

//     $sql = "SELECT * FROM input_time WHERE id = 1";
//     $result = mysqli_query($con, $sql);
//     $row = mysqli_fetch_assoc($result);
//     $inputTime = $row['time'];

//     // Format the time in a way JavaScript can parse
//     $inputTimeFormatted = date('H:i:s', strtotime($inputTime));
//     //Convert to 12 Hour
//     $twTime = convertTo12HourFormat($inputTimeFormatted);
//     // echo $twTime;
//     // Store the formatted time in the array
//     $formattedTimes[$gameDatabase] = $twTime;

// }

?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="./css/index.css">
    <link rel="icon" href="./img/favicon.ico" type="image/x-icon">

    <title>Alibaba Exchange</title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Kanit:wght@100;400&display=swap');
    
    .time {
        margin-top: 0;
        /* margin-bottom: 1rem; */
        color: #fff;
        font-size: 24px;
        text-decoration: none; /* Remove underline */
    }
    
    .time :hover {
        text-decoration: none; /* Remove underline even on hover */
    }
        
    .gameCard {
        width: 200px;
        height: 200px;
        /* border: 2px solid red; */
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 15px;
        color: #000;
        margin: 30px;
        padding: 50px;
        width: auto;
        position: relative;
        box-shadow: rgba(0, 0, 0, 0.2) 0px 20px 30px;
        transition: all .3s ease-in-out;
    }

    .gameCard:hover {
        transform: translateY(-20px);
        box-shadow: rgba(0, 0, 0, 0.4) 0px 30px 90px;
    }

    .gameHeading {
        color: #fff;
        /* position: absolute; */
        /* bottom: 1rem; */
        /* left: 2rem; */
        font-size: 1.5rem;
    }

    .contaiener {
        position: relative;
        font-family: 'Poppins';
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        margin: auto;
    }
</style>

<body>

    <?php include "nav.php"; ?>
    <br><br>
    <div class="contaiener">
        <!-- Kainchi -->
        <a href="./kainchi.php" class="gameLink">
            <div class="gameCard" style="background-color: #573392;">
                <h1 class="gameHeading">Kainchi</h1>
            </div>
        </a>
        <a href="./multiDigit.php" class="gameLink">
            <div class="gameCard" style="background-color: #573392;">
                <h1 class="gameHeading">Multi Digit</h1>
            </div>
        </a>
        <a href="./multiOpen.php" class="gameLink">
            <div class="gameCard" style="background-color: #573392;">
                <h1 class="gameHeading">Multi Open</h1>
            </div>
        </a>
        <a href="./multiClose.php" class="gameLink">
            <div class="gameCard" style="background-color: #573392;">
                <h1 class="gameHeading">Multi Close</h1>
            </div>
        </a>
        <a href="./games.php" class="gameLink">
            <div class="gameCard" style="background-color: #573392;">
                <h1 class="gameHeading">All Games</h1>
            </div>
        </a>
    </div>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>