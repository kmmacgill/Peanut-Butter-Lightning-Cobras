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
        <title>Login</title>
    </head>
    <body>
        <h1>Sign in please</h1>
        <form action="Login" method="POST">
            <input type="text" name="password" placeholder="username">
            <br />
            <input type="password" name="password">
            <br />
            <input type="submit" value="Login">
        </form>
    </body>
</html>
