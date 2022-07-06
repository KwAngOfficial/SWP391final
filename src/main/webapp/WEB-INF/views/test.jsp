<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kieuq
  Date: 7/4/2022
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="">
    <div class="row" >
        <div class="col-md-11">
            <input class="form-control" name="kw" type="text">
        </div>
        <div class="col-md-1">
            <input  type="submit" value="submit">
        </div>
    </div>

    <c:forEach var="p" items="${productSearch}">
        <div class="row">
            <div>
                <h3>${p.p_name}</h3>
                <div>${p.price}</div>
            </div>
        </div>
    </c:forEach>
</form>
</body>
</html>
