<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.Date"%>
<%@ page session="true"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
    Date time = new Date();
        SimpleDateFormat formatter = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        
%>
<html>
<head><title>Session information</title></head>
<body>
session id:<%=session.getId()%><br>
<%
    time.setTime(session.getCreationTime());
%>
create session time:<%=formatter.format(time)%><br>
<%
    time.setTime(session.getLastAccessedTime());
%>
lastest connect time:<%=formatter.format(time)%><br>

</body>
</html>