<%-- 
    Document   : inventory
    Created on : Mar 10, 2016, 7:12:12 AM
    Author     : jason
--%>

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
                  <li><a href="market.jsp">MARKET</a></li>
                  <li><a href="smithing.jsp">SMITHY</a></li>
                  <li><a href="combatSelection.jsp">ARENA</a></li>
                  <li class="active"><a href="inventory.jsp">INVENTORY</a></li>
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
                    <h1 class="text-center">manage your inventory</h1>
                    <p class="text-center">Where Battle Awaits</p>
                </div>
            </div>
        </div>
        
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
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Blade of Glory</b><img src="imgs/S_Sword03.png"></span>
                            <div class="myHidden">
                                <b>Blade of Glory</b><img src="imgs/S_Sword03.png">
                                <p>
                                    &emsp;Base Damage: 1200<br>
                                    &emsp;Fire Damage: 1200<br>
                                    &emsp;Poison Damage: 1200<br>
                                    &emsp;Cold Damage: 1200<br>
                                    &emsp;Lightning Damage: 1200<br>
                                </p>
                            </div>
                        </div>
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Blade of Glory</b><img src="imgs/S_Sword03.png"></span>
                            <div class="myHidden">
                                <b>Blade of Glory</b><img src="imgs/S_Sword03.png">
                                <p>
                                    &emsp;Base Damage: 1200<br>
                                    &emsp;Fire Damage: 1200<br>
                                    &emsp;Poison Damage: 1200<br>
                                    &emsp;Cold Damage: 1200<br>
                                    &emsp;Lightning Damage: 1200<br>
                                </p>
                            </div>
                        </div>
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Blade of Glory</b><img src="imgs/S_Sword03.png"></span>
                            <div class="myHidden">
                                <b>Blade of Glory</b><img src="imgs/S_Sword03.png">
                                <p>
                                    &emsp;Base Damage: 1200<br>
                                    &emsp;Fire Damage: 1200<br>
                                    &emsp;Poison Damage: 1200<br>
                                    &emsp;Cold Damage: 1200<br>
                                    &emsp;Lightning Damage: 1200<br>
                                </p>
                            </div>
                        </div>
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Blade of Glory</b><img src="imgs/S_Sword03.png"></span>
                            <div class="myHidden">
                                <b>Blade of Glory</b><img src="imgs/S_Sword03.png">
                                <p>
                                    &emsp;Base Damage: 1200<br>
                                    &emsp;Fire Damage: 1200<br>
                                    &emsp;Poison Damage: 1200<br>
                                    &emsp;Cold Damage: 1200<br>
                                    &emsp;Lightning Damage: 1200<br>
                                </p>
                            </div>
                        </div>
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Blade of Glory</b><img src="imgs/S_Sword03.png"></span>
                            <div class="myHidden">
                                <b>Blade of Glory</b><img src="imgs/S_Sword03.png">
                                <p>
                                    &emsp;Base Damage: 1200<br>
                                    &emsp;Fire Damage: 1200<br>
                                    &emsp;Poison Damage: 1200<br>
                                    &emsp;Cold Damage: 1200<br>
                                    &emsp;Lightning Damage: 1200<br>
                                </p>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary" value="Select">
                    </form>
                    
                    <form action="#" method="POST" id="armor" style="display: none">
                         <div>
                            <span><input type="radio" name="weapons" value=""/><b>Helm of the Ram</b><img src="imgs/C_Elm03.png"></span>
                            <div class="myHidden">
                                <b>Helm of The Ram</b><img src="imgs/C_Elm03.png">
                                <p>
                                    &emsp;Base Armor: 1200<br>
                                    &emsp;Fire Resist: 1200<br>
                                    &emsp;Poison Resist: 1200<br>
                                    &emsp;Cold Resist: 1200<br>
                                    &emsp;Lightning Resist: 1200<br>
                                </p>
                            </div>
                        </div>
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Helm of the Ram</b><img src="imgs/C_Elm03.png"></span>
                            <div class="myHidden">
                                <b>Helm of The Ram</b><img src="imgs/C_Elm03.png">
                                <p>
                                    &emsp;Base Armor: 1200<br>
                                    &emsp;Fire Resist: 1200<br>
                                    &emsp;Poison Resist: 1200<br>
                                    &emsp;Cold Resist: 1200<br>
                                    &emsp;Lightning Resist: 1200<br>
                                </p>
                            </div>
                        </div>
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Helm of the Ram</b><img src="imgs/C_Elm03.png"></span>
                            <div class="myHidden">
                                <b>Helm of The Ram</b><img src="imgs/C_Elm03.png">
                                <p>
                                    &emsp;Base Armor: 1200<br>
                                    &emsp;Fire Resist: 1200<br>
                                    &emsp;Poison Resist: 1200<br>
                                    &emsp;Cold Resist: 1200<br>
                                    &emsp;Lightning Resist: 1200<br>
                                </p>
                            </div>
                        </div>
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Helm of the Ram</b><img src="imgs/C_Elm03.png"></span>
                            <div class="myHidden">
                                <b>Helm of The Ram</b><img src="imgs/C_Elm03.png">
                                <p>
                                    &emsp;Base Armor: 1200<br>
                                    &emsp;Fire Resist: 1200<br>
                                    &emsp;Poison Resist: 1200<br>
                                    &emsp;Cold Resist: 1200<br>
                                    &emsp;Lightning Resist: 1200<br>
                                </p>
                            </div>
                        </div>
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Helm of the Ram</b><img src="imgs/C_Elm03.png"></span>
                            <div class="myHidden">
                                <b>Helm of The Ram</b><img src="imgs/C_Elm03.png">
                                <p>
                                    &emsp;Base Armor: 1200<br>
                                    &emsp;Fire Resist: 1200<br>
                                    &emsp;Poison Resist: 1200<br>
                                    &emsp;Cold Resist: 1200<br>
                                    &emsp;Lightning Resist: 1200<br>
                                </p>
                            </div>
                        </div>
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Helm of the Ram</b><img src="imgs/C_Elm03.png"></span>
                            <div class="myHidden">
                                <b>Helm of The Ram</b><img src="imgs/C_Elm03.png">
                                <p>
                                    &emsp;Base Armor: 1200<br>
                                    &emsp;Fire Resist: 1200<br>
                                    &emsp;Poison Resist: 1200<br>
                                    &emsp;Cold Resist: 1200<br>
                                    &emsp;Lightning Resist: 1200<br>
                                </p>
                            </div>
                        </div>
                        <div>
                            <span><input type="radio" name="weapons" value=""/><b>Helm of the Ram</b><img src="imgs/C_Elm03.png"></span>
                            <div class="myHidden">
                                <b>Helm of The Ram</b><img src="imgs/C_Elm03.png">
                                <p>
                                    &emsp;Base Armor: 1200<br>
                                    &emsp;Fire Resist: 1200<br>
                                    &emsp;Poison Resist: 1200<br>
                                    &emsp;Cold Resist: 1200<br>
                                    &emsp;Lightning Resist: 1200<br>
                                </p>
                            </div>
                        </div>
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
