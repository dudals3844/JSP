<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head><title>catch tag</title></head>
<body>
<c:catch var="ex">
name parameter value: <%=request.getParameter("name")%>
<br>
<%
    if(request.getParameter("name").equals("test")){
%>
${param.name}
<%}%>
</c:catch>
<p>
<c:if test="${ex != null}">
exception
${ex}
</c:if>
</body>
</html>