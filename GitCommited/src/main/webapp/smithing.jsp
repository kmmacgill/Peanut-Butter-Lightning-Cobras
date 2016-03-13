<%-- 
    Document   : smithing
    Created on : Mar 10, 2016, 7:11:47 AM
    Author     : jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Smithing</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

	<style>
	.options {
		height: 300px;
		width: 500px;
		position: relative;
		margin: 0 auto;
	}
	.gear {
		text-align: center;
		width: 30%;
	  	height: 30%;
  		overflow: auto;
  		margin: auto;
  		position: absolute;
  		top: 0; left: 0; bottom: 0; right: 0;
	}
	.left {
		float: left;
	}
	.right {
		float: right;
	}
	.bottom-left {
		position: absolute;
    	bottom: 0;
	}
	.bottom-right {
		position: absolute;
		bottom: 0;
		right: 0;
	}
	</style>
</head>

    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
            <a class="navbar-brand" href="home.jsp"><img src="imgs/fight.gif-c200" class="img-circle topLeft" width="30" alt="logo"></a>
            <div class="container">
                
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
              </div>

              <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="home.jsp">HOME</a></li>
                  <li><a href="market.jsp">MARKET</a></li>
                  <li class="active"><a href="smithing.jsp">SMITHY</a></li>
                  <li><a href="combatSelection.jsp">ARENA</a></li>
                  <li><a href="inventory.jsp">INVENTORY</a></li>
                  <li>
                      <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                        <image src="imgs/user-icon.png" height="40dp" width="40dp"/>
                        <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                          <li><a href="#">Account Settings</a></li>
                          <li><a href="#">Log off</a></li>
                        </ul>
                      </div>
                  </li>
                </ul>
              </div>
                
            </div>
        </nav>
        
        <div class="jumbotron">
            <div class="row">
                <div class="center-block">
                    <h1 class="text-center">Smith ye your armour</h1>
                    <p class="text-center">Where Battle Awaits</p>
                </div>
            </div>
        </div> 
        
	<div class="container">

		<div class="page-header text-center">
			<h1>Smith Something</h1>
			<div class="btn-group">
			  <button type="button" class="btn btn-primary" id="btn-sword">Sword</button>
			  <button type="button" class="btn btn-primary" id="btn-chest">Chest</button>
			  <button type="button" class="btn btn-primary" id="btn-helm">Helm</button>
			  <button type="button" class="btn btn-primary" id="btn-legs">Legs</button>
			  <button type="button" class="btn btn-primary" id="btn-shield">Shield</button>
			</div>
		</div>

		<img src="imgs/smith2.gif" style="float:right" width="75px"/>
		<div class="options">
			<div class="top left">
				<img src="imgs/S_Fire02.png" /> Fire <span class="dmg">Damage</span>
				<br />
				<input type="number" class="form-control">
			</div>
			<div class="top right">
				<img src="imgs/S_Ice02.png" /> Cold <span class="dmg">Damage</span>
				<br />
				<input type="number" class="form-control">
			</div>
			<div class="bottom-left">
				<img src="imgs/S_Thunder04.png" /> Lightning <span class="dmg">Damage</span>
				<br />
				<input type="number" class="form-control">
			</div>
			<div class="bottom-right">
				<img src="imgs/S_Sword10.png" id="quality" /> Quality
				<br />
				<input type="number" class="form-control">
			</div>
			<div class="gear">
				<img src="imgs/W_Sword004.png" width="48px" id="result" />
				<br /><br />
				<span id="amount">4324</span> Gold
			</div>
		</div>
		<br><br>
		<center>
			<button class="btn btn-primary" type="submit">Smith It</button>
		</center>
			
	</div>

	<!-- JQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- set onclicks -->
	<script type="text/javascript">
		$("#btn-sword").click(function() {
			$("#result").attr("src", "imgs/W_Sword004.png");
			$(".dmg").html("Damage"); });
		$("#btn-shield").click(function() {
			$("#result").attr("src", "imgs/E_Wood03.png");
			$(".dmg").html("Resistance");
		});
		$("#btn-legs").click(function() {
			$("#result").attr("src", "imgs/A_Shoes03.png");
			$(".dmg").html("Resistance");
		});
		$("#btn-chest").click(function() {
			$("#result").attr("src", "imgs/A_Armor04.png");
			$(".dmg").html("Resistance");
		});
		$("#btn-helm").click(function() {
			$("#result").attr("src", "imgs/C_Elm03.png");
			$(".dmg").html("Resistance");
		});
	</script>

</body>

</html>