<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page buffer = "1kb"%>
<%@ page errorPage = "/error/viewErrorMessage.jsp"%>
<html>
<head><title>print error after flush buffer</title></head>
<body>
<% for (int i = 0; i < 300; i++) {out.println(i);}%>
<%= 1/0%>
</body>
</html>
