<%-- 
    Document   : combatSelection
    Created on : Mar 10, 2016, 7:12:59 AM
    Author     : jason
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                  <li><a href="Market">MARKET</a></li>
                  <li><a href="smithing.jsp">SMITHY</a></li>
                  <li class="active"><a href="combatSelection.jsp">ARENA</a></li>
                  <li><a href="Inventory">INVENTORY</a></li>
                  <li><a href="Logout">LOG OFF</a></li>
                </ul>
              </div>
                
            </div>
        </nav>
        
        <br />
        <br />
        <br />
        
        <c:forEach items="${users}" var="user">
            <div class="container narrow">
                <div class="row player">
                    <div class="col-md-4">
                        <!--
                        <img src="imgs/profile.jpg" class="img-circle" alt="ProfilePic" width="100px">
                        -->
                        <p class="large text-center">${user.username}</p>
                    </div>
                    <div class="col-md-4">
                        <ul class="text-center">
                            <li class="large">${user.wins} Wins</li>
                            <li class="large">${user.losses} Losses</li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <a href="/Combat?foe=${user.id}"><image src="imgs/fightButton.png" height="75dp" width="200dp"/></a>
                    </div>
                </div>
            </div>
        </c:forEach>
        
    </body>
</html>
