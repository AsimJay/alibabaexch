<?php include "userAuth.php"; ?>
<!DOCTYPE html>
<html>

<head>
    <title>User Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="icon" href="./img/favicon.ico" type="image/x-icon">
</head>

<body>
    <?php include "nav.php"; ?>

    <style>
        body {
            color: #fff;
            background: rgb(85, 49, 144);
            background: radial-gradient(circle, rgba(85, 49, 144, 1) 0%, rgba(98, 49, 144, 1) 100%);
        }

        .profile {
            border-radius: 50%;
            width: 10rem;
            height: 10rem;
            display: flex;
            margin: 2rem auto;
            justify-content: center;
            align-items: center;
        }
    </style>
    <div class="container">
        <!-- <h1 class=" m-4">Profile</h1> -->
        <div>
            <img class="profile" src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="profile">
        </div>
        <h2 class="text-center m-4"><?php echo $name?></h2>
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username" placeholder="Enter username" value="<?php echo $username?>" disabled>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <div class="input-group">
                <input type="password" class="form-control" id="password" placeholder="Enter password" value="<?php echo $pass?>" disabled>
                <div class="input-group-append">
                    <button class="btn btn-secondary" type="button" id="togglePassword">Show</button>
                </div>
            </div>
        </div>
        <!-- <button class="btn btn-light mb-5" type="button" id="changePassword">Change Password</button> -->
    </div>

    <script>
        $(document).ready(function() {
            $('#togglePassword').on('click', function() {
                const passwordInput = $('#password');
                const passwordFieldType = passwordInput.attr('type');

                if (passwordFieldType === 'password') {
                    passwordInput.attr('type', 'text');
                    $(this).text('Hide');
                } else {
                    passwordInput.attr('type', 'password');
                    $(this).text('Show');
                }
            });
        });
    </script>
</body>

</html>