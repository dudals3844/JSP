<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page isErrorPage = "true"%>
<html>
<head><title>error</title></head>
<body>
error type: <%= exception.getClass().getName()%><br>
errer message: <%= exception.getMessage()%>
</body>
</html>
