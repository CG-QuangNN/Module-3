<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/27/2022
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${exceptions == null}">
    Calculate: ${num1} ${operators} ${num2}
    <br>
    Result: <c:out value="${results}"/>
</c:if>

<c:if test="${exceptions != null}">
    <c:out value="${exceptions}"/>
</c:if>
</body>
</html>
