<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="util.Cookies"%>
<%
    response.addCookie(
        Cookies.createCookie("AUTH","","/",0)
    );
%>
<html>
<head><title>logout</title></head>
<body>
logout clear
</body>
</html>