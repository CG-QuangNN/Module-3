<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/27/2022
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
<h1>Calculator</h1>
<form action="/calculate" method="get">
    <fieldset>
        <legend>Calculator</legend>
        First Operand: <input type="text" name="operand1"> <br><br>

        Operator <select name="dropdownOperator" id="">
        <option value="add">Addition</option>
        <option value="minus">Minus</option>
        <option value="mul">Multiple</option>
        <option value="div">Division</option>
    </select>
        <br><br>
        Second operand <input type="text" name="operand2"> <br>
        <br>
        <button type="submit">Calculate</button>
    </fieldset>

</form>
</body>
</html>
