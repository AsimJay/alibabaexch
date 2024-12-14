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
    <title>2 Digit</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<body>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Kanit:wght@100;400&display=swap');

        body {
            color: #fff;
            background: rgb(85, 49, 144);
            background: radial-gradient(circle, rgba(85, 49, 144, 1) 0%, rgba(98, 49, 144, 1) 100%);
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
            background-color: #F0EDEC;
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
    <h1 class="text-center mt-5">Purchased 2-digit Numbers</h1>
    <div class="container numbersContainer">
        <?php
        $sql = "SELECT * FROM biddetails WHERE user_id = $userID";
        $result = mysqli_query($con, $sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $bidNumber = $row["bid_number"];
                $bidAmount = $row["bid_amount"];
                $bidDate = $row["bid_date"];

                $dateTime = new DateTime($bidDate);
                $formattedBidDate = $dateTime->format("d-m-Y H:i:s");
                // Convert single-digit numbers to two-digit numbers
                $formattedBidNumber = sprintf("%02d", $bidNumber);
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
        ?>
    </div>
</body>

</html>