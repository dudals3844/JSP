<%@ page contentType= "text/html; charset=utf-8"%>

<html>
<head><title>option choose</title></head>
<body>
<form action="<%= request.getContextPath()%>/view.jsp">
choose page
    <select name="code">
        <option value="A">A page </option>
        <option value="B">B page </option>
        <option value="C">C page </option>
    </select>
<input type="submit" value="이동">
</form>
</body>
</html>
