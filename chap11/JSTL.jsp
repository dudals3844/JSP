<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
 
%>
<html>
<head><title>if tag</title></head>
<body>
<c:if test="true">
start
</c:if>

<c:if test= "${param.name == 'bk'}">
name parameter
</c:if>

</body>
</html>