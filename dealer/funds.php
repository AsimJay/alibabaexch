<?php include "userAuth.php"; ?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
    <title>Dealer - Funds</title>
</head>

<body>
    <style>
        .activate-btn,
        .deactivate-btn {
            width: 100px;
        }

        @media (max-width: 767px) {

            /* Hide the Actions column on smaller screens */
            .actions-column {
                display: none;
            }
        }
    </style>
    <?php include "aNav.php"; ?>

    <br>
    <div class="container">
        <h2>Manage Funds</h2>
        <table id="balanceTable" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Balance</th>
                    <th class="actions-column">Manage Funds</th>
                </tr>
            </thead>
            <tbody>
                <!-- Data rows will be dynamically populated here -->
            </tbody>
        </table>
    </div>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function() {
            $('#balanceTable').DataTable({
                "ajax": {
                    "url": "fetchFundsData.php",
                    "dataSrc": "data"
                },
                "columns": [{
                        "data": "id"
                    },
                    {
                        "data": "name"
                    },
                    {
                        "data": "username"
                    },
                    {
                        "data": null,
                        "render": function(data, type, row) {
                            return row.balance;
                        }
                    },
                    {
                        "data": null,
                        "render": function(data, type, row) {
                            var addFundsButton = '<a href="addFunds.php?userId=' + row.id + '" class="btn btn-info">Add Funds</a>';
                            var withdrawFundsButton = '<a href="withdrawFunds.php?userId=' + row.id + '" class="btn btn-danger">Withdraw Funds</a>';
                            return addFundsButton + " " + withdrawFundsButton;
                        }
                    }
                ]
            });
        });
    </script>









</body>

</html>