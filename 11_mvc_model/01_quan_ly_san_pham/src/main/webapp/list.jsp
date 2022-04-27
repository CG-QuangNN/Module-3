<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/27/2022
  Time: 11:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<p>
    <a href="/product?action=create">Create Product</a>
</p>
<table>
    <tr>
        <th>id</th>
        <th>Name</th>
        <th>Type</th>
        <th>Price</th>
    </tr>
    <%--    var = element trong for each--%>
    <c:forEach items='${requestScope["productsList"]}' var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.type}</td>
            <td>${product.price}</td>
            <td><a href="/product?action=delete&id=${product.id}">delete</a></td>
            <td><a href="/product?action=edit&id=${product.id}">edit</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
