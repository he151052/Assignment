<%-- 
    Document   : forgotPassword
    Created on : Mar 13, 2023, 5:06:26 PM
    Author     : oki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
    </head>
    <body class="bg-light">
        <form action="" method="post" class="mt-5">
            <h1 class="text-center mt-3 mb-3">Forgot password</h1>   
            <div class="container w-25 ">
                <div class="form-floating mb-3  ">
                    <input type="email" class="form-control  " id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">Email address</label>
                </div>
                <div class="form-floating ">
                    <input type="text" class="form-control " id="floatingPassword" placeholder="Username">
                    <label for="floatingPassword">Username</label>
                </div>
                <div class="col mt-3 text-center">
                    <button type="submit" class="btn btn-primary mb-3">Send</button>
                </div>
            </div>

        </form>
    </body>
</html>
