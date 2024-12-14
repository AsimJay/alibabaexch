<?php include "userAuth.php"; ?>
<?php include "./admin/connect.php"; ?>
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
<html>

<head>
    <title>Second Digit</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./css/index.css">
    <link rel="icon" href="./img/favicon.ico" type="image/x-icon">
</head>

<body>
    <style>
        body {
            color: rgb(85, 49, 144);
            background: #f6f6f6;
            /* background: rgb(85, 49, 144);
            background: radial-gradient(circle, rgba(85, 49, 144, 1) 0%, rgba(98, 49, 144, 1) 100%); */
        }

        .numbersContainer {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
        }

        .numberCard {
            width: 158px;
            height: 238px;
            background: #fff;
            border-radius: 22px;
            display: flex;
            flex-direction: column;
            align-items: center;
            /* Center vertically */
            justify-content: center;
            /* Center horizontally */
            transition: all .2s ease-out;
            color: #573392;
            cursor: pointer;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
            margin: 1rem;
        }

        .numberCard:hover {
            /* scale: 1.05; */
            /* background-color: #573392; */
            background-color: #fff;
            /* border: 2px solid #fff; */
        }

        .numberCard:hover .numberHeading {
            color: #fff;
            text-shadow: 2px 2px 0 #573392, -2px 2px 0 #573392, 2px -2px 0 #573392, -2px -2px 0 #573392;
        }

        .numberHeading {
            font-family: 'Kanit';
            font-style: normal;
            font-weight: 700;
            font-size: 6.25rem;
            transition: all .08s linear;
        }

        .amount {
            font-family: 'Kanit';
        }

        .date {
            max-width: 9rem;
            text-align: center;
        }
    </style>
    <?php include "nav.php"; ?>
    <?php include "popup.php"; ?>
    <br>
    <h1 style="font-weight: bold;">Purchase Second Digit</h1>
    <div class="numbersContainer container" id="numberContainer">
        <!-- <div class="numberCard ">
            <h1 class="numberHeading">01</h1>
        </div> -->
    </div>

    <h1 class="text-center mt-5 font-weight-bold">Second Digit Purchased Numbers</h1>
    <div class="container numbersContainer">
        <?php
        $sql = "SELECT * FROM secondbiddetails WHERE user_id = $userID";
        $result = mysqli_query($con, $sql);

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
                    <h1 class="numberHeading"><?php echo $bidNumber; ?></h1>
                    <h5 class="amount mt-2"><?php echo $bidAmount; ?> PKR</h5>
                    <p class="date "><?php echo $formattedBidDate; ?></p>
                </div>
        <?php
            }
        } else {
            echo "No bids found for the user.";
        }
        ?>
    </div>

    <script>
        printCards();

        function printCards() {
            let numContainer = document.getElementById("numberContainer");
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
            // console.log('secondDigitMinus.php?userId=' + id + '&amount=' + amount + '&number=' + number);
            var xhr = new XMLHttpRequest();
            xhr.open('GET', 'secondDigitMinus.php?userId=' + id + '&amount=' + amount + '&number=' + number, true);
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

</html>