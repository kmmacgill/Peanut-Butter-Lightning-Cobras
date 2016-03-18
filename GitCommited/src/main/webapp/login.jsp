<%-- 
    Document   : login
    Created on : Mar 10, 2016, 9:19:29 AM
    Author     : justin
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
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <h1 class="bg-primary col-md-12 text-center">WELCOME TO GITCOMMITTED</h1>
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h1 class="text-center login-title">Sign in to continue</h1>
                    <div class="account-wall">
                        <img class="profile-img center-block" src="imgs/user-icon.png" alt="user-icon">
                        <form class="form-signin" method="POST" action="Login">
                            <input type="text" name="user_name" class="form-control" placeholder="Username" required autofocus>
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                        </form>
                    </div>
                    <a href="signUp.jsp" class="text-center new-account">Create an account </a>
                    <a href="https://www.lifeline.org.au/Get-Help/I-Need-Help-Now/I-Need-Help-Now" 
                               class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </div>
            </div>
        </div>
    </body>
</html>
