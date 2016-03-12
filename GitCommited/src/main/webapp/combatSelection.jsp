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
            li{
                font-size: xx-large;
            }
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
        </style>
    </head>
    <body>
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
        
        <div class="container narrow">
            <div class="row player">
                <div class="col-md-4">
                    <img src="imgs/profile.jpg" class="img-circle" alt="ProfilePic" width="100px">
                </div>
                <div class="col-md-4">
                    <ul class="text-center">
                        <li>5 Wins</li>
                        <li>2 Losses</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <button class="btn btn-primary mid">Battle</button>
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
                        <li>5 Wins</li>
                        <li>2 Losses</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <button class="btn btn-primary mid">Battle</button>
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
                        <li>5 Wins</li>
                        <li>2 Losses</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <button class="btn btn-primary mid">Battle</button>
                </div>
            </div>
        </div>
    </body>
</html>
