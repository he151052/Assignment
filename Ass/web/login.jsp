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
        <title>Log in</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
        <link href="css/login.css" rel="stylesheet" />


    </head>
    <body>

        <form action="" method="post">
            <h1>Login</h1>
           
            <i class="fa-solid fa-user icon"></i>
            <input  type="text" id="username" name="username" placeholder="Enter username"> <br>
            <i class="fa-solid fa-lock icon"></i>
            <input type="password" id="password" name="password" placeholder="Enter password"> <br>
            <input type="Submit" value="Log in">
        </form>
    </body>
</html>
