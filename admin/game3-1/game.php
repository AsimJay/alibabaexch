<?php
include "../userAuth.php";
include "./gameCon.php";

$sql = "SELECT * FROM  luckynumber";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$number = $row['number'];
$amount = $row['amount'];

$sql = "SELECT amount FROM  number_table WHERE number = $number";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$amount = $row['amount'];

$firstDigit = (int) ($number / 10) % 10; // Get the first digit
$secondDigit = $number % 10; // Get the second digit

$sql = "SELECT amount FROM  first_digit WHERE number = $firstDigit";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$amount2 = $row['amount'];

$sql = "SELECT amount FROM  second_digit WHERE number = $secondDigit";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$amount3 = $row['amount'];


$sql = "SELECT run_function FROM  admin_control WHERE id = 1";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);

// Return the boolean value as the response
$checkRun = $row['run_function'];


if (isset($_POST['submit'])) {
    $newNumber = $_POST['number'];
    $sql = "SELECT * FROM  number_table WHERE number = $newNumber;";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_assoc($result);
    $namount = $row['amount'];
    $sql = "UPDATE `luckynumber` SET `number` = '$newNumber', `amount` = '$namount' WHERE `id` = 1;";
    $result = mysqli_query($con, $sql);
    if ($result) {
        header("location: game.php");
    }
    // echo "done";
}

if (isset($_POST['suspendBtn'])) {
    $market = $_POST['market'];
    if (!$market) {
        $sql = "UPDATE  market SET suspend = '1';";
        $result = mysqli_query($con, $sql);
        header("location:  game.php");
    } else {
        $sql = "UPDATE  market SET suspend = '0';";
        $result = mysqli_query($con, $sql);
        header("location:  game.php");
    }
}

if (isset($_POST['updatePercent1'])) {
    $newPercent = $_POST['newPercent1'];
    $sql = "UPDATE `profit_percent` SET `percentage` = $newPercent WHERE `profit_percent`.`id` = 1;";
    $result = mysqli_query($con, $sql);
    if ($result) {
        echo '<script>alert("Profit Percentage Updated Successfully")</script>';
        $result = NULL;
        $result = NULL;
    }
}
if (isset($_POST['updatePercent2'])) {
    $newPercent = $_POST['newPercent2'];
    $sql = "UPDATE `profit_percent` SET `percentage` = $newPercent WHERE `profit_percent`.`id` = 2;";
    $result = mysqli_query($con, $sql);
    if ($result) {
        echo '<script>alert("Profit Percentage Updated Successfully")</script>';
        $result = NULL;
        $result = NULL;
    }
}
if (isset($_POST['updatePercent3'])) {
    $newPercent = $_POST['newPercent3'];
    $sql = "UPDATE `profit_percent` SET `percentage` = $newPercent WHERE `profit_percent`.`id` = 3;";
    $result = mysqli_query($con, $sql);
    if ($result) {
        echo '<script>alert("Profit Percentage Updated Successfully")</script>';
        $result = NULL;
        $result = NULL;
    }
}
if (isset($_POST['updateTime'])) {
    $time = $_POST['newTime'];
    $sql = "UPDATE `input_time` SET `time` = '$time' WHERE `input_time`.`id` = 1;";
    $result = mysqli_query($con, $sql);
    if ($result) {
        echo '<script>alert("Time Updated Successfully")</script>';
        $result = NULL;
        $result = NULL;
    }
}




?>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
    <style>
        #numberTable td {
            padding-left: 20px;
            padding-right: 20px;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
</head>
<style>
    .total_amount {
        color: #3a1e56;
    }

    tbody tr {
        font-size: 20px;
        font-weight: bold;
    }
</style>

