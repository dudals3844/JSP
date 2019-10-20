<%@ page contentType = "text/html; charset=utf-8" %>
<%
    request.setAttribute("name","Choi");
%>
<html>
<head><title>EL Object</title></head>
<body>
request URL: ${pageContext.request.requestURI}<br>
request and name option: ${requestScope.name}<br>
code parameter:${param.code}
</body>
</html>