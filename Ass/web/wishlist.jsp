<%-- 
    Document   : wishlist
    Created on : Mar 15, 2023, 2:17:09 PM
    Author     : oki
--%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${list}" var="o">
            ${o.image}
        </c:forEach>

    </body>
</html>
