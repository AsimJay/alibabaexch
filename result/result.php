<?php
// Retrieve data to display
$con = new mysqli('localhost', 'asmitixc_asim', 'R;I6u]![&R@y', 'asmitixc_result'); 
$sql1_display = "SELECT r1, DATE_FORMAT(date, '%d-%m-%Y') as formatted_date FROM result1";
$result1_display = mysqli_query($con, $sql1_display);

$sql2_display = "SELECT * FROM result2";
$result2_display = mysqli_query($con, $sql2_display);

if (mysqli_num_rows($result1_display) > 0) {
    while ($row = mysqli_fetch_assoc($result1_display)) {
        $r1 = $row['r1'];
        $date = $row['formatted_date'];
    }
} else {
    // No data was fetched
    // echo "No records found.";
}
if (mysqli_num_rows($result2_display) > 0) {
    while ($row = mysqli_fetch_assoc($result2_display)) {
        $r2 = $row['r1'];
        $r3 = $row['r2'];
        $r4 = $row['r3'];
        $r5 = $row['r4'];
        $r6 = $row['r5'];
    }
} else {
    // No data was fetched
    // echo "No records found.";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Result</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://images.pexels.com/photos/1470405/pexels-photo-1470405.jpeg');
            background-position: center;
            background-size: cover;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #171717;
        }
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@900&display=swap');

        .logo {
            font-family: 'Lobster', cursive;
            font-size: 56px;
            color: #ff6347; /* Tomato color */
            text-shadow: 2px 2px 0 #ffdab9, 4px 4px 0 #cd5c5c;
            letter-spacing: 1px;
            text-align: center;
            margin-top: 50px;
            margin-bottom: 30px;
        }
        .data-container {
            margin-bottom: 30px;
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 20px;
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(5px);
        }
        h1 {
            margin-bottom: 10px;
            font-size: 24px;
            text-align: center;
            color: #fff;
        }
        .table-container {
            overflow-x: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }
        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.3);
            color: #fff;
            font-size: 24px;
            font-weight: lighter;
            letter-spacing: 5px;
        }
        th {
            background-color: rgba(0, 0, 0, 0.5);
        }
        .table_head {
            display: flex;
            flex-direction: column;
        }
    </style>
</head>
<body>
    <h1 class="logo">Dubai Lottery</h1>
    
    
<div class="data-container">
    <h1>Next Draw</h1>
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th><?php echo $date; ?></th>
                </tr>
            </thead>
            <tbody>
                <!-- Add your data rows here if needed -->
            </tbody>
        </table>
    </div>
</div>
    
<div class="data-container">
    <h1>Result 1</h1>
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th><?php echo $r1; ?></th>
                </tr>
            </thead>
            <tbody>
                <!-- Add your data rows here if needed -->
            </tbody>
        </table>
    </div>
</div>

<div class="data-container">
    <h1>Result 2</h1>
    <div class="table-container">
        <table>
            <thead>
                <tr class="table_head">
                    <th><?php echo $r2; ?></th>
                    <th><?php echo $r3; ?></th>
                    <th><?php echo $r4; ?></th>
                    <th><?php echo $r5; ?></th>
                    <th><?php echo $r6; ?></th>
                </tr>
            </thead>
            <tbody>
                <!-- Add your data rows here if needed -->
            </tbody>
        </table>
    </div>
</div>



<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
