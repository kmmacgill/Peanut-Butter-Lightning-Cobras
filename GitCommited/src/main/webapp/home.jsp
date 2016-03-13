<%-- 
    Document   : home
    Created on : Mar 10, 2016, 7:10:51 AM
    Author     : jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!-- my theme -->
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <title>Home Page</title>
    </head>
    <body>
        <div class="jumbotron">
            <div class="row">
                <div class="center-block">
                    <h1 class="text-center">Welcome to GitCommitted</h1>
                    <p class="text-center">Where Battle Awaits</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class='center-block'>
                <h2 class="text-center">You've earned 45,753.9 Gold since your last visit!</h2>
            </div>
        </div>
        
        <div class="row"></div>
        
        <div class='row'>
            <div class='col-md-3'>
                <a href="/GitCommited/market.jsp"> <image class="img-responsive center-block" src="imgs/market-icon.png" height="275dp" width="275dp"/></a>
                <h2 class="text-center">Market</h2>
            </div>
            <div class='col-md-3'>
                <a href="/GitCommited/smithing.jsp"> <image class="img-responsive center-block" src="imgs/anvil-icon.png" height="275dp" width="275dp"/></a>
                <h2 class="text-center">Smithy</h2>
            </div>
            <div class='col-md-3'>
                <a href="/GitCommited/combatSelection.jsp"> <image class="img-responsive center-block" src="imgs/battle-Icon.png" height="275dp" width="275dp"/></a>
                <h2 class="text-center">Arena</h2>
            </div>
            <div class='col-md-3'>
                <a href="/GitCommited/inventory.jsp"> <image class="img-responsive center-block" src="imgs/pouch-icon.png" height="275dp" width="275dp"/></a>
                <h2 class="text-center">Inventory</h2>
            </div>
        </div>
       
    </body>
</html>
