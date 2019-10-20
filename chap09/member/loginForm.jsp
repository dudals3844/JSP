<%@ page contentType = "text/html; charset=utf-8" %>

<html>
<head><title>Login form</title></head>
<body>
<form action="<%=request.getContextPath()%>/member/login.jsp" method="post">
ID:<input type="text" name="id" size="10">
<br>
Password:<input type="password" name="password" size="10">
<br>
<input type="submit" value="login">
<br>
</form>
</body>
</html>