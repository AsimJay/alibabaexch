<?php include "userAuth.php"; ?>
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

<body>
    <?php include "nav.php"; ?>

    <div class="hero">
        <div class="container textContainer">
            <h1 class="text glow">PICK YOUR LUCKY NUMBER</h1>
            <h4 class="text subHeading">The Ultimate Lottery Experience</h4>
            <a href="#numberContainer" class="btn btn-light mt-3">Pick A Number</a>
        </div>

        <!-- <div class="custom-shape-divider-bottom-1683725366">
            <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                <path d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V0H0V27.35A600.21,600.21,0,0,0,321.39,56.44Z" class="shape-fill"></path>
            </svg>
        </div> -->
    </div>

    <?php include "numberSelector.php" ?>
    <?php include "timer.php" ?>
    <?php include "popup.php" ?>
    <br><br><br>



    <section class="section1">
        <div class="container">
            <h2 class="heading2">Number Bank</h2>
            <p class="subHeading2">Pick any number you want</p>
            <div class="numbersContainer myContainer" id="numberContainer">

                <!-- <div class="numberCard ">
                        <h1 class="numberHeading">01</h1>
                    </div> -->

            </div>
        </div>
    </section>










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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        let numContainer = document.getElementById("numberContainer");
        let balance = document.getElementById("balance").innerText;
        let id = 0;
        let amount = 0;

        for (let i = 0; i <= 99; i++) {
            const divElement = document.createElement('div');
            divElement.className = 'numberCard';
            divElement.id = i; // Set a unique ID for each div element
            const h1Element = document.createElement('h1');
            h1Element.className = 'numberHeading';
            h1Element.textContent = String(i).padStart(2, '0'); // Add leading zeros using padStart()
            divElement.appendChild(h1Element);

            divElement.onclick = function() {
                // Handle the click event for the div element
                let popup = document.getElementById('popupContainer');
                popup.classList.remove('hidePopup');

                let number = document.getElementById('number');
                number.value = parseInt(this.innerText, 10);
                let initialBidNumber = parseInt(this.innerText, 10);

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
                    var flag = 0;
                    var bidNumber = document.getElementById('number');
                    var number = parseInt(bidNumber.value, 10);
                    
                    if (number > 99 || number < 1 ) {
                        alert("Please choose a number between 01-99");
                        event.preventDefault();
                        // bidNumber.value = initialBidNumber;
                        bidNumber.value =
                         (number / 10);
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
                    if(!document.getElementById('number').value){
                        alert("Please Enter a Valid Bid Number.");
                        bidNumber.value = 1;
                    }
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
            };

            numContainer.appendChild(divElement);
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
            xhr.open('GET', 'minusAmount.php?userId=' + id + '&amount=' + amount + '&number=' + number, true);

            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    // The request has been completed successfully
                    // You can perform any additional actions here if needed
                    var response = JSON.parse(xhr.responseText);
                    console.log(response);
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

    <!-- <script src="./index.js"></script> -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="./jquery.js"></script>

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
                        // console.log("success");
                        // setTimeout(updateOdometer, 2000);
                        setTimeout(startOdometerAnimation, 2000);
                    }
                }
            });
        }, 3000); // Refresh every 10 seconds
    </script>
</body>

</html>