<%-- 
    Document   : login
    Created on : Feb 6, 2023, 3:51:23 PM
    Author     : oki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
        <!--                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>-->
        <link href="css/login.css" rel="stylesheet" />


    </head>
    <body>

        <form action="login" method="post">
            <h1>Login</h1>
            <div class="error">${err}</div>
            <i class="fa-solid fa-user icon"></i>
            <input  type="text" id="username" name="username" placeholder="Enter username"> <br>
            <i class="fa-solid fa-lock icon"></i>
            <input type="password" id="password" name="password" placeholder="Enter password"> <br>
            <input type="Submit" value="Log in"> <br>
            <div class="signin">
                <a href="signin.jsp">Sign in </a>
            </div>
        </form>

        <c:if test="${acc == 1}">
            <script>

                function inform() {
                    alert("Sign in succesful!")
                }
                inform()
            </script>
        </c:if>
    </body>
</html>
