<%-- 
    Document   : home
    Created on : Feb 8, 2023, 1:26:12 PM
    Author     : oki
--%>
<%@page import="model.Category"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADADIS</title>
        <!--        FONT AWESOME-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
        <%-- BOOSTRAP CSS --%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/home.css"/>
    </head>
    <body>

        <jsp:include page="header.jsp" />
        <!--NEW ARRIVAL-->

        <div class="new-arrivals py-3">
            <div class="header py-3">
                <h2 style="text-align: center">New Arrivals</h2>
            </div>

            <div class="card-group container">
                <div class="card">
                    <img src="img/3.jpg"   class="card-img-top ratio ratio-4x3" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
                <div class="card">
                    <img src="img/1.jpg"  class="card-img-top ratio ratio-4x3" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
                <div class="card">
                    <img  src="img/2.jpg" class="card-img-top ratio ratio-4x3" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
            </div>
        </div>


        <!--PRODUCTS-->
        <div class="products py-3">
            <div class="header py-3">
                <h2 style="text-align: center">All Products</h2>
            </div>
            <div class="container">
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <%
           ArrayList<Product> l = (ArrayList<Product>)request.getAttribute("lp");
                    %>
                    <% for(Product s : l) {
                    %>
                    <div class="col">
                        <div class="card h-100">
                            <img src="<%=s.getImage() %>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title fw-bold"><%=s.getName() %></h5>
                                <p class="card-text"><%=s.getTitle() %></p>
                                <p class="card-text text-success fs-5 fw-bold">$<%=s.getPrice()%></p>  
                            </div>
                            <div class="card-footer text-center">
                               
                                    <a href="#" class="btn btn-primary"><i class="fa-solid fa-cart-shopping p-1"></i> Add to cart</a>
                                
                                
                            </div>
                        </div>
                    </div>
                    <%}%>

                </div>
            </div>
        </div>

        <!--PAGINATION-->

        <nav aria-label="Page navigation example">
            <ul class="pagination ">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </nav>

        <jsp:include page="footer.jsp" />



        <button id="myBtn" title="Lên đầu trang"><i class="fa-solid fa-arrow-up"></i></button>

        <%--BOOTSTRAP JS --%>
        <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

        <!--JS-->
        <script>
            window.onscroll = function () {
                scrollFunction()
            };
            function scrollFunction() {

                if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
                    document.getElementById("nav").style.top = "0";
                    document.getElementById("myBtn").style.display = "block"
                } else {
                    document.getElementById("nav").style.top = "60px";
                    document.getElementById("myBtn").style.display = "none"
                }
            }

            document.getElementById('myBtn').addEventListener("click", function () {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            });
        </script>

    </body>
</html>
