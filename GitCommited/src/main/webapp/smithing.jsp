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
        <link rel="stylesheet" type="text/css" href="css/home.css">

	<style>
	.options {
		height: 350px;
		width: 500px;
		position: relative;
		margin: 0 auto;
	}
	.gear {
		text-align: center;
		width: 30%;
	  	height: 50%;
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
                  <li><a href="#">LOG OFF</a></li>
                </ul>
              </div>
                
            </div>
        </nav>
        
        <br />
        <br />
        <br />
	<div class="container">
            
            <form action="SmithIt" method="POST">
                
                <!-- so the backend will know what type of item to smith -->
                <input type="hidden" value="sword" name="type" id="type">

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
				<input type="number" min="0" value="0" class="form-control extras" id="fire" name="fire">
			</div>
			<div class="top right">
				<img src="imgs/S_Ice02.png" /> Cold <span class="dmg">Damage</span>
				<br />
				<input type="number" min="0" value="0" class="form-control extras" id="cold" name="cold">
			</div>
			<div class="bottom-left">
				<img src="imgs/S_Thunder04.png" /> Lightning <span class="dmg">Damage</span>
				<br />
				<input type="number" min="0" value="0" class="form-control extras" id="lightning" name="lightning">
			</div>
			<div class="bottom-right">
				<img src="imgs/S_Sword10.png" /> Quality
				<br />
				<input type="number" min="0" value="0" class="form-control extras" id="quality" name="quality">
			</div>
			<div class="gear">
				<img src="imgs/W_Sword004.png" width="48px" id="result" />
				<br /><br />
                                Fire <span class="dmg">Damage</span>: <span id="fire-amount">0</span><br />
                                Cold <span class="dmg">Damage</span>: <span id="cold-amount">0</span><br />
                                Lightning <span class="dmg">Damage</span>: <span id="lightning-amount">0</span><br />
                                Base <span class="type">Damage</span>: <span id="type-amount">10</span><br />
				Gold: <span id="amount">100</span>
			</div>
		</div>
		<br><br>
		<center>
			<button class="btn btn-primary" type="submit">Smith It</button>
		</center>
            </form>
			
	</div>

	<!-- JQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- set js events -->
	<script type="text/javascript">
            
            $(".extras").blur(function() {
                var sum = 0;
                
                $(".extras").each(function() {
                    sum += Number($(this).val());
                });
                
                // set the total
                // base cost is 100, plus x^2, where x is
                // the number of extras, all times 1.5
                $("#amount").html(Math.round(Math.pow(sum, 2) + 100) * 1.5);
                
                // set the other item attributes
                $("#fire-amount").html($("#fire").val());
                $("#cold-amount").html($("#cold").val());
                $("#lightning-amount").html($("#lightning").val());
                $("#type-amount").html(Number($("#quality").val()) + 10);
            });
            
            $("#btn-sword").click(function() {
		$("#result").attr("src", "imgs/W_Sword004.png");
		$(".dmg").html("Damage");
                $(".type").html("Damage");
                $("#quality").removeAttr("max");
                $("#type").val("sword");
            });
            $("#btn-shield").click(function() {
		$("#result").attr("src", "imgs/E_Wood03.png");
		$(".dmg").html("Resistance");
                $(".type").html("Block Rate");
                $("#quality").attr("max", "60");
                // max value is 60
                if ($("#quality").val() > 60) {
                    $("#quality").val(60);
                }
                $("#type").val("shield");
            });
            $("#btn-legs").click(function() {
		$("#result").attr("src", "imgs/A_Shoes03.png");
		$(".dmg").html("Resistance");
                $(".type").html("Armor Rating");
                $("#quality").removeAttr("max");
                $("#type").val("legs");
            });
            $("#btn-chest").click(function() {
		$("#result").attr("src", "imgs/A_Armor04.png");
		$(".dmg").html("Resistance");
                $(".type").html("Armor Rating");
                $("#quality").removeAttr("max");
                $("#type").val("chest");
            });
            $("#btn-helm").click(function() {
		$("#result").attr("src", "imgs/C_Elm03.png");
		$(".dmg").html("Resistance");
                $(".type").html("Armor Rating");
                $("#quality").removeAttr("max");
                $("#type").val("helm");
            });
	</script>

</body>

</html>