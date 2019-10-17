<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>include detect</title></head>
<body>
    <%
        int number = 10;
    %>

    <%@ include file="/includee.jsp"%>

    공통변수 DATAFOLDER = <%= dataFolder%>
</body>
</html>