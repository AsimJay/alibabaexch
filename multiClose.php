<?php include "userAuth.php"; 

$games = [
    "u423067381_game1_0" => "Alibaba",
    "u423067381_game1" => "Alibaba-1",
    "u423067381_game2" => "Alibaba-2",
    "u423067381_game1_3" => "Alibaba-3",
    "u423067381_game1_4" => "Alibaba-4",
    "u423067381_game3" => "Ak",
    "u423067381_game3_1" => "Ak-1",
    "u423067381_game3_2" => "Ak-2",
    "u423067381_game3_3" => "Ak-3",
    "u423067381_game3_4" => "Ak-4",
    "u423067381_game4_0" => "OYO Tv",
    "u423067381_game4" => "Gm",
    "u423067381_game4_1" => "Gm-1",
    "u423067381_game4_2" => "Gm-2",
    "u423067381_game4_3" => "Gm-3",
    "u423067381_game4_4" => "Gm-4",
    "u423067381_game8_0" => "OLA Tv",
    "u423067381_game8" => "Ls",
    "u423067381_game5" => "Ls-1",
    "u423067381_game6" => "Ls-2",
    "u423067381_game7" => "Ls-3",
    "u423067381_game8_4" => "Ls-4"
];

// if (isset($_GET['g'])) {
//     $game = $_GET['g'];
// }
$newBalance = 0;
if(isset($_GET['b'])) {
    $newBalance = $_GET['b'];
}
$msgCode = array(
    1 => "Successfully purchased the numbers. ",
    2 => "Market Suspended.",
    3 => "Insufficient Balance. Please recharge your account.",
    4 => "Unable to bid.",
    5 => "New Balance: $newBalance",
    6 => "Bid Limit Exceed",
);

if (isset($_GET['m'])) {
    $m = $_GET['m'];
    $message = $msgCode[$m];
    if(isset($_GET['b']) && $m == 1){
        $message .= $msgCode[5];
    }
    echo '<script>alert("' . $message . '")</script>';
    redirect();
}

function redirect(){
    if (isset($_GET['gameDB'])){
        $gameDB = $_GET['gameDB'];
        $gameDB = 'u423067381_' . $gameDB;
    //     echo "<script>
    //     setTimeout(function() { 
    //         window.location.href = 'https://" . $_SERVER['HTTP_HOST'] . "/multiClose.php/?gameData=" . $gameDB . "';
    //     }, 0);
    //   </script>";

    }
}

?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./css/index.css">
        <link rel="stylesheet" href="./bid_styles.css">
    <link rel="icon" href="./img/favicon.ico" type="image/x-icon">

    <title>Alibaba Exchange - Multi Close</title>
