<%-- 
    Document   : home
    Created on : Mar 10, 2016, 7:10:51 AM
    Author     : jason
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--code to include other html files, could be useful for our -->
<!--<div w3-include-HTML="content.html">My HTML include will go here.</div>-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <c:if test="${sessionScope.userName == null}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!-- my theme -->
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <title>Home Page</title>
    </head>
    <body>        
        <div class="container">
        <div class="jumbotron">
            <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                        <image src="imgs/user-icon.png" height="40dp" width="40dp"/>
                <span class="caret"></span></button>
                <ul class="dropdown-menu">
                   <li><a href="Logout">Log off</a></li>
                </ul>
            </div>
            
            <div class="row">
                <div class="center-block">
                    <h1 class="text-center">Welcome to GitCommitted ${sessionScope.userName}</h1>
                    <p class="text-center">Where Battle Awaits</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class='center-block'>
                <h2 class="text-center">You currently have  Gold!</h2>
            </div>
        </div>
        
        <div class="row"></div>
        
        <div class='row'>
            <div class='col-md-3'>
                <a href="/GitCommited/Market"> <image class="img-responsive center-block" src="imgs/market-icon.png" height="275dp" width="275dp"/></a>
                <h2 class="text-center">Market</h2>
            </div>
            <div class='col-md-3'>
                <a href="/GitCommited/smithing.jsp"> <image class="img-responsive center-block" src="imgs/anvil-icon.png" height="275dp" width="275dp"/></a>
                <h2 class="text-center">Smithy</h2>
            </div>
            <div class='col-md-3'>
                <a href="/GitCommited/CombatSelection"> <image class="img-responsive center-block" src="imgs/battle-Icon.png" height="275dp" width="275dp"/></a>
                <h2 class="text-center">Arena</h2>
            </div>
            <div class='col-md-3'>
                <a href="/GitCommited/inventory.jsp"> <image class="img-responsive center-block" src="imgs/pouch-icon.png" height="220dp" width="220dp"/></a>
                <h2 class="text-center">Inventory</h2>
            </div>
        </div>
        </div>
    </body>
</html>
