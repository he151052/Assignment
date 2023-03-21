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
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
        <style>
            .pass{
                position: relative;
                
            }
            .absolute{
                position: absolute;
                top:155px;
                right:130px;
            }
            .absolute:hover{
                background: #ced4da;
            }
        </style>
    </head>
    <body>
        <h1 class="text-center mt-4 mb-4">Profile</h1>
        <div class="container">
            <form action="editAccount" >
            <div class="row mb-3">
                <label for="inputUsername" class="col-sm-2 col-form-label">Username</label>
               <div class="col-sm-10">
                   <input name="username" type="text" class="form-control" id="inputUsername" value="${profile.username}">
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <span class="pass">
                        <input name="pass" type="password" class="form-control password" id="inputPassword3" value="${profile.password}">
                    </span>
                    <span class="absolute"><i class="fa-sharp fa-solid fa-eye"></i></span>
                    
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input name="mail" type="text" class="form-control" id="inputEmail" value="${profile.mail}">
                </div>
            </div>
            <div class="text-end">
                <a class="btn btn-light " href="home">Back</a>
                <button type="submit" class="btn btn-primary ">Save changes</button>
            </div>
            
        </form>
    </div>
                <script>
                    let a = document.querySelector('.absolute');
                     let b = document.querySelector('.password');
                    a.onclick = function(){
                        if(b.type === 'password'){
                            b.type = 'text'
                        }
                        else{
                            b.type = 'password'
                        }
                    }
                </script>
</body>
</html>
