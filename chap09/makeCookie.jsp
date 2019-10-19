<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.net.URLEncoder"%>
<%
    Cookie cookie = new Cookie("name",URLEncoder.encode("choi","utf-8"));
    response.addCookie(cookie);
%>
<html>
<head><title>cookie list</title></head>
<body>
    <%=cookie.getName()%> cookie value <%= cookie.getValue()%>
</body>
</html>