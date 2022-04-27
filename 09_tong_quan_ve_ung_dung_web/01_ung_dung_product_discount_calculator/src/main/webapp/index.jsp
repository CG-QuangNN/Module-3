<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/27/2022
  Time: 9:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form method="post" action="display-discount">
    <input type="text" name="product_description" placeholder="Product Description" required> <br><br>
    <input type="number" name="list_price" placeholder="List Price" required> <br><br>
    <input type="number" name="discount_percent" placeholder="Discount Percent" required> <br><br>
    <input type="submit" value="Calculate">
</form>
</body>
</html>
