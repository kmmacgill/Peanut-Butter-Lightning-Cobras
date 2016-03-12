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
                <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- bootstrap theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- my theme -->
        <link rel="stylesheet" type="text/css" href="css/home.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
                </ul>
              </div>
                
            </div>
        </nav>
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-3">
                    
                    <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                            <image src="imgs/user-icon.png" height="75dp" width="75dp"/>
                        <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                          <li><a href="#">Account Settings</a></li>
                          <li><a href="#">Log off</a></li>
                        </ul>
                    </div>
                    
                </div>
                
                <div class="col-md-7">
                    <h1 class="text-center">Welcome to GitCommitted...</h1>
                    <p class="text-center">Ready... FIGHT!</p>
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
