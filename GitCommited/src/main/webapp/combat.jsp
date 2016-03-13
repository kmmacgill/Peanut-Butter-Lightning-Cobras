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
        <!-- my theme -->
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <title>combat</title>
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
                  <li class="active"><a href="combatSelection.jsp">ARENA</a></li>
                  <li><a href="inventory.jsp">INVENTORY</a></li>
                  <li><a href="#">LOG OFF</a></li>
                </ul>
              </div>
                
            </div>
        </nav>
        <div class="jumbotron">
            <div class="row">
                <div class="center-block">
                    <h1 class="text-center">FIGHT</h1>
                    <p class="text-center">Where Battle Awaits</p>
                </div>
            </div>
        </div>     
       
        <div class="row">
                <div class="col-md-4">
                    <image class="img-responsive center-block" src="imgs/healthBar.png" height="25dp" width="500dp"/>
                    <image class="img-responsive center-block" src="imgs/profile.jpg" height="100dp" width="100dp"/>
                    <h3 class="text-center">Opponent 1</h3>
                </div>
                
                <div class="col-md-4">
                    <image class="img-responsive center-block" src="imgs/VS.png" height="200dp" width="200dp"/>
                </div>
                
                <div class="col-md-4">
                    <image class="img-responsive center-block" src="imgs/healthBar.png" height="25dp" width="500dp"/>
                    <image class="img-responsive center-block" src="imgs/profile.jpg" height="100dp" width="100dp"/>
                    <h3 class="text-center">Opponent 2</h3>
                </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <image class="img-responsive center-block" src="imgs/cmdprompt.gif" height="500dp" width="1500dp"/>
            </div>
        </div>
        
    </body>
</html>
