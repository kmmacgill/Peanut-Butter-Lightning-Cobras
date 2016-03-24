<%-- 
    Document   : market
    Created on : Mar 10, 2016, 7:11:24 AM
    Author     : jason
--%>

<%@page import="java.util.List"%>
<%@page import="objects.Gear"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <title>Market</title>

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
            <link rel="stylesheet" type="text/css" href="css/home.css">
            <style>

            .gear-box {
                    margin: 5px;
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
                  <li class="active"><a href="Market">MARKET</a></li>
                  <li><a href="smithing.jsp">SMITHY</a></li>
                  <li><a href="combatSelection.jsp">ARENA</a></li>
                  <li><a href="inventory.jsp">INVENTORY</a></li>
                  <li><a href="#">LOG OFF</a></li>
                </ul>
              </div>
                
            </div>
        </nav>
        
        <br />
        <br />
        <br />

            <div class="container">

                    <div class="page-header">
                            <h1 class="text-center">Market</h1>
                    </div>

                    <div class="row">

                      <!-- Player's gear -->
                      <div class="col-md-6">
                        <h3 class="text-center">Your Gear</h3>
                      </div>

                      <!-- Market gear -->
                      <div class="col-md-6">
                        <h3 class="text-center">Available Gear</h3>
                      </div>
                    </div>

                    <div class="row">
                      <!-- Your gear -->
                      <div class="col-md-2">
                      <img id="tab-u-w" src="imgs/S_Sword01.png" class="center-block"/>
                      </div>
                      <div class="col-md-1-offset-1 col-md-2">
                      <img id="tab-u-a" src="imgs/E_Wood02.png" class="center-block"/>
                      </div>

                      <!-- market gear -->
                      <div class="col-md-offset-4 col-md-2">
                      <img id="tab-m-w" src="imgs/S_Sword01.png" class="center-block"/>
                      </div>
                      <div class="col-md-1-offset-1 col-md-2">
                      <img id="tab-m-a" src="imgs/E_Wood02.png" class="center-block"/>
                      </div>
                    </div>
              </div>

              <div class="container">
                    <!-- Player's actual gear -->
                    <div class="row">
                      <div class="col-md-4">

                            <form action="Sell" method="POST" id="user-weapons" style="display: block">
                              
                                <c:forEach items="${userWeapons}" var="weapon">
                                    <div class="gear-box">
                                        <input type="checkbox" name="user-weapons" value="${weapon.id}"> <b>${weapon.name}</b> Value: ${weapon.getHalfValue()}
                                    </div>
                                </c:forEach>
                                
                                
                          <input type="submit" class="btn btn-primary" value="Sell selected" name="sell-weapons">
                        </form>

                            <form action="Sell" method="POST" id="user-armor" style="display: none">
                          
                                <c:forEach items="${userArmor}" var="armor">
                                    <div class="gear-box">
                                        <input type="checkbox" name="user-armor" value="${armor.id}"> <b>${armor.name}</b> Value: ${armor.getHalfValue()}
                                    </div>
                                </c:forEach>

                          <input type="submit" class="btn btn-primary" value="Sell selected" name="sell-armor">
                        </form>


                      </div>

                      <div class="col-md-offset-4 col-md-4">
                            <form action="Buy" method="post" id="market-weapons" style="display: block">  
                                
                                <c:forEach items="${storeWeapons}" var="weapon">
                                    <div class="gear-box">
                                        <input type="checkbox" name="market-weapons" value="${weapon.id}"> <b>${weapon.name}</b> Value: ${weapon.value}
                                    </div>
                                </c:forEach>
                                
                                <input type="submit" class="btn btn-primary" value="Buy selected" name="buy-weapons">
                            </form>
                            <form action="Buy" method="post" id="market-armor" style="display: none">
                                
                                <c:forEach items="${storeArmor}" var="armor">
                                    <div class="gear-box">
                                        <input type="checkbox" name="user-armor" value="${armor.id}"> <b>${armor.name}</b> Value: ${armor.value}
                                    </div>
                                </c:forEach>
                                
                          <input type="submit" class="btn btn-primary" value="Buy selected" name="buy-armor">
                        </form>
                      </div>
                    </div>

              <div class="row">

              </div>

            </div>

            <!-- JQuery -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

            <!-- Bootstrap JS -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

            <!-- set some onclick listeners -->
            <script>
            $("#tab-u-w").click(function() { $("#user-weapons").css("display", "block");
                                                                             $("#user-armor").css("display", "none");});
            $("#tab-u-a").click(function() { $("#user-weapons").css("display", "none");
                                                                             $("#user-armor").css("display", "block");});
            $("#tab-m-w").click(function() { $("#market-weapons").css("display", "block");
                                                                             $("#market-armor").css("display", "none");});
            $("#tab-m-a").click(function() { $("#market-weapons").css("display", "none");
                                                                             $("#market-armor").css("display", "block");});
            </script>

    </body>

</html>