<body>
    <?php include "../aNav.php"; ?>
    <br><br>
    <div class="container">
        <h2 class="text-center">Ak 1</h2>
        <hr>
        <h2 class="text-center">Lucky Number</h2>
        <br>
        <table id="numberTable" class="table table-striped table-bordered" style="width:100%">
            <thead>
                <tr>
                    <th>Digit</th>
                    <th>Number</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Full Number</td>
                    <td><?php echo $number ?></td>
                    <td><?php echo $amount ?> PKR</td>
                </tr>
                <tr>
                    <td>First Digit</td>
                    <td><?php echo $firstDigit ?></td>
                    <td><?php echo $amount2 ?> PKR</td>
                </tr>
                <tr>
                    <td>Second Digit</td>
                    <td><?php echo $secondDigit ?></td>
                    <td><?php echo $amount3 ?> PKR</td>
                </tr>
            </tbody>
        </table>
    </div>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Manage Market</h2>
                        <form method="POST">
                            <div class="form-group">
                                <label for="marketSelect">Current Market Situation:</label>
                                <?php
                                $sql = "SELECT suspend FROM  market LIMIT 1";
                                $result = mysqli_query($con, $sql);
                                $marketSuspend = mysqli_fetch_assoc($result)['suspend'];
                                $marketSuspend = boolval($marketSuspend); // Convert to boolean

                                if ($marketSuspend) {
                                    echo '<input type="text" class="form-control" value="Market is closed." readonly>';
                                    echo '<input type="hidden" name="market" value="1">';
                                    echo '<button class="btn btn-success btn-block mt-3" type="submit" name="suspendBtn">Open Market</button>';
                                } else {
                                    echo '<input type="text" class="form-control" value="Market is open." readonly>';
                                    echo '<input type="hidden" name="market" value="0">';
                                    echo '<button class="btn btn-danger btn-block mt-3" type="submit" name="suspendBtn">Suspend Market</button>';
                                }
                                ?>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Change Number</h2>
                        <form action="game.php" method="POST">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter New Number" name="number">
                            </div>
                            <button class="btn btn-primary btn-block" type="submit" name="submit">Update Number</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Counter Time</h2>
                        <form action="game.php" method="POST" class="form-inline">
                            <div class="input-group mb-3">
                                <!-- <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Percentage</span>
                                </div> -->
                                <?php
                                $sql = "SELECT * FROM  input_time WHERE id = 1;";
                                $result = mysqli_query($con, $sql);
                                $row = mysqli_fetch_assoc($result);
                                $time = $row['time'];
                                echo '<input type="text" class="form-control" name="newTime" placeholder="Time" value="' . $time . '">';
                                ?>
                                <!-- <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"> -->
                            </div>
                            <button type="submit" name="updateTime" class="btn btn-primary text-center">Update Time</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Manage Counter</h2>
                        <table class="table">
                            <tr>
                                <td>
                                    <?php
                                    if (!$checkRun) {
                                        echo '<a href="run_counter.php" class="btn btn-primary btn-block">Run Counter</a>';
                                    } else {
                                        echo '<a href="stop_counter.php" class="btn btn-danger btn-block">Stop Counter</a>';
                                    }
                                    ?>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Reset Market</h2>
                        <table class="table">
                            <tr>
                                <td>
                                    <a href="script.php" class="btn btn-danger btn-block" onclick="return confirm('Are you sure you want to reset?')">Click To Reset</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Winners</h2>
                        <table class="table">
                            <tr>
                                <td>
                                    <a href="winners.php?number=0" class="btn btn-primary btn-block">Click To See Winners</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Full Number</h2>
                        <form method="post" class="form-inline">
                            <div class="input-group mb-3">
                                <!-- <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Percentage</span>
                                </div> -->
                                <?php
                                $sql = "SELECT * FROM  profit_percent WHERE id = 1;";
                                $result = mysqli_query($con, $sql);
                                $row = mysqli_fetch_assoc($result);
                                $profitPercent = $row['percentage'];
                                echo '<input type="number" class="form-control" name="newPercent1" placeholder="Profit" value="' . $profitPercent . '">';
                                ?>
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">%</span>
                                </div>
                                <!-- <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"> -->
                            </div>
                            <button type="submit" name="updatePercent1" class="btn btn-primary text-center">Update Percentage</button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">First Digit</h2>
                        <form method="post" class="form-inline">
                            <div class="input-group mb-3">
                                <!-- <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Percentage</span>
                                </div> -->
                                <?php
                                $sql = "SELECT * FROM  profit_percent WHERE id = 2;";
                                $result = mysqli_query($con, $sql);
                                $row = mysqli_fetch_assoc($result);
                                $profitPercent = $row['percentage'];
                                echo '<input type="number" class="form-control" name="newPercent2" placeholder="Profit" aria-label="Username" aria-describedby="basic-addon1" value="' . $profitPercent . '">';
                                ?>
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">%</span>
                                </div>
                                <!-- <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"> -->
                            </div>
                            <button type="submit" name="updatePercent2" class="btn btn-primary text-center">Update Percentage</button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Second Digit</h2>
                        <form method="POST" class="form-inline">
                            <div class="input-group mb-3">
                                <!-- <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Percentage</span>
                                </div> -->
                                <?php
                                $sql = "SELECT * FROM  profit_percent WHERE id = 3;";
                                $result = mysqli_query($con, $sql);
                                $row = mysqli_fetch_assoc($result);
                                $profitPercent = $row['percentage'];
                                echo '<input type="number" class="form-control" name="newPercent3" placeholder="Profit" aria-label="Username" aria-describedby="basic-addon1" value="' . $profitPercent . '">';
                                ?>
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">%</span>
                                </div>
                                <!-- <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"> -->
                            </div>
                            <button type="submit" name="updatePercent3" class="btn btn-primary text-center">Update Percentage</button>
                        </form>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <br>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>