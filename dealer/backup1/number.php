<?php include "userAuth.php";
$defaultDatabase = "asmitixc_lottery_web";
$game = "Alibaba Exchange";
if (isset($_GET['selected_db'])) {
    $selectedDatabase = $_GET['selected_db']; // Make sure to validate and sanitize the input
    if ($selectedDatabase == "asmitixc_lottery_web") {
        $game = "Alibaba Exchange";
    } elseif ($selectedDatabase == "asmitixc_game1") {
        $game = "Alibaba-1";
    } elseif ($selectedDatabase == "asmitixc_game1-0") {
        $game = "Alibaba-0";
    } elseif ($selectedDatabase == "asmitixc_game1-3") {
        $game = "Alibaba-3";
    } elseif ($selectedDatabase == "asmitixc_game1-4") {
        $game = "Alibaba-4";
    } elseif ($selectedDatabase == "asmitixc_game2") {
        $game = "Alibaba-2";
    } elseif ($selectedDatabase == "asmitixc_game3") {
        $game = "Ak";
    } elseif ($selectedDatabase == "asmitixc_game3-0") {
        $game = "Ak Close";
    } elseif ($selectedDatabase == "asmitixc_game3-1") {
        $game = "Ak-1";
    } elseif ($selectedDatabase == "asmitixc_game3-2") {
        $game = "Ak-2";
    } elseif ($selectedDatabase == "asmitixc_game3-3") {
        $game = "Ak-3";
    } elseif ($selectedDatabase == "asmitixc_game3-4") {
        $game = "Ak-4";
    } elseif ($selectedDatabase == "asmitixc_game4-0") {
        $game = "Gm-0";
    } elseif ($selectedDatabase == "asmitixc_game4") {
        $game = "Gm";
    } elseif ($selectedDatabase == "asmitixc_game4-1") {
        $game = "Gm-1";
    } elseif ($selectedDatabase == "asmitixc_game4-2") {
        $game = "Gm-2";
    } elseif ($selectedDatabase == "asmitixc_game4-3") {
        $game = "Gm-3";
    } elseif ($selectedDatabase == "asmitixc_game4-4") {
        $game = "Gm-4";
    } elseif ($selectedDatabase == "asmitixc_game5") {
        $game = "Ls-1";
    } elseif ($selectedDatabase == "asmitixc_game6") {
        $game = "Ls-2";
    } elseif ($selectedDatabase == "asmitixc_game7") {
        $game = "Ls-3";
    } elseif ($selectedDatabase == "asmitixc_game8") {
        $game = "Ls";
    } elseif ($selectedDatabase == "asmitixc_game8-0") {
        $game = "Ls-0";
    } elseif ($selectedDatabase == "asmitixc_game8-4") {
        $game = "Ls-4";
    }
} else {
    // If not provided, assign a default database   
    $selectedDatabase = $defaultDatabase;
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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
</head>
<style>
    .total_amount {
        color: #3a1e56;
    }
</style>

<body>
    <?php include "aNav.php"; ?>
    <br><br>
    <div class="container">
        <h2>Numbers - <span><?php echo $game ?></span></h2>

        <div class="btn-group btn-group-toggle mb-2" data-toggle="buttons">
            <label class="btn btn-primary" id="numberBtn">
                <input type="radio" name="options" id="option1" autocomplete="off" onclick="setNumber(0)"> Full Digit
            </label>
            <label class="btn btn-primary" id="firstDigitBtn">
                <input type="radio" name="options" id="option2" autocomplete="off" onclick="setNumber(1)"> Open
            </label>
            <label class="btn btn-primary" id="secondDigitBtn">
                <input type="radio" name="options" id="option3" autocomplete="off" onclick="setNumber(2)"> Close
            </label>
        </div>


        <form class="form-inline mb-2">
            <div class="form-group mr-2">
                <label for="gameSelect">Select Game:</label>
                <select id="gameSelect" class="form-control ml-2">
                  <option value="./number.php?selected_db=asmitixc_game1-0">Alibaba-0</option>
                  <option value="./number.php?selected_db=asmitixc_lottery_web" selected>Alibaba Exchange</option>
                  <option value="./number.php?selected_db=asmitixc_game1">Alibaba-1</option>
                  <option value="./number.php?selected_db=asmitixc_game2">Alibaba-2</option>
                  <option value="./number.php?selected_db=asmitixc_game1-3">Alibaba-3</option>
                  <option value="./number.php?selected_db=asmitixc_game1-4">Alibaba-4</option>
                  <option value="./number.php?selected_db=asmitixc_game3">Ak</option>
                  <option value="./number.php?selected_db=asmitixc_game3-0">Ak Close</option>
                  <option value="./number.php?selected_db=asmitixc_game3-1">Ak-1</option>
                  <option value="./number.php?selected_db=asmitixc_game3-2">Ak-2</option>
                  <option value="./number.php?selected_db=asmitixc_game3-3">Ak-3</option>
                  <option value="./number.php?selected_db=asmitixc_game3-4">Ak-4</option>
                  <option value="./number.php?selected_db=asmitixc_game4-0">Gm-0</option>
                  <option value="./number.php?selected_db=asmitixc_game4">Gm</option>
                  <option value="./number.php?selected_db=asmitixc_game4-1">Gm-1</option>
                  <option value="./number.php?selected_db=asmitixc_game4-2">Gm-2</option>
                  <option value="./number.php?selected_db=asmitixc_game4-3">Gm-3</option>
                  <option value="./number.php?selected_db=asmitixc_game4-4">Gm-4</option>
                  <option value="./number.php?selected_db=asmitixc_game8-0">Ls-0</option>
                  <option value="./number.php?selected_db=asmitixc_game8">Ls</option>
                  <option value="./number.php?selected_db=asmitixc_game5">Ls-1</option>
                  <option value="./number.php?selected_db=asmitixc_game6">Ls-2</option>
                  <option value="./number.php?selected_db=asmitixc_game7">Ls-3</option>
                  <option value="./number.php?selected_db=asmitixc_game8-4">Ls-4</option>
                </select>
            </div>
        </form>




        <h4 class="total_amount">Total Amount: <span id="totalBidAmount"></span> PKR</h4>
        <table id="numberTable" class="table table-striped table-bordered" style="width:100%">
            <thead>
                <tr>
                    <th>Number</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>

    <?php

    ?>
    <script>
        $(document).ready(function() {
            var storedNumber = sessionStorage.getItem('numberToSend');
            numberToSend = storedNumber ? parseInt(storedNumber) : 0;
            loadNumberTable(numberToSend);
            setTimeout(function() {
                updateCheckedButton();
            }, 500);
        });

        $(document).ready(function() {
            // Handle the change event of the select element
            $('#gameSelect').on('change', function() {
                var selectedOption = $(this).val();
                if (selectedOption) {
                    // Redirect to the selected URL
                    window.location.href = selectedOption;
                }
            });

            // PHP code to set the selected option based on the 'selected_db' value
            <?php
            $selected_db = $_GET['selected_db'] ?? '';
            if ($selected_db) {
                echo '$("#gameSelect").val("./number.php?selected_db=' . $selected_db . '");';
            }
            ?>
        });
        //
        var numberToSend = 0;
        var db = "<?php echo $selectedDatabase; ?>";
        // alert(db);

        function setNumber(number) {
            sessionStorage.setItem('numberToSend', number);
            location.reload(); // Refresh the page
            // updateCheckedButton();
        }

        function updateCheckedButton() {
        storedNumber = sessionStorage.getItem('numberToSend');
        number = storedNumber ? parseInt(storedNumber) : 0;
        
        // Remove the 'active' class from all buttons
        $('#numberBtn').removeClass('active');
        $('#firstDigitBtn').removeClass('active');
        $('#secondDigitBtn').removeClass('active');

            if (number === 0) {
                $('#numberBtn').addClass('active');
            } else if (number === 1) {
                $('#firstDigitBtn').addClass('active');
            } else if (number === 2) {
                $('#secondDigitBtn').addClass('active');
            }
    }

        

    var table;
    $(document).ready(function() {
        
        loadNumberTable(numberToSend);
    });
    
    function loadNumberTable(numberToSend) {
        // console.log('fetchNumberData.php?number=' + numberToSend + '&selected_db=' + db)
        fetch('fetchNumberData.php?number=' + numberToSend + '&selected_db=' + db)
            .then(response => response.json())
            .then(data => {
                // Destroy DataTable if it already exists
                if ($.fn.DataTable.isDataTable('#numberTable')) {
                    table.destroy();
                }

                // Initialize DataTable with the retrieved data
                initializeDataTable(data);
            })
            .catch(error => {
                console.error("Error fetching data:", error);
            });

    }

    function initializeDataTable(data) {
    table = $('#numberTable').DataTable({
        "data": data,
        "columns": [
            {
                "data": "number",
                "render": function(data, type, row) {
                    // Conditionally pad the number with leading zeros based on the value of numberToSend
                    if (numberToSend === 0) {
                        return String(data).padStart(2, '0');
                    } else {
                        return data;
                    }
                }
            },
            {
                "data": "amount",
                "render": function(data, type, row) {
                    return (data);
                }
            }
        ],
        "drawCallback": function(settings) {
            var api = this.api();
            var totalBidAmount = api
                .column(1, { search: 'applied' })
                .data()
                .reduce(function(acc, val) {
                    var unformattedVal = unformatNumber(val);
                    return acc + parseFloat(unformattedVal);
                }, 0);

            var formattedTotalBidAmount = formatNumber(totalBidAmount);
            $('#totalBidAmount').text(formattedTotalBidAmount);
        }
    });

    function formatNumber(number) {
        var formatter = new Intl.NumberFormat('en-US');
        return formatter.format(number);
    }

    function unformatNumber(formattedNumber) {
        if (typeof formattedNumber === 'string' || formattedNumber instanceof String) {
            return formattedNumber.replace(/,/g, '');
        } else {
            return formattedNumber;
        }
    }
}



            // Add a search input for each column
            $('#numberTable thead tr').clone(true).appendTo('#numberTable thead');
            $('#numberTable thead tr:eq(1) th').each(function(i) {
                var title = $(this).text();
                $(this).html('<input type="text" class="form-control" placeholder="Search ' + title + '" />');

                $('input', this).on('keyup change', function() {
                    if (table.column(i).search() !== this.value) {
                        table
                            .column(i)
                            .search(this.value)
                            .draw();
                    }
                });
            });
    </script>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</html>