<?php 
    include './admin/connect.php';
    session_start();

    // Maintenance mode flag
    $maintenance_mode = false; // Set to false to disable maintenance mode

    // Check for maintenance mode
    if ($maintenance_mode) {
        $username = $_POST['username'];
         if ($username == 'Dev') {
            $_SESSION['username'] = 'Demo';
            header('Location: home.php');
            exit;
        }else{
        echo "<script>
                alert('The website is currently under maintenancess. Please try again later.');
                window.location.href = 'login.html';
              </script>";
        exit;
        }
    }

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $username = $_POST['username'];
        $password = $_POST['password'];

        // Admin identification
        if ($username == 'X1tRd7KqPz2' && $password == 'admin') {
            $_SESSION['username'] = $username;
            header('Location: ./admin/games.php');
            exit;
        }

        // Dealer
        $sql = "SELECT dealerID, username, password, activation FROM dealer WHERE username='$username'";
        $result = $con->query($sql);
        if ($result->num_rows == 1) {
            $row = $result->fetch_assoc();
            if ($password == $row['password']) {
                if ($row['activation']) {
                    $_SESSION['username'] = $username;
                    $_SESSION['dealerID'] = $row['dealerID'];
                    header('Location: ./dealer/dealer.php');
                    exit;
                } else {
                    echo "<script>
                            alert('Please contact your account provider to activate your account.');
                            window.location.href = 'login.html';
                          </script>";
                }
            } else {
                echo "<script>
                        alert('Invalid Password');
                        window.location.href = 'login.html';
                      </script>";
            }
        }

        // User Authentication
        $sql = "SELECT * FROM users WHERE username='$username'";
        $result = $con->query($sql);
        if ($result->num_rows == 1) {
            $row = $result->fetch_assoc();
            if ($password == $row['password']) {
                if ($row['activation']) {
                    $_SESSION['username'] = $username;
                    header('Location: games.php');
                    exit;
                } else {
                    echo "<script>
                            alert('Please contact your account provider to activate your account.');
                            window.location.href = 'login.html';
                          </script>";
                }
            } else {
                echo "<script>
                        alert('Invalid Password');
                        window.location.href = 'login.html';
                      </script>";
            }
        } else {
            echo "<script>
                    alert('Invalid Username');
                    window.location.href = 'login.html';
                  </script>";
        }

        $con->close();
    }
?>
