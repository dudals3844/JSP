<%@ page contentType = "text/html; charset=utf-8" %>
body_sub name parameter: <%= request.getParameter("name")%>
<br>
<%
    String[] names = request.getParameterValues("name");
    for(String name:names){
        out.println(name);
    }
%>