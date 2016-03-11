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
            .floatLeft{
                border: 3px solid black;
                float: left;
                width: 30%;
            }
            .imgHeight{
                height: 100px;
            }
            .inventory{
                height: 200px;
            }
            .pageHeader{
                height: 100px;
                background-color: lightgray;
            }
            .gear-box {
		margin: 5px;
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
        </style>
        <title>Inventory</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-6">
                        <img id="tab-w" class="center-block" src="imgs/S_Sword01.png">
                    </div>
                    <div class="col-md-6">
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
                <div class="row pageHeader"> 
                    <h1 class="text-center">Equipped Gear</h1>
                </div>
                <div class="row imgHeight"></div>
                <div class="row inventory">
                    <img class="center-block imgHeight" src="imgs/C_Elm03.png">
                </div>
                <div class="row inventory">
                    <div class="col-md-4"><img class="center-block imgHeight" src="imgs/S_Sword01.png"></div>
                    <div class="col-md-4"><img class="center-block imgHeight" src="imgs/A_Armour02.png"></div>
                    <div class="col-md-4"><img class="center-block imgHeight" src="imgs/E_Wood02.png"></div>
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
