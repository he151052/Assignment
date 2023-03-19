<%-- 
    Document   : manageProduct
    Created on : Mar 18, 2023, 11:39:09 PM
    Author     : oki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Product</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
    </head>
    <body style="box-sizing: border-box">

        <div class="container mt-5 mb-5">
            <header class="d-flex justify-content-between">
                <a  class="d-flex align-items-end"  href="home">Back</a>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Add new product
                </button>
            </header>
            <table class="table  table-hover ">
                <thead class="table-light">
                    <tr>
                        <th class="text-center" scope="col">ID</th>
                        <th class="text-center" scope="col">Name</th>
                        <th  class="text-center" scope="col">Img</th>
                        <th class="text-center" scope="col">Price</th>
                        <th class="text-center" scope="col">Title</th>
                        <th class="text-center" scope="col">Description</th>
                        <th class="text-center" scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider align-middle">
                    <c:forEach items="${products}" var="o">

                        <tr >
                            <td class="fw-bold" scope="row" >${o.id}</td>
                            <td>${o.name}</td>
                            <td style="width: 15%"><img style="width: 100%" src="${o.image}" alt="alt"/></td>
                            <td>$${o.price}</td>
                            <td>${o.title}</td>
                            <td>${o.description}</td>
                            <td>
                                <a style="padding: 5px "  onclick="edit(${o.id})" class="text-success"> <i class="fa-solid fa-pen"></i></a>
                                <a href="#" onclick="doDelete(${o.id})" style="padding: 5px" class="text-danger"><i class="fa-solid fa-trash"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <!--PAGINATION-->

        <nav aria-label="Page navigation example" class="d-flex justify-content-center">
            <ul class="pagination ">
                <%
          int pi = (int)request.getAttribute("pageIndex");
                %>
                <c:if test="<%= pi > 1 %>">
                    <li class="page-item"><a class="page-link" href="manageproduct?index=<%=pi-1 %>">Previous</a></li>
                    </c:if>      

                <%
         int cout = (int)request.getAttribute("page");
                %>

                <% for(int p = 1;p<=cout;p++) {
                %>

                <li class="page-item  "><a class="page-link  <%= pi == p ? "active":"" %> " href="manageproduct?index=<%=p %>"><%=p %></a></li>

                <%}%>
                <c:if test="<%= pi < cout %>">
                    <li class="page-item"><a class="page-link" href="manageproduct?index=<%= pi +1 %>">Next</a></li>
                    </c:if>
            </ul>
        </nav>
        <!--ADD Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="addProduct" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Add new product</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <textarea name="title" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${lc}" var="o">
                                        <option value="${o.cid}">${o.cname}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">ADD</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script>
                                    function doDelete(id) {
                                        if (confirm("Do you want to delete item " + id)) {
                                            window.location = 'deleteProduct?id=' + id;
                                        }
                                    }
                                    function edit(id) {
                                        if (confirm("Do you want to edit item " + id)) {
                                            window.location = 'edit?id=' + id;
                                        }
                                    }
        </script>

    </body>
</html>
