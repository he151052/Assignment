<%-- 
    Document   : home
    Created on : Feb 8, 2023, 1:26:12 PM
    Author     : oki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--        FONT AWESOME-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
        <%-- BOOSTRAP CSS --%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/home.css"/>
    </head>
    <body>
        <header>
            <div class="header__left">
                <h3>Be good, Be bad, Be yourself</h3>
            </div>

            <div class="header__right">
                <a href="">Log in</a>
            </div>
        </header>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Dropdown
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled">Disabled</a>
                        </li>
                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    <div class="shopping-cart" >
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>
            </div>
        </nav>
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

        
        
        
        
        
        <div class="service bg-secondary ">
            <div class="container p-5">
                <div class="row">
                    <div class="service-item col overflow-hidden ">    
                      <i class="fa-sharp fa-solid fa-truck fs-1 p-2 me-2 float-start "></i>
                        <div class="service-text float-start">
                            <h5 class="fw-bold">Fast and free delivery</h5>
                            <p>Free Shipping over $300</p>
                        </div>
                    </div>
                    <div class="service-item col overflow-hidden ">
                       <i class="fa-solid fa-dollar fs-1 p-2 me-2 float-start"></i>
                        <div class="service-text">
                            <h5 class="fw-bold">Money back guarantee</h5>
                            <p>We return money within 30 days</p>
                        </div>
                    </div>
                    <div class="service-item col overflow-hidden  ">
                        <i class="fa-solid fa-headset fs-1 p-2 me-2 float-start"></i>
                         <div class="service-text">
                            <h5 class="fw-bold">24/7 customer support</h5>
                            <p>Friendly 24/7 customer support</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="bg-dark">
            <div class="container-fluid p-4">
            <i class="fa-brands fa-facebook  fs-5 p-1 border rounded bg-light"></i>
            <i class="fa-brands fa-github fs-5 p-1 border rounded bg-light"></i>
            <i class="fa-brands fa-linkedin fs-5 p-1 border rounded bg-light"></i>
            <i class="fa-brands fa-youtube fs-5 p-1 border rounded bg-light"></i>
            </div>
        </footer>

        <%--BOOTSTRAP JS --%>
        <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
