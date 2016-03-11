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
                height: 100;
                background-color: lightgray;
            }
        </style>
        <title>Inventory</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-6">
                    <img class="center-block" src="imgs/A_Armour02.png">
                    </div>
                    <div class="col-md-6">
                    <img class="center-block" src="imgs/S_Sword01.png">
                    </div>
                </div>
                <div class="scrollingLeftDiv">
                    List of items will be added.
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
                    <div class="col-md-4"><img class="center-block imgHeight" src="imgs/E_Wood04.png"></div>
                </div>
                <div class="row inventory">
                    <img class="center-block imgHeight" src="imgs/A_Shoes03.png">
                </div>
            </div>
        </div>
    </body>
</html>
