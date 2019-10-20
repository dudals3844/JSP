<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="util.Cookies"%>

<%
    response.addCookie(Cookies.createCookie("name","choi"));
    response.addCookie(
        Cookies.createCookie("id","madvirus","/chap09",-1)
    );
%>
<html>
<head><title>use Cookie example</title></head>
<body>

</body>
</html>