<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="util.Cookies"%>
<%
    Cookies cookies = new Cookies(request);
%>
<html>
<head><title>Login check</title></head>
<body>
<%
    if(cookies.exists("AUTH")){
%>
id= <%=cookies.getValue("AUTH")%>
<%
    }else{
%>
Login check fail
<%
    }
%>
</body>
</html>