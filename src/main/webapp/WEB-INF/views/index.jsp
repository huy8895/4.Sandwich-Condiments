<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: huy8895
  Date: 9/14/20
  Time: 4:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sandwich condiments</title>
</head>
<body>
<h1>Sandwich condiments</h1>
<form method="post" action="/save">
    <label>lettuce
        <input type="checkbox" name="condiment" value="lettuce">
    </label>
    <label>tomato
        <input type="checkbox" name="condiment" value="tomato">
    </label>
    <label>mustard
        <input type="checkbox" name="condiment" value="mustard">
    </label>
    <label >sprouts
        <input type="checkbox" name="condiment" value="sprouts">
    </label>
    <button type="submit" >save</button>
</form>
<hr>
<c:if test="${condiment != null}">
    <c:forEach items="${condiment}" var="sandwich">
        <c:out value="${sandwich}"></c:out>
    </c:forEach>
</c:if>
</body>
</html>
