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
${"10"+1}<br>
${"he"+="ll"+="o"}<br>
${1+1;10+10}<br>
${var=10} var=${var}<br>
</body>
</html>