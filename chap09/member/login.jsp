<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="util.Cookies"%>
<%
    String id = request.getParameter("id");
        String password =  request.getParameter("password");

        if (id.equals(password)) {
            response.addCookie(
                Cookies.createCookie("AUTH",id,"/",-1)
            );
%>
<html>
<head><title>Success to login</title></head>
<body>
    login clear
</body>
</html>
<%
        }else{
%>
<script>
    alert("Fail to login");
    history.go(-1);
</script>
<%
        }
%>