<%-- 
    Document   : home
    Created on : Feb 8, 2023, 1:26:12 PM
    Author     : oki
--%>
<%@page import="model.Category"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <c:forEach items="${ln}" var="o">
                        <div class="col">
                            <div class="card h-100">
                                <img src="${o.image}" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title fw-bold">${o.name}</h5>
                                    <p class="card-text">${o.title}</p>
                                    <p class="card-text text-success fs-5 fw-bold">$${o.price}</p>  
                                </div>
                                
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>


        <!--PRODUCTS-->
        <div class="products py-3">
            <div class="header py-3">
                <h2 style="text-align: center">All Products</h2>
            </div>
            <div class="container">
                <div class="row row-cols-1 row-cols-md-4 g-4">
                    <%
           ArrayList<Product> l = (ArrayList<Product>)request.getAttribute("lp");
                    %>
                    <% for(Product s : l) {
                    %>

                    <div class="col">

                        <div class="card h-100">


                            <div>
                                <img src="<%=s.getImage() %>" class="card-img-top" alt="...">
                            </div>
                            <div style="
                                 height: 25px;
                                 width: 25px;
                                 line-height: 25px;
                                 background-color: #eee;
                                 display: flex;
                                 justify-content: center;
                                 align-items: center;
                                 border-radius: 50%;
                                 box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%), 0 6px 20px 0 rgb(0 0 0 / 19%);
                                 position: absolute;
                                 right: 5px;
                                 top: 5px;
                                 ">
                                <a  class="wishlist<%=s.getId()%>" onclick="change(<%=s.getId()%>)"><i class="fa-regular fa-heart"></i></a>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title fw-bold"><a class="text-decoration-none" href="detail?id=<%=s.getId() %>"><%=s.getName() %></a></h5>
                                <p class="card-text"><%=s.getTitle() %></p>
                                <p class="card-text text-success fs-5 fw-bold">$<%=s.getPrice()%></p>  
                            </div>
                            <div class="card-footer text-center">

                                <a href="cart?id=<%=s.getId()%>" class="btn btn-primary"><i class="fa-solid fa-cart-shopping p-1"></i> Add to cart</a>


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
                <%
          int pi = (int)request.getAttribute("pageIndex");
                %>
                <c:if test="<%= pi > 1 %>">
                    <li class="page-item"><a class="page-link" href="home?index=<%=pi-1 %>">Previous</a></li>
                    </c:if>      

                <%
         int cout = (int)request.getAttribute("page");
                %>

                <% for(int p = 1;p<=cout;p++) {
                %>

                <li class="page-item  "><a class="page-link  <%= pi == p ? "active":"" %> " href="home?index=<%=p %>"><%=p %></a></li>

                <%}%>
                <c:if test="<%= pi < cout %>">
                    <li class="page-item"><a class="page-link" href="home?index=<%= pi +1 %>">Next</a></li>
                    </c:if>
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
                                    function change(pid) {

                                        let heart = document.querySelector(".wishlist" + pid);



                                        if (heart.innerHTML === '<i class="fa-regular fa-heart"></i>') {
                                            heart.innerHTML = '<i class="fa-solid fa-heart"></i>';
                                            heart.style.color = 'red'
                                        } else {
                                            heart.innerHTML = '<i class="fa-regular fa-heart"></i>'
                                            heart.style.color = 'black'
                                        }

                                    }
        </script>

    </body>
</html>
