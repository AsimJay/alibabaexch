<?php
// Database credentials
$dbHost = 'localhost';
$dbUser = 'asmitixc_asim';
$dbPass = 'R;I6u]![&R@y';

// List of database names
$databases = [
    'asmitixc_dl_result',
    'u423067381_game1',
    'u423067381_game1_0',
    'u423067381_game1_3',
    'u423067381_game1_4',
    'u423067381_game2',
    'u423067381_game3',
    'u423067381_game3_0',
    'u423067381_game3_1',
    'u423067381_game3_2',
    'u423067381_game3_3',
    'u423067381_game3_4',
    'u423067381_game4',
    'u423067381_game4_0',
    'u423067381_game4_1',
    'u423067381_game4_2',
    'u423067381_game4_3',
    'u423067381_game4_4',
    'u423067381_game5',
    'u423067381_game6',
    'u423067381_game7',
    'u423067381_game8',
    'u423067381_game8_0',
    'u423067381_game8_4',
    'asmitixc_lottery_web',
    'asmitixc_result'
];

// Directory to save the exports
$exportDir = 'exports/';

// Create the directory if it doesn't exist
if (!is_dir($exportDir)) {
    mkdir($exportDir, 0755, true);
}

// Loop through each database and export it
foreach ($databases as $dbName) {
    $outputFile = $exportDir . $dbName . '_backup.sql';
    $command = "mysqldump -h $dbHost -u $dbUser -p'$dbPass' $dbName > $outputFile";
    
    exec($command, $output, $result);
    
    if ($result === 0) {
        echo "Database '$dbName' exported successfully to $outputFile.<br>";
    } else {
        echo "Error exporting database '$dbName'. Command output: " . implode("\n", $output) . "<br>";
    }
}

echo "All exports completed.";
?>
