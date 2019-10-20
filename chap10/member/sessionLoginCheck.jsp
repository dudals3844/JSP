<%@ page contentType = "text/html; charset=utf-8" %>
<%
    String memberid = (String)session.getAttribute("MEMBERID");
    boolean login = memberid==null? false:true;
%>
<html>
<head><title>Login detect</title></head>
<body>
<%
    if(login){
%>
ID: <%=memberid%>
<%
    } else {
%>
logout status
<%
    }
%>
</body>
</html>