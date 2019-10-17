<%@ page contentType = "text/html; charset=utf-8" %>
<%
    String type = request.getParameter("type");
    if(type == null){
        return;
    }
%>

<br><br><br>    
<%= type%>
<br>
<%
    if(type.equals("A")){
        out.println("Good");
    }
%>