</head>
<body>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Kanit:wght@100;400&display=swap');
    body {
        background-color: #f7f7f7e3;
    }
    /* .container{
        padding: 3rem;
        margin: auto;
        width: 50%;
        padding: 10px;
        width: 30vw;
    } */
    .form-container {
        color: #000;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        padding: 20px;
        display: block;
        margin-left: auto;
        margin-right: auto;
        width: 30vw;
    }
    input[type="text"],
    input[type="number"],
    select,
    .kBtn {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .kBtn {
        background-color: #3a1e56d6;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .kBtn:hover{
        background-color: #3a1e56;
        color: #fff;
    }
    .display{
        text-align: left;
    }
    #digitsInput{
        letter-spacing: 1px;
    }
    @media screen and (max-width: 1200px) {
        .container {
            left: 0;
            padding: 1rem;
            width: auto;
        }
        .form-container{
            width: auto;
        }
    }
    .game-container {
            display: flex;
            overflow-x: auto;
            white-space: nowrap;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            gap: 10px;
            scroll-behavior: smooth;
        }
        .game-button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            white-space: nowrap;
        }
        .game-button:hover {
            background-color: #0056b3;
        }
    </style>
    <?php include "kNav.php"; ?>
    <?php
    $id_json = json_encode($id); // Encode $id as JSON
    echo "<script>var id = $id_json;</script>";
    ?>
    <br><br>
    <div class="container">
        <div class="form-container">
        <h1>Multi Close</h1>
        <form id="form">
            <select id="game" required>
                <option value="" disabled selected>Select Game</option>
                <?php
                if (isset($_GET['gameData'])){
                    $game = $_GET['gameData'];
                    echo "<option value=". $game ." selected>". $games[$game] ."</option>";
                }
                ?>
                <option value="u423067381_game1_0">Alibaba</option>
                <!-- <option value="=u423067381_lottery_web">Alibaba Exchange</option> -->
                <option value="u423067381_game1">Alibaba-1</option>
                <option value="u423067381_game2">Alibaba-2</option>
                <option value="u423067381_game1_3">Alibaba-3</option>
                <option value="u423067381_game1_4">Alibaba-4</option>
                <option value="u423067381_game3">Ak</option>
                <!-- <option value="u423067381_game3-0">Ak Close</option> -->
                <option value="u423067381_game3_1">Ak-1</option>
                <option value="u423067381_game3_2">Ak-2</option>
                <option value="u423067381_game3_3">Ak-3</option>
                <option value="u423067381_game3_4">Ak-4</option>
                <option value="u423067381_game4_0">OYO Tv</option>
                <option value="u423067381_game4">Gm</option>
                <option value="u423067381_game4_1">Gm-1</option>
                <option value="u423067381_game4_2">Gm-2</option>
                <option value="u423067381_game4_3">Gm-3</option>
                <option value="u423067381_game4_4">Gm-4</option>
                <option value="u423067381_game8_0">OLA Tv</option>
                <option value="u423067381_game8">Ls</option>
                <option value="u423067381_game5">Ls-1</option>
                <option value="u423067381_game6">Ls-2</option>
                <option value="u423067381_game7">Ls-3</option>
                <option value="u423067381_game8_4">Ls-4</option>
            </select>
            <input type="text" id="digitsInput" inputmode="numeric" placeholder="Enter Digits Separated by Comma (1, 2, 3, 4)" required>
            <input type="number" id="price" inputmode="numeric" pattern="[0-9]*" placeholder="Enter Price" min=5 required>
            <button type="submit" class="kBtn">Calculate</button>
            <div class="display">
                <p id="gameDisplay"></p>
                <p id="digits"></p>
                <p id="amountDisplay"></p>
                <p id="total"></p>
                <p id="totalAmount"></p>
            </div>
        </form>
        </div>
    </div>
    <div class="game-container" id="gameContainer">
        <!-- Buttons will be added dynamically here -->
    </div>
    <?php 
    if (isset($_GET['gameData'])){
        $game = $_GET['gameData'];
        $gameName = $games[$game] ?? "Unknown Game";
        ?>
        <h1 class="mt-3 subHeading2"><?php echo htmlspecialchars($gameName); ?></h1>
        <?php
        include "./bidNumbers.php";
    }else{
        $game = 'u423067381_game1';
        ?>
        <h1 class="mt-3 subHeading2">Alibaba-1</h1>
        <?php
        include "./bidNumbers.php";

    }
    
    ?>
    <script>
       // Controlling the Digit Inputs
        document.getElementById('digitsInput').addEventListener('input', function(event) {
            const input = event.target.value;
            const sanitizedInput = input.replace(/[^0-9]/g, ''); // Remove non-digit characters
            const formattedInput = formatInput(sanitizedInput); // Format input with commas after each digit
            event.target.value = formattedInput; // Update the input field value
        });

        // Add comma after every digit
        function formatInput(input) {
            return input.split('').join(','); // Add comma after each digit
        }




        document.addEventListener('DOMContentLoaded', function () {
        document.getElementById('form').addEventListener('submit', function (event) {
            event.preventDefault();
            let game = document.getElementById('game')
            let digits = document.getElementById('digitsInput');
            let price = document.getElementById('price');
            let combo = seperateDigits();
            console.log(combo);

            let msg = document.getElementById('msg');
            let gameDisplay = document.getElementById('gameDisplay');
            let para = document.getElementById('digits');
            let amountDisplay = document.getElementById('amountDisplay');
            let totalPara = document.getElementById('total');
            let totalAmount = document.getElementById('totalAmount');

            // Filling up Values
            gameDisplay.textContent = "Game: " + game.options[game.selectedIndex].text;
            para.textContent = "";
            amountDisplay.textContent = "Price: Rs. " + price.value;
            let totalPrice =  price.value * combo.length;
            totalAmount.textContent = "Total Amount: Rs. " + formatPrice(totalPrice);
            totalPara.textContent = "";
            totalPara.textContent = "Total Digits: " + combo.length;
            for (var i = 0; i < combo.length; i++) {
                // Create a text node containing the current array element
                var textNode = document.createTextNode(combo[i]);
                // Append the text node to the <p> element
                para.appendChild(textNode);
                // Add a comma after each element, except the last one
                if (i < combo.length - 1) {
                    para.appendChild(document.createTextNode(", "));
                }
            }
            // alert(combo);
            // alert("All possible combinations for number " + number.value + ' : ' + combo + ".\nAmount: " + price.value);
            let purchaseBtn = document.createElement('a');
            purchaseBtn.href = generateURL(id, game, combo, price);
            purchaseBtn.textContent = 'Purchase';
            purchaseBtn.className = 'kBtn btn';
            purchaseBtn.id = 'purchaseBtn';
            // Checking if previous btn/a is there and if is then delete
            let existingPurchaseBtn = document.getElementById('purchaseBtn');
            if (existingPurchaseBtn) {
                existingPurchaseBtn.remove();
            }
            let displayDiv = document.getElementsByClassName('display')[0];
            displayDiv.appendChild(purchaseBtn)
          });
      });

    function seperateDigits() {
        const input = document.getElementById('digitsInput').value;
        const numbers = input.split(',').map(num => parseInt(num.trim(), 10));
        const validNumbers = numbers.filter(num => !isNaN(num) && num >= 0 && num <= 99);
        return validNumbers;
    }
      function generateCombinations(number) {
        let arrayOfDigits = number.toString().split('').map(Number);
        let combinations = [];
        // console.log(arrayOfDigits); // Output: [1, 2, 3, 4, 5]

        for (let i = 0; i < arrayOfDigits.length; i++) {
          for (let j = 0; j < arrayOfDigits.length; j++) {
            if (i != j) {
              let combination = ' ' + arrayOfDigits[i] + arrayOfDigits[j];
              combinations.push(parseInt(combination));
            }
          }
        }
        return combinations;
      }

      function formatPrice(price) {
        var priceStr = price.toString();
        var parts = priceStr.split(".");
        var integerPart = parts[0];
        var decimalPart = parts.length > 1 ? "." + parts[1] : "";
        var formattedIntegerPart = "";
        for (var i = integerPart.length - 1, j = 1; i >= 0; i--, j++) {
            formattedIntegerPart = integerPart[i] + formattedIntegerPart;
            if (j % 3 === 0 && i !== 0) {
                formattedIntegerPart = "," + formattedIntegerPart;
            }
        }

        // Combine the formatted integer part and the decimal part
        return formattedIntegerPart + decimalPart;
    }

    function generateURL(id, game, digits, price){
        let URL = "cTransaction.php?userID=" + encodeURIComponent(id) +"&game=" + encodeURIComponent(game.value) + "&number=" + encodeURIComponent(digits) + "&price=" + encodeURIComponent(price.value);
        return URL;
    }
    </script>
    <script>
          // Game Data
        const games = [
            { name: "Alibaba", value: "u423067381_game1_0" },
            { name: "Alibaba-1", value: "u423067381_game1" },
            { name: "Alibaba-2", value: "u423067381_game2" },
            { name: "Alibaba-3", value: "u423067381_game1_3" },
            { name: "Alibaba-4", value: "u423067381_game1_4" },
            { name: "Ak", value: "u423067381_game3" },
            { name: "Ak-1", value: "u423067381_game3_1" },
            { name: "Ak-2", value: "u423067381_game3_2" },
            { name: "Ak-3", value: "u423067381_game3_3" },
            { name: "Ak-4", value: "u423067381_game3_4" },
            { name: "OYO Tv", value: "u423067381_game4_0" },
            { name: "Gm", value: "u423067381_game4" },
            { name: "Gm-1", value: "u423067381_game4_1" },
            { name: "Gm-2", value: "u423067381_game4_2" },
            { name: "Gm-3", value: "u423067381_game4_3" },
            { name: "Gm-4", value: "u423067381_game4_4" },
            { name: "OLA Tv", value: "u423067381_game8_0" },
            { name: "Ls", value: "u423067381_game8" },
            { name: "Ls-1", value: "u423067381_game5" },
            { name: "Ls-2", value: "u423067381_game6" },
            { name: "Ls-3", value: "u423067381_game7" },
            { name: "Ls-4", value: "u423067381_game8_4" }
        ];

        // Container
        const container = document.getElementById("gameContainer");

        // Populate Games
        games.forEach(game => {
            const link = document.createElement("a");
            link.className = "game-button";
            link.textContent = game.name;
            link.href = `/multiClose.php?gameData=${game.value}`; // Replace '/your-script.php' with your PHP file path
            container.appendChild(link);
        });
    </script>
</body>