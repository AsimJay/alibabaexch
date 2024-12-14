<?php 
$con= new mysqli('localhost','u423067381_lottery_web','Asim123$', 'u423067381_lottery_web'); 
// $con= new mysqli('localhost','root','','lottery_web'); 
// date_default_timezone_set('Asia/Karachi'); // Set to Pakistani timezone
?>

<script>
    // Flag to control purchasing status
    var isPurchasingDisabled = true; // Set to true to disable purchasing

    // Wait for the document to fully load
    document.addEventListener('DOMContentLoaded', function() {
        if (isPurchasingDisabled) {
            // Disable the click event on all number cards
            const numberCards = document.querySelectorAll('.numberCard');
            numberCards.forEach(card => {
                card.onclick = function() {
                    alert("Please purchase from the book.");
                    return false; // Prevent the popup from opening
                };
            });

            // Disable purchase button functionality if available
            const purchaseBtn = document.getElementById('purchaseButton');
            if (purchaseBtn) {
                purchaseBtn.disabled = true; // Disable the purchase button
                purchaseBtn.onclick = function(event) {
                    alert("Please purchase from the book.");
                    event.preventDefault(); // Prevent the default action
                };
            }

            // If you want to handle any other events related to purchase (like amount input, etc.):
            const amountInputs = document.querySelectorAll('#amountInput');
            amountInputs.forEach(input => {
                input.disabled = true; // Optionally, disable the input field
            });
        }
    });
</script>
