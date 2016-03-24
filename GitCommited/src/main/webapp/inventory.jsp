<%-- 
    Document   : inventory
    Created on : Mar 10, 2016, 7:12:12 AM
    Author     : jason
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- my theme -->
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <style>
            .imgHeight{
                height: 60px;
            }
            .inventory{
                height: 170px;
            }
            span:hover + div {
                display: block;
            }
            .myHidden{
                background-color: lightgray;
                padding: 20px;
                display: none;
            }
            .weaponImg{
                float: right;
            }
            .pad{
                padding-top: 10px;
            }
            .left{
                float: right;
            }
            .scrollingLeftDiv {
                height: 600px;
                overflow: scroll;
                padding: 10px;
                margin: 0;
            }
        </style>
        <title>Inventory</title>
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
                  <li><a href="Market">MARKET</a></li>
                  <li><a href="smithing.jsp">SMITHY</a></li>
                  <li><a href="combatSelection.jsp">ARENA</a></li>
                  <li class="active"><a href="Inventory">INVENTORY</a></li>
                  <li><a href="#">LOG OFF</a></li>
                </ul>
              </div>
                
            </div>
        </nav>
        
        <br />
        <br />
        <br />
        
        <div class="row">
            <div class="col-md-3">
                <div class="row pad">
                    <div class="col-xs-6">
                        <img id="tab-w" class="center-block" src="imgs/S_Sword01.png">
                    </div>
                    <div class="col-xs-6">
                    <img id="tab-a" class="center-block" src="imgs/E_Wood02.png">
                    </div>
                </div>
                
                
                <div class="scrollingLeftDiv">
                    <form action="#" method="POST" id="weapons" style="display: block">
                        
                        <c:forEach items="${userWeapons}" var="weapon">
                            <div>
                                <span><input type="radio" name="weapons"/><b>${weapon.name}</b><img src="imgs/S_Sword01.png"></span>
                                <div class="myHidden">
                                    <b>${weapon.name}</b><img src="imgs/S_Sword01.png">
                                    <p>
                                        &emsp;Base Damage: ${weapon.quality}<br>
                                        &emsp;Fire Damage: ${weapon.fire}<br>
                                        &emsp;Cold Damage: ${weapon.cold}<br>
                                        &emsp;Lightning Damage: ${weapon.lightning}<br>
                                    </p>
                                </div>
                            </div>
                        </c:forEach>
                        
                        <input type="submit" class="btn btn-primary" value="Select">
                    </form>
                    
                    <form action="#" method="POST" id="armor" style="display: none">
                        <c:forEach items="${userArmor}" var="armor"> 
                            <div>
                                <span><input type="radio" name="weapons"/><b>${armor.name}</b><img src="imgs/C_Elm03.png"></span>
                                <div class="myHidden">
                                    <b>${armor.name}</b><img src="imgs/C_Elm03.png">
                                    <p>
                                        &emsp;Base Armor: ${armor.quality}<br>
                                        &emsp;Fire Resist: ${armor.fire}<br>
                                        &emsp;Cold Resist: ${armor.cold}<br>
                                        &emsp;Lightning Resist: ${armor.lightning}<br>
                                    </p>
                                </div>
                            </div>
                        </c:forEach>
                        <input type="submit" class="btn btn-primary" value="Select">
                    </form>
                </div>  
            </div>
            
            <div class = "col-md-9">  
                <h1 class="text-center">Equipped Gear</h1>
                <div class="row imgHeight"></div>
                <div class="row inventory">
                    <img class="center-block imgHeight" src="imgs/C_Elm03.png">
                </div>
                <div class="row inventory">
                    <div class="col-md-4"><img class="left imgHeight" src="imgs/S_Sword01.png"></div>
                    <div class="col-md-4"><img class="center-block imgHeight" src="imgs/A_Armour02.png"></div>
                    <div class="col-md-4"><img class="imgHeight" src="imgs/E_Wood02.png"></div>
                </div>
                <div class="row inventory">
                    <img class="center-block imgHeight" src="imgs/A_Shoes03.png">
                </div>
            </div>
        </div>
        <!-- JQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- set some onclick listeners -->
	<script>
	$("#tab-w").click(function() { $("#weapons").css("display", "block");
									 $("#armor").css("display", "none");});
	$("#tab-a").click(function() { $("#weapons").css("display", "none");
									 $("#armor").css("display", "block");});
	</script>
    </body>
</html>
