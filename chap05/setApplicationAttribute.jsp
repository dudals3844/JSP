<%@ page contentType= "text/html; charset=utf-8"%>
<%
    String name = request.getParameter("name");
    String value = request.getParameter("value");

    if(name != null && value != null){
        application.setAttribute(name,value);
    }
%>
<html>
<head><title>application setting</title></head>
<body>
<%
    if(name != null && value!= null){
%>
application dufault setting:
<%= name%>=<%= value%>
<%
    } else {
%>
no setting application
<%
    }
%>
</body>
</html>
