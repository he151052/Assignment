<%-- 
    Document   : login
    Created on : Feb 6, 2023, 3:51:23 PM
    Author     : oki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="login.css" />
        <style>
            form,h1{
                text-align: center;
            }
            input[type="submit"]{
                margin-top:20px;
            }
        </style>
    </head>
    <body>
        <h1>Login</h1>
        <form action="" method="post">
            <label for="username">Username:</label> 
            <input  type="text" id="username" name="username" placeholder="Enter username"> <br>
            <label for="password">Password: </label> 
            <input type="password" id="password" name="password" placeholder="Enter password"> <br>
            <input type="Submit" value="Log in">
        </form>
    </body>
</html>
