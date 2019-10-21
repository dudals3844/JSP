<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head><title>Choose tag</title></head>
<body>
<ul>
<c:choose>
    <c:when test="${param.name == 'bk'}">
        <li>your name is ${param.name}
    </c:when>

    <c:when test="${param.age > 20}">
        <li>your age is ${param.age}
    </c:when>

    <c:otherwise>
        <li>your are not bk 
    </c:otherwise>
    
    
</c:choose>
</ul>

</body>
</html>