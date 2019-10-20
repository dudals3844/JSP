<%@ page contentType = "text/html; charset=utf-8" %>

<html>
<head><title>Login form</title></head>
<body>
<form action="<%=request.getContextPath()%>/member/sessionLogin.jsp" method="post">
ID: <input type="text" name="id" size="10">
Password: <input type="password" name="password" size="10">
<input type="submit" value="login">
</form>

</body>
</html>