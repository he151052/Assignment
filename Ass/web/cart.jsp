<%-- 
    Document   : cart
    Created on : Mar 2, 2023, 11:25:40 PM
    Author     : oki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


    </head>
    <body>
        <h1 class="text-center mt-3 mb-0">Shopping Cart</h1>
        <section class="h-100 h-custom ">
            <div class="container h-100 pb-5 pt-3">
                <h4><a href="home">Home</a></h4>
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col border border-secondary rounded pb-3">

                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col" >Name</th>

                                        <th scope="col" >Quantity</th>
                                        <th scope="col"  >Price</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach items="${list}" var="o">
                                        <tr>
                                            <th scope="row">
                                                <div class="d-flex align-items-center">
                                                    <img src="${o.image}" class="img-fluid rounded-3"
                                                         style="width: 120px;" alt="Book">
                                                    <div class="flex-column ms-4">
                                                        <p class="mb-2">${o.name}</p>

                                                    </div>
                                                </div>
                                            </th>

                                            <td class="align-middle">
                                                <div class="d-flex flex-row">
                                                    <a href="decrease?id=${o.id}"> <button class="btn btn-link px-2"
                                                                                           onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                                            <i class="fas fa-minus"></i>
                                                        </button></a>

                                                    <input id="form1" min="0" name="quantity" value="${o.amount}" type="number"
                                                           class="form-control form-control-sm" style="width: 50px;" />

                                                    <a href="cart?id=${o.id}"> <button class="btn btn-link px-2"
                                                                                       onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                                            <i class="fas fa-plus"></i>
                                                        </button></a>
                                                </div>
                                            </td>
                                            <td class="align-middle">
                                                <p class="mb-0" style="font-weight: 500;">$${o.price}</p>
                                            </td>
                                            <td class="align-middle">
                                                <a href="deleteCart?id=${o.id}"> <i class="fa-solid fa-trash "></i></a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                        <div class="card shadow-2-strong mb-5 mb-lg-0" style="border-radius: 16px;">
                            <div class="card-body p-4">

                                <div class="row text-center">

                                    <div class=" ">
                                        <div class="d-flex justify-content-between" style="font-weight: 500;">
                                            <p class="mb-2">Subtotal</p>
                                            <p class="mb-2">$${total}</p>
                                        </div>

                                        <div class="d-flex justify-content-between" style="font-weight: 500;">
                                            <p class="mb-0">Shipping fee</p>
                                            <p class="mb-0">Free</p>
                                        </div>

                                        <hr class="my-4">

                                        <div class="d-flex justify-content-between mb-4" style="font-weight: 500;">
                                            <p class="mb-2">Total (tax included)</p>
                                            <p class="mb-2">$${total}</p>
                                        </div>

                                        <button type="button" class="btn btn-primary btn-block btn-lg">         
                                            <div class="d-flex justify-content-between">
                                                <span>Checkout </span>

                                            </div>
                                        </button>

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <!--BOOSTRAP JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
