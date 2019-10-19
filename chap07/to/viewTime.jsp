<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.Calendar" %>

<html>
<head><title>Time now</title></head>
<body>
<%
    Calendar cal = (Calendar)request.getAttribute("time");
%>

<%= cal.get(Calendar.HOUR)%>
<%= cal.get(Calendar.MINUTE)%>
<%= cal.get(Calendar.SECOND)%>
</body>
</html>