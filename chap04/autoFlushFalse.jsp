<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import="java.net.*"%>
<%@ page buffer = "1kb" autoFlush="true"%>
<html>
<head><title>autoFlush false settings</title></head>
<body>
    <% for (int i = 0; i < 1000; i++) { %>
    1234
    <% } %>
</body>
</html>
