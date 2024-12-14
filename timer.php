  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel="stylesheet" href="./css/timer.css" />
  <h4 class="text-dark">Next Lucky Draw in:</h4>
  <div class="countdown">
    <div class="time-box">
      <span id="hours">00</span>
    </div>
    <span class="separator">:</span>
    <div class="time-box">
      <span id="minutes">00</span>
    </div>
    <span class="separator">:</span>
    <div class="time-box">
      <span id="seconds">00</span>
    </div>
  </div>
  <?php
  $sql = "SELECT * FROM input_time WHERE id = 1";
  $result = mysqli_query($con, $sql);
  $row = mysqli_fetch_assoc($result);
  $inputTime = $row['time'];
  ?>
  <script src="https://cdn.jsdelivr.net/npm/countdown@2.6.0/countdown.min.js"></script>
  <script>
    function getTargetTime() {
      // var inputTime = prompt(
      //   'Enter the target time for the countdown (in format HH:MM):'
      // );
      inputTime = '13:20';
      inputTime = <?php echo json_encode($inputTime); ?>;
      // alert(inputTime);
      var parts = inputTime.split(':');
      var targetTime = new Date();
      targetTime.setHours(parts[0], parts[1], 0, 0);
      // alert(targetTime);
      return targetTime;
    }

    function updateCountdown() {
      var currentTime = new Date();
      var timeDifference = targetTime - currentTime;
      // alert(targetTime)
      if (timeDifference > 0) {
        var hours = Math.floor(timeDifference / (1000 * 60 * 60));
        var minutes = Math.floor(
          (timeDifference % (1000 * 60 * 60)) / (1000 * 60)
        );
        var seconds = Math.floor((timeDifference % (1000 * 60)) / 1000);

        // Display the countdown
        document.getElementById('hours').textContent = padZero(hours);
        document.getElementById('minutes').textContent = padZero(minutes);
        document.getElementById('seconds').textContent = padZero(seconds);
      } else {
        // Countdown is over
        // document.getElementById('countdown').textContent =
        //   'Countdown is over!';
        // alert('Countdown is over.');
        // setTimeout(updateOdometer, 2000);
        // var xhttp = new XMLHttpRequest();
        // xhttp.onreadystatechange = function () {
        //   if (this.readyState === 4 && this.status === 200) {
        //     // Code to handle the response from the PHP file
        //     console.log(this.responseText);
        //   }
        // };
        // xhttp.open('GET', './resetNumberAmount.php', true);
        // xhttp.send();

        return; // Stop updating the countdown
      }

      // Update the countdown every second
      setTimeout(updateCountdown, 1000);
    }

    function padZero(value) {
      return value.toString().padStart(2, '0');
    }

    // Get the target time from user input
    var targetTime = getTargetTime();

    // Start the countdown
    updateCountdown();
  </script>