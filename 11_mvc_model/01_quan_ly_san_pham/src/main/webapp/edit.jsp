<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/27/2022
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<h1>Edit product</h1>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Product Name:</td>
                <td><input type="text" name="name" value="${productsEdit.name}"></td>
            </tr>
            <tr>
                <td>Product type:</td>
                <td><input type="text" name="type" value="${productsEdit.type}"></td>
            </tr>
            <tr>
                <td>Product Price:</td>
                <td><input type="text" name="price" value="${productsEdit.price}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
