<?php include "../userAuth.php"; ?>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#3a1e56;">
    <!--<a class="navbar-brand" href="./admin.php">Alibaba Exchange</a>-->
    <a class="navbar-brand" href="../admin.php"><img src="http://alibabaexch.net/img/logo.png" alt="Alibaba Logo" class="m" width="120"></a> 
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="../admin.php">Users</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../number.php">Numbers</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../transactions.php">Transactions</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../funds.php">Funds</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../createAccount.php">Create Account</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../numberSelect.php">Managment</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../gameActivation.php">Game Activition</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../game1/game.php">AliBaba-1</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./game.php">AliBaba-2</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../game3/game.php">Ak</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../game4/game.php">Gm</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../game5/game.php">Ls-1</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../game6/game.php">Ls-2</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../game7/game.php">Ls-3</a>
            </li>
        </ul>
 
        <div class="form-inline my-2 my-lg-0">
            <!-- <h6 class="my-2 my-sm-0 mx-4">Current Balance: <span id="bala  nce">499</span> PKR</h6> -->
            <a href="../logout.php" class="btn btn-outline-light my-2 my-sm-0">Logout</a>
        </div>
    </div>
</nav>