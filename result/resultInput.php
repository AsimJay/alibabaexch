<?php 
$con= new mysqli('localhost','asmitixc_asim','R;I6u]![&R@y','asmitixc_result'); 
// $con= new mysqli('localhost','root','','lottery_web'); 

if (isset($_POST['submit'])) {
    $number1 = $_POST['number1'];
    $number2 = $_POST['number2'];
    $number3 = $_POST['number3'];
    $number4 = $_POST['number4'];
    $number5 = $_POST['number5'];
    $number6 = $_POST['number6'];
    $date = $_POST['date'];
    $date = date('Y-m-d', strtotime($date));

    
    // Insert number1 into result1 table
    $sql1 = "UPDATE `result1` SET `r1` = '$number1', `date` = '$date' WHERE `result1`.`id` = 1";
    if (mysqli_query($con, $sql1)) {
        // echo "Number1 inserted into result1 table successfully.<br>";
    } else {
        // echo "Error inserting number1 into result1 table: " . mysqli_error($con) . "<br>";
    }

    // Insert number2 to number5 into result2 table
    $sql2 = "UPDATE `result2` SET `r1` = '$number2', `r2` = '$number3', `r3` = '$number4', `r4` = '$number5', `r5` = '$number6' WHERE `result2`.`id` = 1;";
    if (mysqli_query($con, $sql2)) {
        echo "<script>
                alert('Data inserted successfully.');
                window.location.href = '/result/result.php';
              </script>";
        exit;
    } else {
        echo "Error inserting data into result2 table: " . mysqli_error($con);
    }
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Result Update</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #d9d8d7;
            background-image: url('https://images.pexels.com/photos/1470405/pexels-photo-1470405.jpeg');
            background-position: center;
            background-size: cover;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 20px;
        }
        .form-section {
            margin-bottom: 20px;
        }
        .form-section h1 {
            font-size: 20px;
            margin-bottom: 10px;
            text-align: center;
        }
        .form-section input[type="number"], .form-section input[type="date"], .form-section input[type="text"]{
            width: calc(100% - 12px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-section:last-child {
            margin-bottom: 0;
        }
        .submit-btn {
            display: block;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #28a745;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="form-container">
    <form method="POST">
        <div class="form-section">
            <h1>Result 1</h1>
            <input type="text" name="number1" placeholder="Enter result 1" required>
        </div>
        <div class="form-section">
            <h1>Result 2</h1>
            <input type="text" name="number2" placeholder="Enter result 1" required>
            <input type="text" name="number3" placeholder="Enter result 2" required>
            <input type="text" name="number4" placeholder="Enter result 3" required>
            <input type="text" name="number5" placeholder="Enter result 4" required>
            <input type="text" name="number6" placeholder="Enter result 5" required>
        </div>
        <div class="form-section">
            <h1>Date</h1>
            <input type="date" name="date" placeholder="Enter date" required>
        </div>
        <button type="submit" class="submit-btn" name="submit">Submit</button>
    </form>
</div>

</body>
</html>
