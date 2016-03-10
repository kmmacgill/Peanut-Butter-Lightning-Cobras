<%-- 
    Document   : market
    Created on : Mar 10, 2016, 7:11:24 AM
    Author     : jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Market</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

	<style>

	.gear-box {
		margin: 5px;
	}

	</style>
</head>

<body>

	<div class="container">

		<div class="page-header">
			<h1 class="text-center">Market</h1>
		</div>

		<div class="row">
  		  
  		  <!-- Player's gear -->
  		  <div class="col-md-6">
  		    <h3 class="text-center">Your Gear</h3>
  		  </div>
  		  
  		  <!-- Market gear -->
  		  <div class="col-md-6">
  		    <h3 class="text-center">Available Gear</h3>
  		  </div>
		</div>

		<div class="row">
		  <!-- Your gear -->
		  <div class="col-md-2">
		  <img id="tab-u-w" src="/home/justin/Downloads/pixelart/S_Sword01.png" class="center-block"/>
		  </div>
		  <div class="col-md-1-offset-1 col-md-2">
		  <img id="tab-u-a" src="/home/justin/Downloads/pixelart/E_Wood02.png" class="center-block"/>
		  </div>

          <!-- market gear -->
		  <div class="col-md-offset-4 col-md-2">
		  <img id="tab-m-w" src="/home/justin/Downloads/pixelart/S_Sword01.png" class="center-block"/>
		  </div>
		  <div class="col-md-1-offset-1 col-md-2">
		  <img id="tab-m-a" src="/home/justin/Downloads/pixelart/E_Wood02.png" class="center-block"/>
		  </div>
		</div>
	  </div>

	  <div class="container">
		<!-- Player's actual gear -->
		<div class="row">
		  <div class="col-md-4">

		  	<form action="#" method="POST" id="user-weapons" style="display: block">
	  	      <div class="gear-box">
		        <input type="checkbox" name="user-weapons" /> <b>Sword of Slicing</b> Value: 100
		      </div>
		      <div class="gear-box">
		        <input type="checkbox" name="user-weapons" /> <b>Sword of Slicing</b> Value: 100
		      </div>
		      <div class="gear-box">
		        <input type="checkbox" name="user-weapons" /> <b>Sword of Slicing</b> Value: 100
		      </div>
		      <div class="gear-box">
		        <input type="checkbox" name="usecr-weapons" /> <b>Sword of Slicing</b> Value: 100
		      </div>

		      <input type="submit" class="btn btn-primary" value="Sell selected" name="sell-weapons">
		    </form>

   		  	<form action="#" method="POST" id="user-armor" style="display: none">
	  	      <div class="gear-box">
		        <input type="checkbox" name="armor" /> <b>Mega shield</b> Value: 1000
		      </div>
	  	      <div class="gear-box">
		        <input type="checkbox" name="armor" /> <b>Mega shield</b> Value: 1000
		      </div>
	  	      <div class="gear-box">
		        <input type="checkbox" name="armor" /> <b>Mega shield</b> Value: 1000
		      </div>


		      <input type="submit" class="btn btn-primary" value="Sell selected" name="sell-armor">
		    </form>


		  </div>

		  <div class="col-md-offset-4 col-md-4">
		  	<form action="#" method="post" id="armory-weapons" style="display: block">  
		  	  <div class="gear-box">
		        <input type="checkbox" name="market-weapons" /> <b>Sword of Slicing</b> Value: 100
		      </div>
		      <div class="gear-box">
		        <input type="checkbox" name="market-weapons" /> <b>Sword of Slicing</b> Value: 100
		      </div>
		      <div class="gear-box">
		        <input type="checkbox" name="market-weapons" /> <b>Sword of Slicing</b> Value: 100
		      </div>
		      <input type="submit" class="btn btn-primary" value="Buy selected" name="buy-weapons">
		    </form>
		    <form action="#" method="post" id="armory-weapons" style="display: none">  
		  	  <div class="gear-box">
		        <input type="checkbox" name="market-armor" /> <b>Sword of Slicing</b> Value: 100
		      </div>
		      <div class="gear-box">
		        <input type="checkbox" name="market-armor" /> <b>Sword of Slicing</b> Value: 100
		      </div>
		      <div class="gear-box">
		        <input type="checkbox" name="market-armor" /> <b>Sword of Slicing</b> Value: 100
		      </div>
		      <input type="submit" class="btn btn-primary" value="Buy selected" name="buy-armor">
		    </form>
		  </div>
		</div>

	  <div class="row">

	  </div>

	</div>

	<!-- JQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- set some onclick listeners -->
	<script>
	$("#tab-u-w").click(function() { $("#user-weapons").css("display", "block");
									 $("#user-armor").css("display", "none");});
	$("#tab-u-a").click(function() { $("#user-weapons").css("display", "none");
									 $("#user-armor").css("display", "block");});
	$("#tab-m-w").click(function() { $("#market-weapons").css("display", "block");
									 $("#market-armor").css("display", "none");});
	$("#tab-m-a").click(function() { $("#market-weapons").css("display", "none");
									 $("#market-armor").css("display", "block");});
	</script>

</body>

</html>
