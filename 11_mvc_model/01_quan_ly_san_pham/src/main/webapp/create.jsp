<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/27/2022
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create product</title>
</head>
<body>
<h1>Create product</h1>
<p>
    <a href="/product">Back to products list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Product Name:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Product type:</td>
                <td><input type="text" name="type"></td>
            </tr>
            <tr>
                <td>Product Price:</td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
