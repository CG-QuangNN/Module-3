<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/28/2022
  Time: 1:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="text-align: center;">
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
</div>
<div align="center">
    <form action="/users" method="get">
        <input type="text" placeholder="input country" name="search">
        <button type="submit">Search</button>
        <input type="hidden" name="action" value="search">
    </form>
    <form action="/users" method="get">
        <select name="sort" id="sort">
            <option value="ascending">Sort low to high</option>
            <option value="descending">Sort high to low</option>
        </select>
        <input type="hidden" name="action" value="sort">
        <button type="submit">sort</button>
    </form>
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
