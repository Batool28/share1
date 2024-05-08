<!DOCTYPE html>
<html  >
<head>
   
<link rel="shortcut icon" type="image/png" href="assets/uploads/1696946760_logo_small.png"> <!-- icon !-->
  <title>Sharing Economy Platform (Shareit) </title>
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">  <!-- Page format !-->
  <link rel="stylesheet" href="assets/dropdown/css/style.css"> <!-- it pins the taskbar when you move !-->
  <link rel="stylesheet" href="assets/main/css/mbr-additional.css" type="text/css">  <!-- page formatting in color !-->
</head>
<body>
	 <!-- include database !-->
<section data-bs-version="5.1" class="menu menu1 cid-tJGsCG1vVL" once="menu" id="menu01-1"> 
<?php

$conn= new mysqli('localhost','root','','share')or die("Could not connect to mysql".mysqli_error($con));  
?>
<!-- page bar !-->
<nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg"> 
  <div class="container">
    <div class="navbar-brand">
      <span class="navbar-logo">
        <a href="index.html#top">
          <img src="assets/uploads/1696946760_logo.png" alt="">

        </a>
      </span>

    </div>
<!-- Add link to page Home,car !-->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
        <li class="nav-item"><a class="nav-link link text-secondary display-4" href="index.php">Home</a></li>
        <li class="nav-item"><a class="nav-link link text-secondary display-4" href="car.php">Car Rental</a></li>


    </div>
  </div>
</nav>
</section>

<section data-bs-version="5.1" style="background-color:#fff" class="features4 cid-tJGKiS9ad3" id="features04-5"> <!-- Format and color (car list)!-->

   
	<div class="container" style="background-color:#fff">
		<div class="mbr-section-head mb-5">
			<!--Space!-->
		<br><br><br><br><br><br>	<h4 class="mbr-section-title mbr-fonts-style align-left mb-3 display-1"> <!--The sentence is in the middle and color and Strong!-->
				<strong>List Of Car</strong></h4>
			<h5 class="mbr-section-subtitle mbr-fonts-style align-left mb-3 display-7">Some cars created by our creators.</h5>
<!--The sentence is in the middle and color and Strong!-->
		</div> 
		<!--Data containd within database!-->
		<!--Displays the data inside the car table!-->
		<div class="row">
      <?php 	$plan = $conn->query("SELECT * FROM car "); 
          while($row=$plan->fetch_assoc()):
             ?>
			<div class="item features-image col-12 col-md-6 col-lg-4 active">
				<div class="item-wrapper">
					<div class="item-img">
							<img src="assets/img/<?php echo $row['photo'] ?>"  alt="Mobirise Website Builder" data-slide-to="0" data-bs-slide-to="0">
					</div>
					<div class="item-content">
						<h5 class="item-title mbr-fonts-style display-5">
							<strong><?php echo $row['name'] ?></strong> <!--name include to The table car!-->
						</h5>
              <strong><?php echo $row['Color'] ?></strong>
              <strong><?php echo $row['Model'] ?></strong>

						<h6 class="item-subtitle mbr-fonts-style display-7">
							<strong><?php echo $row['priceInDay'] ?>RS in one day</strong>
						</h6>

						<div class="mbr-section-btn item-footer"><a href="contactowner.php" class="btn item-btn btn-secondary display-7">Contact with owner</a></div> <!--link about contact!-->
					</div>
				</div>
			</div>
    <?php endwhile; ?>




		</div>
	</div>
</section>

