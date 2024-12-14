
<?php include "../functions.php" ?>
<div class="container">
<div class="container">
            <h1 class="text-center mt-5 font-weight-bold subHeading2">2-Digit Purchased Numbers</h1>
            <div class="numbersContainer">
                <?php
                bidFetch(0, $userID);
                ?>
            </div>
        </div>
</div>


<div class="container">
            <h1 class="text-center mt-5 font-weight-bold subHeading2">First Digit Purchased Numbers</h1>
            <div class="numbersContainer">
                <?php
                bidFetch(1, $userID);
                ?>
            </div>
        </div>
</div>

<div class="container">
            <h1 class="text-center mt-5 font-weight-bold subHeading2">Second Digit Purchased Numbers</h1>
            <div class="numbersContainer">
                <?php
                bidFetch(2, $userID);
                ?>
            </div>
        </div>
</div>
</div>