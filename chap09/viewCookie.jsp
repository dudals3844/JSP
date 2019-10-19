<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.net.URLDecoder"%>

<html>
<head><title>cookie list</title></head>
<body>
cookie list<br>
<%
    Cookie[] cookies = request.getCookies();
        if (cookies != null && cookies.length>0) {
            for (int i = 0; i < cookies.length; i++) {
%>
    <%=cookies[i].getName()%>=
    <%=URLDecoder.decode(cookies[i].getValue(),"utf-8")%><br>
<%
        }
    } else {
%>    
cookie not exist
<%
    }
%>
    
</body>
</html>