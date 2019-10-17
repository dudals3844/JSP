<%@ page contentType= "text/html; charset=utf-8"%>

<html>
<head><title>print parameter</title></head>
<body>
name parameter:
<% try{%>
<%= request.getParameter("name").toUpperCase()%>
<%} catch(Exception ex){%>
wrong name parameter
<%}%>
</body>
</html>
