let numContainer = document.getElementById("numberContainer");
let balance = document.getElementById("balance");
let id = 0;
let amount = 0;

for(i=1; i<=50; i++){
    const divElement = document.createElement('div');
    divElement.className = 'numberCard';
    divElement.id = i; // Set a unique ID for each div element

    const h1Element = document.createElement('h1');
    h1Element.className = 'numberHeading';
    h1Element.textContent = i;
    divElement.appendChild(h1Element);

    divElement.onclick = function() {
    // Handle the click event for the div element
    let amount = prompt('Enter amount for number ' + this.id);
    let bal = document.getElementById("balance").innerText;
    let intAmount = parseInt(amount);
    let intBal = parseInt(bal);

    if(intAmount < intBal){
        checkout(this.id, intAmount);
    }else{
        alert("Not enough balance");
    }
    // Add your desired action here
    };

    numContainer.appendChild(divElement);
}

function checkout(id, amount){
    window.location.href = 'minusAmount.php?id=' + id + '&amount=' + amount;
    let newBal = balance.innerText - amount;
    balance.innerHTML = newBal;
    // alert(newBal);  
}