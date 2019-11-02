<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>Insert MEMBER table record </title></head>
<body>
<form action="/chap14/WebContent/insert/insert.jsp" method="post">
<table border="1">
<tr>
    <td>ID</td>
    <td><input type="text" name="memberID" size="10"></td>
    <td>Password</td>
    <td><input type="text" name="password" size="10"></td>
</tr>
<tr>
    <td>Name</td>
    <td><input type="text" name="name" size="10"></td>
    <td>Email</td>
    <td><input type="text" name="email" size="10"></td>
</tr>
<tr>
    <td colspan="4"><input type="submit" value="insert"></td>
</tr>
</table>
</form>
</body>
</html>
