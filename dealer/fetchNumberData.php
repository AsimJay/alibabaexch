<?php
include "userAuth.php";
include "connect.php";

if (isset($_SESSION['username']) && isset($_SESSION['dealerID'])) {
    global $dealer, $dealerID;
    $dealer = $_SESSION['username'];
    $dealerID = $_SESSION['dealerID'];
}

$number = $_GET['number'];
$game = "Alibaba Exchange";
$defaultDatabase = "u423067381_lottery_web";

if (isset($_GET['selected_db'])) {
    $selectedDatabase = $_GET['selected_db'];
} else {
    $selectedDatabase = $defaultDatabase;
}

if ($number == 1) {
    printData($selectedDatabase, 'firstbiddetails', $dealerID, 9);
    echo "fbd";
} else if ($number == 2) {
    printData($selectedDatabase, 'secondbiddetails', $dealerID, 9);
    echo "sbd";
} else {
    printData($selectedDatabase, 'biddetails', $dealerID, 99);
    echo "bd";
}

function printData($pdb, $db, $dealerID, $maxBidNumber) {
    // Connection for the game database
    $gameCon = new mysqli('localhost', $pdb, 'Asim123$', $pdb);
    if ($gameCon->connect_error) {
        die("Failed to connect to $pdb database: " . $gameCon->connect_error);
    }

    // Connection for the users database
    $usersCon = new mysqli('localhost', 'u423067381_lottery_web', 'Asim123$', 'u423067381_lottery_web');
    if ($usersCon->connect_error) {
        die("Failed to connect to users database: " . $usersCon->connect_error);
    }

    $amount = array_fill(0, $maxBidNumber + 1, 0);

    for ($i = 0; $i <= $maxBidNumber; $i++) {
        // Fetch users' `did` from the users database
        $userQuery = "SELECT id FROM users WHERE did = $dealerID";
        $userResult = $usersCon->query($userQuery);

        if (!$userResult) {
            die("Error in users query: " . $usersCon->error);
        }

        $userIds = [];
        while ($row = $userResult->fetch_assoc()) {
            $userIds[] = $row['id'];
        }

        if (empty($userIds)) {
            continue; // Skip if no users found
        }

        $userIdsList = implode(',', $userIds);

        // Fetch bid details from the game database
        $bidQuery = "SELECT bid_number, bid_amount 
                     FROM `$db` 
                     WHERE user_id IN ($userIdsList) AND bid_number = $i";
        $bidResult = $gameCon->query($bidQuery);

        if (!$bidResult) {
            die("Error in bids query: " . $gameCon->error);
        }

        while ($row = $bidResult->fetch_assoc()) {
            $amount[$i] += $row['bid_amount'];
        }
    }

    $data = array();
    for ($i = 0; $i <= $maxBidNumber; $i++) {
        $data[] = array("number" => $i, "amount" => $amount[$i]);
    }

    header('Content-Type: application/json');
    echo json_encode($data);
    die();

    // Close database connections
    $gameCon->close();
    $usersCon->close();
}
?>
