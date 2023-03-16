<%-- 
    Document   : signin
    Created on : Mar 16, 2023, 11:05:37 PM
    Author     : oki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign in</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
    </head>
    <body class=" bg-info">
        <div class="container w-25 rounded bg-light mt-5" style="height:auto ">
            <h3>Sign in</h3>
            <form action="signin" method="post">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" name="username" placeholder="Username">
                    <label for="floatingInput">Username</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" id="floatingPassword" name="pass" placeholder="Password">
                    <label for="floatingPassword">Password</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" id="floatingPassworda" name="repass" placeholder="Re-Password">
                    <label for="floatingPassworda">Re-Password</label>
                </div>
                <div class="text-danger fs-5">${err}</div>
                <div class="text-danger fs-5">${err2}</div>
                <button type="submit" class="btn btn-primary w-100 mt-1 mb-3">Submit</button>
            </form>
        </div>
               
    </body>
</html>
