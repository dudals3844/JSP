<%@ page contentType = "text/html; charset=utf-8" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head><title>INFO</title></head>
<body>

<%= request.getParameter("name")%>
<br>
<jsp:include page="body_sub.jsp" flush="false">
    <jsp:param name="name" value="choi"/>
</jsp:include>

<br>
after include name parameter: <%= request.getParameter("name")%>
</body>
</html>