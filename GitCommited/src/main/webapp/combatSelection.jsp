<%-- 
    Document   : combatSelection
    Created on : Mar 10, 2016, 7:12:59 AM
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
        <title>Combat Selection</title>
        <style>
            ul{
                list-style-type: none;
            }
            .mid{
                margin-top: 9%;
                float:right;
            }
            .player{
                border-width: 2px;
                border-color: black;
                border-style: solid;
                margin: 5px;
            }
            .narrow{
                width: 70%;
            }
            .large{
                font-size: xx-large;
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
                  <li><a href="smithing.jsp">SMITHY</a></li>
                  <li class="active"><a href="combatSelection.jsp">ARENA</a></li>
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
                    <h1 class="text-center">choose ye your victim</h1>
                    <p class="text-center">Where Battle Awaits</p>
                </div>
            </div>
        </div> 
        
        <div class="container narrow">
            <div class="row player">
                <div class="col-md-4">
                    <img src="imgs/profile.jpg" class="img-circle" alt="ProfilePic" width="100px">
                </div>
                <div class="col-md-4">
                    <ul class="text-center">
                        <li class="large">5 Wins</li>
                        <li class="large">2 Losses</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <a href="/GitCommited/combat.jsp"><image src="imgs/fightButton.png" height="75dp" width="200dp"/></a>
                </div>
            </div>
        </div>
        <div class="container narrow">
            <div class="row player">
                <div class="col-md-4">
                    <img src="imgs/profile.jpg" class="img-circle" alt="ProfilePic" width="100px">
                </div>
                <div class="col-md-4">
                    <ul class="text-center">
                        <li class="large">5 Wins</li>
                        <li class="large">2 Losses</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <a href="/GitCommited/combat.jsp"><image src="imgs/fightButton.png" height="75dp" width="200dp"/></a>
                </div>
            </div>
        </div>
        <div class="container narrow">
            <div class="row player">
                <div class="col-md-4">
                    <img src="imgs/profile.jpg" class="img-circle" alt="ProfilePic" width="100px">
                </div>
                <div class="col-md-4">
                    <ul class="text-center">
                        <li class="large">5 Wins</li>
                        <li class="large">2 Losses</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <a href="/GitCommited/combat.jsp"><image src="imgs/fightButton.png" height="75dp" width="200dp"/></a>
                </div>
            </div>
        </div>
    </body>
</html>
