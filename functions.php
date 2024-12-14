<?php

function bidFetch($db, $userID, $game){
    $gameCon= connGenerator($game);
    $dbName = 'biddetails';
    if($db == 1){
        $dbName = 'firstbiddetails';
    }
    else if($db == 2){
        $dbName = 'secondbiddetails';
    }
    else{
        $dbName = 'biddetails';
    }
    $sql = "SELECT * FROM $dbName WHERE user_id = $userID";
    $result = mysqli_query($gameCon, $sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $bidNumber = $row["bid_number"];
            $bidAmount = $row["bid_amount"];
            $bidDate = $row["bid_date"];

            $dateTime = new DateTime($bidDate);
            // $formattedBidDate = $dateTime->format("d-m-Y H:i:s");
            $formattedBidDate = convertTo12HourFormat($dateTime->format("H:i:s"));
            // Convert single-digit numbers to two-digit numbers
            if($db == 1 || $db == 2){
                $formattedBidNumber = $bidNumber;
            }else{
               $formattedBidNumber = sprintf("%02d", $bidNumber);    
            }
            
    ?>
            <div class="numberCard mt-4">
                <h1 class="numberHeading"><?php echo $formattedBidNumber; ?></h1>
                <h5 class="amount mt-2"><?php echo $bidAmount; ?> PKR</h5>
                <p class="date "><?php echo $formattedBidDate; ?></p>
            </div>
    <?php
        }
    } else {
        echo "No bids found for the user.";
    }
}


    function convertTo12HourFormat($datetime24) {
    // Convert the full datetime (24-hour format) to 12-hour format
    $time12 = date("d-m-Y", strtotime($datetime24)) . "<br>" . date("g:i A", strtotime($datetime24));

    return $time12;
    }

    function connGenerator($game){
        $gameCon = new mysqli('localhost',$game,'Asim123$',$game); 
        return $gameCon;
    }

?>