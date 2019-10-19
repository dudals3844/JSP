<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.net.URLEncoder"%>
<%
    Cookie[] cookies = request.getCookies();
     if (cookies != null && cookies.length>0) {
            for (int i = 0; i < cookies.length; i++) {
                Cookie cookie = new Cookie("name",URLEncoder.encode("JSP Programming","utf-8"));
                response.addCookie(cookie);
            }
        }
%>
<html>
<head><title>include detect</title></head>
<body>
</body>
</html>