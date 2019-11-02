<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>Change name</title></head>
<body>
<form action="/chap14/WebContent/update/update.jsp" method="post">
<table style="border 1px">
<tr>
    <td>ID</td>
    <td><input type="text" name="memberID" size="10"></td>
    <td>Name</td>
    <td><input type="text" name="name" size="10"></td>
</tr>
<tr>
    <td colspan="4"><input type="submit" value="변경"></td>
</tr>
</table>
</form>
</body>
</html>
