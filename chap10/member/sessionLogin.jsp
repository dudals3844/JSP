<%@ page contentType = "text/html; charset=utf-8" %>
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    if(id.equals(password)){
        session.setAttribute("MEMBERID",id);
%>
<html>
<head><title>Success to login</title></head>
<body>
Success to login
</body>
</html>
<%
    }else{
%>
<script>
alert("Fail to login");
history.go(-1);
</script>
<%dud
    }
%>