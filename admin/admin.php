<?php include "userAuth.php"; ?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
    <title>Admin Panel</title>
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
    <!-- <div class="container m-3" role="group">
        <a href="./createAccount.php" class="btn btn-primary">Create Account</a>
        <a href="./editAccount.php" class="btn btn-primary">Edit Account</a>
    </div> -->

    <br>
    <div class="container">
        <h2>Dealers Data</h2>
        <div class="table-responsive">
            <table id="userTable" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th class="actions-column">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Data rows will be dynamically populated here -->
                </tbody>
            </table>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script>
            // $(document).ready(function() {
            //     $('#myTable').DataTable();
            // });
        </script>
        <script>
            $(document).ready(function() {
                $('#userTable').DataTable({
                    "ajax": {
                        "url": "fetchUserData.php",
                        "dataSrc": "data"
                    },
                    "columns": [{
                            "data": "dealerID"
                        },
                        {
                            "data": "username"
                        },
                        {
                            "data": "password"
                        },
                        {
                            "data": null,
                            "render": function(data, type, row) {
                                var activationStatus = row.activation;
                                var buttonLabel = "";
                                var buttonUrl = "";
                                var buttonClass = "";

                                if (activationStatus === "0") {
                                    buttonLabel = "Activate";
                                    buttonUrl = "activate.php";
                                    buttonClass = "activate-btn btn-success";
                                } else if (activationStatus === "1" || activationStatus === true) {
                                    buttonLabel = "Deactivate";
                                    buttonUrl = "deActivate.php";
                                    buttonClass = "deactivate-btn btn-danger";
                                }

                                var activateButton = '<a href="' + buttonUrl + '?userId=' + row.dealerID + '" class="btn btn-primary ' + buttonClass + '">' + buttonLabel + '</a>';
                                var updateButton = '<a href="editAccount.php?userId=' + row.dealerID + '" class="btn btn-primary">Update Account</a>';

                                return activateButton + ' ' + updateButton;
                            },
                            "width": "300px" // Set the width of the column to accommodate the buttons
                        }
                    ]
                });
            });
        </script>







</body>

</html>