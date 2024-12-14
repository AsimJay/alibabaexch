<!-- popup -->
<?php include "userAuth.php"; ?>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Kanit:wght@100;400&display=swap');

    .popupContainer {
        position: fixed;
        top: 0;
        left: 0;
        width: 100vw;
        height: 100vh;
        background-color: #02020273;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: auto;
        z-index: 12;
    }

    #popupContent {
        color: #573392;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 50rem;
        border: 3px solid #573392;
        max-width: 34rem;
        height: 34rem;
        background: #fff;
        padding: 2rem;
        border-radius: 20px;
        position: relative;
    }

    /* #number {
        font-size: 5rem;
        margin: 10px;
        font-family: 'Poppins';
        font-weight: bold;
    } */
    .bidNumberInput{
        border: none;
        color: #573392;
        font-size: 5rem;
        text-align: center;
        font-weight: 500;
        width: 40%;
        margin: 10px auto;
        border-radius: 20px;
        border: 3px dashed;

    }

    #amountInput {
        height: 3rem;
        width: 20rem;
        font-size: 1.4rem;
    }

    #purchaseButton {
        width: 10rem;
        height: 3rem;
        font-size: 1.5rem;
    }

    .custom-btn {
        color: #fff;
        width: 10rem;
        font-size: 20px;
    }

    /* 
    .custom-btn:hover {
        background-color: #573392e3;
    } */

    .close-btn {
        position: absolute;
        top: 0.5rem;
        right: 0.5rem;
        background-color: transparent;
        border: none;
        color: #573392;
        font-size: 1.5rem;
        cursor: pointer;
    }

    .close-btn:hover {
        color: #ff0000;
        /* Change the color on hover if desired */
    }

    .quickAmountBtn {
        width: 5rem;
        font-size: 1.5rem;
        border-radius: 10px;
    }

    .quickAmount-btns {
        position: static;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: wrap;
        width: 500px;
    }
    .hidePopup{
        visibility: hidden;
    }
    @media (max-width: 768px) {
        #popupContent {
            width: 80%;
        }
        #amountInput {
        height: 2rem;
        width: 20%;
        font-size: .9rem;
        }
        #displayBalance{
            font-size: 12px;
        }
        .quickAmount-btns{
            width: 90%;
        }
        .quickAmountBtn{
            font-size: 20px;
            width: auto;
            text-align: center;
        }
        .bidNumberInput{
            font-size: 2rem;
        }
        .custom-btn, #purchaseButton{
            width: 6rem;
            font-size: 16px;
        }
    }
</style>

<div id="popupContainer" class="popupContainer hidePopup">
    <div id="popupContent">
    <input type="number" id="number" class="bidNumberInput" value="1" min="1" max="99">
        <!-- <h1 id="number">1</h1> -->
        <div class="input-group">
            <input type="number" class="form-control" id="amountInput" min="5" placeholder="Enter amount" on>
            <div class="input-group-append">
                <span class="input-group-text" id="displayBalance"> PKR </span>
            </div>
            <div class="input-group-append pt-2">
                <div id="error-message" style="color: red;"></div>
            </div>
        </div>

        <div class="input-group-append  quickAmount-btns mt-3">
            <button class="btn btn-secondary m-2 quickAmountBtn" onclick="quickAmount(20)">20</button>
            <button class="btn btn-secondary m-2 quickAmountBtn" onclick="quickAmount(30)">30</button>
            <button class="btn btn-secondary m-2 quickAmountBtn" onclick="quickAmount(40)">40</button>
            <button class="btn btn-secondary m-2 quickAmountBtn" onclick="quickAmount(50)">50</button>
            <button class="btn btn-secondary m-2 quickAmountBtn" onclick="quickAmount(60)">60</button>
            <button class="btn btn-secondary m-2 quickAmountBtn" onclick="quickAmount(70)">70</button>
            <button class="btn btn-secondary m-2 quickAmountBtn" onclick="quickAmount(80)">80</button>
            <button class="btn btn-secondary m-2 quickAmountBtn" onclick="quickAmount(90)">90</button>
            <button class="btn btn-secondary m-2 quickAmountBtn" onclick="quickAmount(100)">100</button>
        </div>
        <div class="input-group-append btn-group">
            <button class="btn custom-btn btn-danger m-2" onclick="hidePopup()">Close</button>
            <button class="btn custom-btn btn-success m-2" id="purchaseButton" type="submit" disabled>Purchase</button>
        </div>

        <button class="btn close-btn" onclick="hidePopup()"><i class="fas fa-times"></i></button>

    </div>
</div>

<script>
    function hidePopup() {
        let popup = document.getElementById('popupContainer');
        popup.classList.add('hidePopup');
        document.getElementById('amountInput').value = 0;
        document.getElementById("error-message").textContent = "";
        document.getElementById('purchaseButton').disabled = true;
    }

    function quickAmount(amount) {
        const input = document.getElementById("amountInput");
        input.value = amount;
        input.dispatchEvent(new Event('change'));
    }
</script>