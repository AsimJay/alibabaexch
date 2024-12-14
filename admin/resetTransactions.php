<?php
include "userAuth.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Reset Transactions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container{
            margin: 50px;
        }
        .warning {
            color: red;
            font-weight: bold;
        }
        .reset-button {
            background-color: red;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
        .reset-button:hover {
            background-color: darkred;
        }
    </style>
</head>
<body>
<?php include "aNav.php"; ?>
<div class="container">
<h1>Reset Games Data</h1>
<p class="warning">Warning: This action will reset the data in the selected games. This action is irreversible. Proceed with caution.</p>

<form method="post">
    <?php
    // Mapping of frontend names to backend database names
    $db_mapping = [
        "Alibaba-0" => "u423067381_game1_0",
        "Alibaba-Exchange" => "u423067381_lottery_web",
        "Alibaba-1" => "u423067381_game1",
        "Alibaba-2" => "u423067381_game2",
        "Alibaba-3" => "u423067381_game1_3",
        "Alibaba-4" => "u423067381_game1_4",
        "Ak" => "u423067381_game3",
        "Ak Close" => "u423067381_game3_0",
        "Ak-1" => "u423067381_game3_1",
        "Ak-2" => "u423067381_game3_2",
        "Ak-3" => "u423067381_game3_3",
        "Ak-4" => "u423067381_game3_4",
        "OYO-Tv" => "u423067381_game4_0",
        "Gm" => "u423067381_game4",
        "Gm-1" => "u423067381_game4_1",
        "Gm-2" => "u423067381_game4_2",
        "Gm-3" => "u423067381_game4_3",
        "Gm-4" => "u423067381_game4_4",
        "OLA-Tv" => "u423067381_game8_0",
        "Ls" => "u423067381_game8",
        "Ls-1" => "u423067381_game5",
        "Ls-2" => "u423067381_game6",
        "Ls-3" => "u423067381_game7",
        "Ls-4" => "u423067381_game8_4"
    ];
    // Process form submission
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['reset'])) {
        $servername = "localhost";
        $username = "u423067381_asim";
        $password = "Asim123$";

        foreach ($db_mapping as $frontend_name => $backend_name) {
            if (isset($_POST[$frontend_name])) {
                $conn = new mysqli($servername, $backend_name, $password, $backend_name);
                
                // Check connection
                if ($conn->connect_error) {
                    die("Connection failed to $backend_name: " . $conn->connect_error);
                }

                // Disable foreign key checks
                $conn->query("SET FOREIGN_KEY_CHECKS = 0");

                // SQL to truncate the transactions table
                $sql = "TRUNCATE TABLE transactions";
                // echo $conn;
                if ($conn->query($sql) === TRUE) {
                    echo "$frontend_name has been reset successfully.<br>";
                } else {
                    echo "Error resetting $frontend_name: " . $conn->error . "<br>";
                }

                // Enable foreign key checks
                $conn->query("SET FOREIGN_KEY_CHECKS = 1");

                $conn->close();
            }
        }
    }
    ?>

    <h2>Select Games to Reset:</h2>
    <?php foreach ($db_mapping as $frontend_name => $backend_name): ?>
        <input type="checkbox" id="<?= htmlspecialchars($frontend_name) ?>" name="<?= htmlspecialchars($frontend_name) ?>" value="<?= htmlspecialchars($frontend_name) ?>">
        <label for="<?= htmlspecialchars($frontend_name) ?>"><?= htmlspecialchars($frontend_name) ?></label><br>
    <?php endforeach; ?>

    <br>
    <input type="submit" name="reset" value="Reset Selected Databases" class="reset-button">
</form>
</div>

</body>
</html>
