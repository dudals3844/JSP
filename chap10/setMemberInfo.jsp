<%@ page contentType = "text/html; charset=utf-8" %>
<%
    session.setAttribute("MEMBERID","madvirus");
    session.setAttribute("NAME","choi");
%>
<html>
<head><title>Save session information</title></head>
<body>
Success to save the session information
<%
    String name = (String)session.getAttribute("NAME");
%>
id = <%=name%>
</body>
</html>