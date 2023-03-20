<%@page import="java.util.ArrayList"%>
<%@page import="model.Category"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <div class="header__left">
        <h3>Be good, Be bad, Be yourself</h3>
    </div>
    <c:if test="${sessionScope.acc != null}" >
        <div class="header__right">
            <a class="info"  style="margin-right: 20px">
            <span >Hi, ${sessionScope.acc.username}</span>
            <i class="fa-solid fa-user" style="padding:8px 10px;font-size: 25px"></i>
           </a>
            <a href="logout">Log out</a>
        </div>
    </c:if>
    <c:if test="${sessionScope.acc == null}" >
        <div class="header__right">
            <a href="login.jsp">Log in</a>
        </div>
    </c:if>
</header>
<!--NAV-->
<nav id="nav" class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="home" style="letter-spacing: 5px">ADADIS</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home">Home</a>
                </li>
             
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Products
                    </a>
                    <%
                              ArrayList<Category> lc = (ArrayList<Category>)request.getAttribute("lc");
                    %>

                    <ul class="dropdown-menu">
                        <% for(Category c : lc) {
                        %>
                        <li><a class="dropdown-item" href="category?cid=<%=c.getCid() %>"><%=c.getCname() %></a></li>
                            <%}%>

                    </ul>
                </li>
                <li class="nav-item">
                    <a href="wishlist.jsp" class="nav-link ">Wishlist</a>
                </li>
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                <li class="nav-item">
                    <a href="manageproduct" class="nav-link ">Manage Product</a>
                </li>
                </c:if>
            </ul>
            <form action="search" class="d-flex" role="search">
                <input name="value" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <div class="shopping-cart" >
                <a href="cart">
                <i class="fa-solid fa-cart-shopping"></i></a>
            </div>
        </div>
    </div>
</nav>

<!--CAROUSEL-->
<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/1.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="img/6.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="img/2.jpg" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>