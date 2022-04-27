<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/27/2022
  Time: 10:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Display</title>
</head>
<body>
<table class="table table-striped table-dark">
    <tr>
        <th>Name</th>
        <th>Date of Birth</th>
        <th>Address</th>
        <th>Picture</th>
    </tr>
    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.link}" alt="picture" style="width: 60px;"></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
