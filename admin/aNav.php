<?php include "userAuth.php";

?>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#3a1e56;">
    <!-- <a class="navbar-brand" href="./admin.php">Pakistan Lottery</a> -->
    <a class="navbar-brand" href="/admin/admin.php"><img src="/img/logo.png" alt="Alibaba Logo" class="m" width="120"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/admin/admin.php">Dealers</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/admin/number.php">Numbers</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/admin/transactions.php">Transactions</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/admin/funds.php">Funds</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/admin/createAccount.php">Create Account</a>
            </li>
            
            <!--<li class="nav-item">-->
            <!--    <a class="nav-link" href="/admin/numberSelect.php">Managment</a>-->
            <!--</li>-->
            
            <li class="nav-item">
                <a class="nav-link" href="/admin/gameActivation.php">Game Activition</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/admin/games.php">Games</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/admin/resetTransactions.php">Reset Data</a>
            </li>

            
        </ul>

        <div class="form-inline my-2 my-lg-0">
            <!-- <h6 class="my-2 my-sm-0 mx-4">Current Balance: <span id="bala  nce">499</span> PKR</h6> -->
            <a href="/admin/logout.php" class="btn btn-outline-light my-2 my-sm-0">Logout</a>
        </div>
    </div>
</nav>

