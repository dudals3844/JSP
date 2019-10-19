<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.net.URLEncoder"%>
<%
    //Cookie cookie1 = new Cookie("id","madvirus");
    //cookie1.setDomain(".http://dudals3844.koreacentral.cloudapp.azure.com");
    //response.addCookie(cookie1);

    Cookie cookie2 = new Cookie("only","onlycookie");
    response.addCookie(cookie2);
    Cookie choi = new Cookie("name","choi");
    choi.setMaxAge(10);
    response.addCookie(choi);
    
    //Cookie cookie3 = new Cookie("invalid","invalidcookie");
    //cookie3.setDomain("http://dudals3844.koreacentral.cloudapp.azure.com");
    //response.addCookie(cookie3);
%>
<html>
<head><title>make cookie</title></head>
<body>
Create cookie like this<br>
<%-- <%=cookie1.getName()%> = <%=cookie1.getValue()%>
<%=cookie1.getDomain()%>
<br> --%>
<%=cookie2.getName()%> = <%=cookie2.getValue()%>
<%=cookie2.getDomain()%>
<%-- <br>
<%=cookie3.getName()%> = <%=cookie3.getValue()%>
<%=cookie3.getDomain()%>
<br> --%>
</body>
</html>