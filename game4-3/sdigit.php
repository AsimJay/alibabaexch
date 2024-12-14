<?php include "userAuth.php"; ?>
<?php include "../admin/connect.php"; ?>
<?php
$userName = $_SESSION['username'];
$sql = "SELECT * FROM users WHERE username = '$userName';";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$userID = $row['id'];
// Fetch data from the database for the specific user
// $sql = "SELECT * FROM biddetails WHERE user_id = '1'";
// $result = mysqli_query($con, $sql);
// if ($result === false) {
//     echo "Error: " . $con->error;
//     exit;
// }

// $row = mysqli_fetch_assoc($result);
// print_r($row);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <link rel="stylesheet" href="game.css">
    <link rel="icon" href="./img/favicon.ico" type="image/x-icon">

    <title>Gm 3</title>
</head>

<body>
    <?php include "nav.php"; ?>
    <?php include "popup.php"; ?>
    <h2 class="heading2 text-center">Gm 3</h2>
    <br>
    <div class="">
        <div class="btn-group btn-group-toggle mb-3 d-flex justify-content-center">
           <a class="btn btn-primary" id="numberBtn" href="2digit.php">
                <input type="radio"> Double
            </a>
            <a class="btn btn-primary" id="numberBtn" href="fdigit.php">
                <input type="radio"> Open
            </a>
            <a class="btn btn-primary active" id="numberBtn" href="sdigit.php">
                <input type="radio"> Close
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <section class="section1 text-center">
                <div class="container">
                    <!-- <p class="subHeading2">Second Digit Numbers</p> -->
                    <div class="numbersContainer container" id="sdnumberContainer">
                        <!-- <div class="numberCard ">
            <h1 class="numberHeading">01</h1>
        </div> -->
                    </div>
                </div>
            </section>
        </div>
        <div class="col">
            <h1 class="text-center mt-5 font-weight-bold subHeading2">Second Digit Purchased Numbers</h1>
            <div class="container numbersContainer">
                <?php
                // $gameCon = new mysqli('localhost', 'root', '', 'game4');
                $gameCon= new mysqli('localhost', 'u423067381_game4_3', 'Asim123$', 'u423067381_game4_3');
                $sql = "SELECT * FROM secondbiddetails WHERE user_id = $userID";
                $result = mysqli_query($gameCon, $sql);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $bidNumber = $row["bid_number"];
                        $bidAmount = $row["bid_amount"];
                        $bidDate = $row["bid_date"];

                        $dateTime = new DateTime($bidDate);
                        $formattedBidDate = $dateTime->format("d-m-Y H:i:s");
                        // Convert single-digit numbers to two-digit numbers
                        // $formattedBidNumber = sprintf("%02d", $bidNumber);
                ?>
                        <div class="numberCard mt-4">
                            <h1 class="numberHeading mt-2"><?php echo $bidNumber; ?></h1>
                            <h5 class="amount mt-1"><?php echo $bidAmount; ?> PKR</h5>
                            <p class="date "><?php echo $formattedBidDate; ?></p>
                        </div>
                <?php
                    }
                } else {
                    echo "No bids found for the user.";
                }
                ?>
            </div>
        </div>
    </div>



   <!-- sdigit -->
   <script>
        printCards();

        function printCards() {
            let numContainer = document.getElementById("sdnumberContainer");
            for (let i = 0; i <= 9; i++) {
                const divElement = document.createElement('div');
                divElement.className = 'numberCard';
                divElement.id = i; // Set a unique ID for each div element
                const h1Element = document.createElement('h1');
                h1Element.className = 'numberHeading';
                h1Element.textContent = i;
                divElement.appendChild(h1Element);

                divElement.onclick = function() {

                    // Handle the click event for the div element
                    let popup = document.getElementById('popupContainer');
                    popup.classList.remove('hidePopup');

                    let number = document.getElementById('number');
                    number.value = parseInt(this.innerText, 10);

                    let displayBalance = document.getElementById('displayBalance');

                    let amountInput = document.getElementById('amountInput');
                    amountInput.focus();
                    amountInput.setAttribute('max', parseInt(balance)); // Set maximum value to 100;
                    amountInput.addEventListener('keydown', function(event) {
                        if (event.keyCode === 13) { // Enter key
                            event.preventDefault(); // Prevent form submission (if any)
                            document.getElementById('purchaseButton').click(); // Trigger the button click event
                        }
                    });

                    function handleAmountChange() {
                        var flag = 0;
                        var amountInput = document.getElementById('amountInput');
                        var displayBalance = document.getElementById('balance');
                        var purchaseButton = document.getElementById('purchaseButton');
                        var amount = parseInt(amountInput.value, 10);
                        var bal = parseInt(displayBalance.innerText, 10);

                        if (bal < 5) {
                            alert('Please recharge your account.');
                            purchaseButton.disabled = true;
                        } else {
                            if (amount >= 5 && amount !== 0 && amount < bal) {
                                purchaseButton.disabled = false;
                            } else {
                                purchaseButton.disabled = true;
                            }
                        }

                        var updatedBal = bal - amount;
                        if (updatedBal < 0) {
                            updatedBal = 0;
                        }
                    }

                    function handleBidNumberChange() {
                    var bidNumber = document.getElementById('number');
                    var number = parseInt(bidNumber.value, 10);
                    
                    if (number > 9 || number < 1 ) {
                        alert("Please choose a number between 01-99");
                        event.preventDefault();
                        // bidNumber.value = initialBidNumber;
                        bidNumber.value = (number / 10);
                    }
                }

                
                amountInput.addEventListener('change', handleAmountChange);
                amountInput.addEventListener('input', handleAmountChange);
                number.addEventListener('change', handleBidNumberChange);
                number.addEventListener('input', handleBidNumberChange);

                    let purchaseBtn = document.getElementById('purchaseButton');
                    purchaseBtn.onclick = function() {
                        // preventDefault;
                        // Call the checkout function and pass the number/id
                        let amountFC = document.getElementById('amountInput');
                        if (parseInt(amountFC.value) > parseInt(balance) || parseInt(amountFC.value) < 0 || parseInt(amountFC.value) < 5 || parseInt(amountFC.value) == 0) {
                            // alert(amountFC.value);
                            // alert("Insufficiant Balance");
                            event.preventDefault();
                            var errorMessage = "Insufficient Balance, Please recharge your account.";
                            document.getElementById("error-message").textContent = errorMessage;
                        } else {
                            checkout(number.value);
                        }
                    };

                }
                numContainer.appendChild(divElement);
            }
        }

        function checkout(number) {
            let id = <?php echo $id ?>;
            let amount = document.getElementById('amountInput').value; // Get the value of the input field
            let amountInt = parseInt(amount, 10); // Convert the value to an integer
            // alert(amountInt);
            sessionStorage.setItem('scrollPosition', window.pageYOffset);
            // window.location.href = 'minusAmount.php?userId=' + id + '&amount=' + amount;
            minusAmountRequest(id, amount, number);

            // let newBal = balance.innerText - amountInt;
            // balance.innerHTML = newBal;
            // alert(newBal);
            document.getElementById("error-message").textContent = "";
            document.getElementById('amountInput').value = 0;
            hidePopup();
        }

        function minusAmountRequest(id, amount, number) {

            var xhr = new XMLHttpRequest();
            xhr.open('GET', 'transaction.php?userId=' + id + '&amount=' + amount + '&number=' + number + '&digit=1 ', true);

            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    // The request has been completed successfully
                    // You can perform any additional actions here if needed
                    var response = JSON.parse(xhr.responseText);

                    if (response.success) {
                        // Assuming the response includes the updated balance
                        var updatedBalance = response.updatedBalance;
                        // alert("new updated balance is " + updatedBalance);
                        // Update the user balance on the page
                        document.getElementById('balance').innerText = updatedBalance;
                        const formattedAmount = parseInt(amount).toLocaleString();
                        alert("Number Purchased. \nNumber:   " + number + "\nAmount:   " + formattedAmount + " PKR");
                        location.reload();
                    } else {
                        // Display an error message if the PHP script encountered an error
                        alert('Error: ' + response.message);
                    }
                }
            };

            xhr.send();

        }
    </script>
</body>