<%-- 
    Document   : profile
    Created on : Mar 20, 2023, 11:57:13 PM
    Author     : oki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
    </head>
    <body>
        <h1 class="text-center mt-4 mb-4">Profile</h1>
        <div class="container">
        <form>
            <div class="row mb-3">
                <label for="inputUsername" class="col-sm-2 col-form-label">Username</label>
               <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputUsername">
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3">
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail">
                </div>
            </div>
            <div class="text-end">
                <a class="btn btn-light " href="url">Back</a>
                <button type="submit" class="btn btn-primary ">Save changes</button>
            </div>
            
        </form>
    </div>
</body>
</html>
