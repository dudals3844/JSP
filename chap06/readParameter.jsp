<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page errorPage = "/error/viewErrorMessage.jsp"%>
<html>
<head><title>print parameter</title></head>
<body>
name parameter: <%= request.getParameter("name").toUpperCase()%>
</body>
</html>
