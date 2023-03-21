<%-- 
    Document   : detail
    Created on : Mar 12, 2023, 1:58:25 AM
    Author     : oki
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
        
        <link rel="stylesheet" href="css/home.css"/>
        <link rel="stylesheet" href="css/detail.css"/>
        <style>
            *{
                font-family: sans-serif;
            }
        </style>
    </head>
    <body>
         <jsp:include page="header.jsp" />
        <div class="container">
            <div class="card">
                <div class="container-fliud">
                    <div class="wrapper row">
                        <div class="preview col-md-6">

                            <div class="preview-pic tab-content">
                                <div class="tab-pane active" id="pic-1"><img src="${p.image}" /></div>
                            </div>
                           

                        </div>
                        <div class="details col-md-6">
                            <h3 class="product-title">${p.name}</h3>
                           
                            <p class="product-description">${p.title}</p>
                            <h4 class="price">current price: <span>$${p.price}</span></h4>
                            <div class="mb-3" >
                                <summary class="fs-4 fw-bold ">Description</summary>
                                ${p.description}
                            </div>
                            
                           
                            <div class="action">
                                <a href="cart?id=${p.id}"> <button class="add-to-cart btn btn-default" type="button">add to cart</button></a>
                                <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
        
        <script>
            window.onscroll = function () {
                scrollFunction()
            };
            function scrollFunction() {

                if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
                    document.getElementById("nav").style.top = "0";
                    
                } else {
                    document.getElementById("nav").style.top = "60px";
                    
                }
            }

            
        </script>
    </body>
</html>
