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
        <div class="container">
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
                            <a style="padding: 5px " class="text-success"> <i class="fa-solid fa-pen"></i></a>
                            <a href="#" onclick="doDelete(${o.id})" style="padding: 5px" class="text-danger"><i class="fa-solid fa-trash"></i></a>
                        </td>
                    </tr>
                     </c:forEach>
                </tbody>
            </table>
        </div>
            
         <script>
            function doDelete(id){
                if(confirm("Do you want to delete item " + id)) {
                    window.location = 'delete?id=' + id;
                }
            }
        </script>
       
    </body>
</html>
