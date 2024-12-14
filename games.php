<?php include "userAuth.php"; 
date_default_timezone_set('Asia/Karachi');
function convertTo12HourFormat($time24hr) {
    // Create a DateTime object from the input time string
    $time24 = DateTime::createFromFormat('H:i:s', $time24hr);

    // Check if DateTime creation was successful
    if ($time24 === false) {
        return "Invalid time format";
    }

    // Get hours and minutes
    $hours24 = $time24->format('G');
    $minutes = $time24->format('i');

    // Determine AM or PM
    $meridiem = $hours24 >= 12 ? 'PM' : 'AM';

    // Convert hours to 12-hour format
    $hours12 = ($hours24 % 12) ?: 12;

    // Format the result
    $time12hr = "$hours12:$minutes $meridiem";

    return $time12hr;
}



$gameDatabases = array( "asmitixc_game1-0", "asmitixc_lottery_web", "asmitixc_game1","asmitixc_game1-3", "asmitixc_game1-4", "asmitixc_game2", "asmitixc_game3", "asmitixc_game3-0", "asmitixc_game3-1", "asmitixc_game3-2", "asmitixc_game3-3", "asmitixc_game3-4", "asmitixc_game4", "asmitixc_game4-0", "asmitixc_game4-1", "asmitixc_game4-2", "asmitixc_game4-3", "asmitixc_game4-4", "asmitixc_game5", "asmitixc_game6", "asmitixc_game7", "asmitixc_game8", "asmitixc_game8-0", "asmitixc_game8-4");


$formattedTimes = array();

foreach ($gameDatabases as $gameDatabase) {
    $con= new mysqli('localhost','asmitixc_asim','R;I6u]![&R@y',$gameDatabase); 

    $sql = "SELECT * FROM input_time WHERE id = 1";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_assoc($result);
    $inputTime = $row['time'];

    // Format the time in a way JavaScript can parse
    $inputTimeFormatted = date('H:i:s', strtotime($inputTime));
    //Convert to 12 Hour
    $twTime = convertTo12HourFormat($inputTimeFormatted);
    // echo $twTime;
    // Store the formatted time in the array
    $formattedTimes[$gameDatabase] = $twTime;

}

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
        border-radius: 15px;
        color: #000;
        margin: 30px;
        padding: 50px;
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
        position: absolute;
        bottom: 1rem;
        left: 2rem;
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
        <a href="./game1-0/game.php" class="gameLink">
            <div class="gameCard" style="background-color: #573392;">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game1_0'] ?></p>
                <h1 class="gameHeading">Alibaba</h1>
            </div>
        </a>
        <!--<a href="./index.php" class="gameLink">-->
        <!--    <div class="gameCard" style="background-color: #573392;">-->
        <!--    <p class="time" id="game1"><?php echo $formattedTimes['asmitixc_lottery_web'] ?></p>-->
        <!--        <h1 class="gameHeading">Alibaba</h1>-->
        <!--    </div>-->
        <!--</a>-->
        <a href="./game1/game.php" class="gameLink">
            <div class="gameCard" style="background-color: #573392;">
            <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game1'] ?></p>
                <h1 class="gameHeading">AliBaba-1</h1>
            </div>
        </a>
        <a href="./game2/game.php" class="gameLink">
            <div class="gameCard" style="background-color: #573392;">
            <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game2'] ?></p>
                <h1 class="gameHeading">AliBaba-2</h1>
            </div>
        </a>
        <a href="./game1-3/game.php" class="gameLink">
            <div class="gameCard" style="background-color: #573392;">
            <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game1_3'] ?></p>
                <h1 class="gameHeading">AliBaba-3</h1>
            </div>
        </a>
        <a href="./game1-4/game.php" class="gameLink">
            <div class="gameCard" style="background-color: #573392;">
            <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game1_4'] ?></p>
                <h1 class="gameHeading">AliBaba-4</h1>
            </div>
        </a>

        <a href="./game3/game.php" class="gameLink">
            <div class="gameCard bg-info">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game3'] ?></p>
                <h1 class="gameHeading">Ak</h1>
            </div>
        </a>
        <a href="./game3-0/game.php" class="gameLink">
            <div class="gameCard bg-info">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game3_0'] ?></p>
                <h1 class="gameHeading">Ak Close</h1>
            </div>
        </a>
        <a href="./game3-1/game.php" class="gameLink">
            <div class="gameCard bg-info">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game3_1'] ?></p>
                <h1 class="gameHeading">Ak-1</h1>
            </div>
        </a>
        <a href="./game3-2/game.php" class="gameLink">
            <div class="gameCard bg-info">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game3_2'] ?></p>
                <h1 class="gameHeading">Ak-2</h1>
            </div>
        </a>
        <a href="./game3-3/game.php" class="gameLink">
            <div class="gameCard bg-info">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game3_3'] ?></p>
                <h1 class="gameHeading">Ak-3</h1>
            </div>
        </a>
        <a href="./game3-4/game.php" class="gameLink">
            <div class="gameCard bg-info">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game3_4'] ?></p>
                <h1 class="gameHeading">Ak-4</h1>
            </div>
        </a>

        <a href="./game4-0/game.php" class="gameLink">
            <div class="gameCard bg-success">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game4_0'] ?></p>
                <h1 class="gameHeading">OYO Tv</h1>
            </div>
        </a>
        <a href="./game4/game.php" class="gameLink">
            <div class="gameCard bg-success">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game4'] ?></p>
                <h1 class="gameHeading">Gm</h1>
            </div>
        </a>
        <a href="./game4-1/game.php" class="gameLink">
            <div class="gameCard bg-success">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game4_1'] ?></p>
                <h1 class="gameHeading">Gm-1</h1>
            </div>
        </a>
        <a href="./game4-2/game.php" class="gameLink">
            <div class="gameCard bg-success">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game4_2'] ?></p>
                <h1 class="gameHeading">Gm-2</h1>
            </div>
        </a>
        <a href="./game4-3/game.php" class="gameLink">
            <div class="gameCard bg-success">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game4_3'] ?></p>
                <h1 class="gameHeading">Gm-3</h1>
            </div>
        </a>
        <a href="./game4-4/game.php" class="gameLink">
            <div class="gameCard bg-success">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game4_4'] ?></p>
                <h1 class="gameHeading">Gm-4</h1>
            </div>
        </a>
        
        <a href="./game8/game.php" class="gameLink">
            <div class="gameCard bg-danger">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game8'] ?></p>
                <h1 class="gameHeading">Ls</h1>
            </div>
        </a>
        
        <a href="./game8-0/game.php" class="gameLink">
            <div class="gameCard bg-danger">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game8_0'] ?></p>
                <h1 class="gameHeading">OLA Tv</h1>
            </div>
        </a>

        <a href="./game5/game.php" class="gameLink">
            <div class="gameCard bg-danger">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game5'] ?></p>
                <h1 class="gameHeading">Ls-1</h1>
            </div>
        </a>

        <a href="./game6/game.php" class="gameLink">
            <div class="gameCard bg-danger">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game6'] ?></p>
                <h1 class="gameHeading">Ls-2</h1>
            </div>
        </a>

        <a href="./game7/game.php" class="gameLink">
            <div class="gameCard bg-danger">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game7'] ?></p>
                <h1 class="gameHeading">Ls-3</h1>
            </div>
        </a>

        <a href="./game8-4/game.php" class="gameLink">
            <div class="gameCard bg-danger">
                <p class="time" id="game1"><?php echo $formattedTimes['u423067381_game8_4'] ?></p>
                <h1 class="gameHeading">Ls-4</h1>
            </div>
        </a>
    </div>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>