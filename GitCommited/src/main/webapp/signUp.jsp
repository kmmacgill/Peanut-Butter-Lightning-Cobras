<%-- 
    Document   : signUp
    Created on : Mar 17, 2016, 11:00:17 AM
    Author     : kmmac
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
        <title>Sign Up Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h1 class="text-center login-title">Please fill out the form completely</h1>
                    <div class="account-wall">
                        <img class="profile-img center-block" src="imgs/user-icon.png" alt="user-icon">
                        <form class="form-signup" method="POST" action="Signup">
                            <input type="text" name="user_name" class="form-control" placeholder="Username" required autofocus>
                            <input type="text" name="ghUser_name" class="form-control" placeholder="Github Username" required>
                            <input type="text" name="password" class="form-control" placeholder="Password" required>
                            <input type="text" name="passwordConfirm" class="form-control" placeholder="confirm password" required>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
                        </form>
                    </div>
                    <a href="login.jsp" class="text-center new-account">Already have an account? Sign in!</a>
                    <a href="https://www.lifeline.org.au/Get-Help/I-Need-Help-Now/I-Need-Help-Now" 
                               class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </div>
            </div>
        </div>                
    </body>
</html>
