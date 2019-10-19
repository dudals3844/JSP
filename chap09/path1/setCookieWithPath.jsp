<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<%
    Cookie cookie1 = new Cookie("path1",URLEncoder.encode("path:/chap9/path1","utf-8"));
    cookie1.setPath("/chap09/path1");
    response.addCookie(cookie1);

    Cookie cookie2 = new Cookie("path2",URLEncoder.encode("path:","utf-8"));
    response.addCookie(cookie2);

    Cookie cookie3 = new Cookie("path3",URLEncoder.encode("path:/","utf-8"));
    cookie1.setPath("/");
    response.addCookie(cookie3);

    Cookie cookie4 = new Cookie("path4",URLEncoder.encode("path:/chap9/path2","utf-8"));
    cookie1.setPath("/chap09/path2");
    response.addCookie(cookie4);
%>
<html>
<head><title>set cookie path</title></head>
<body>
<%=cookie1.getName()%>=<%=cookie1.getValue()%>
<%=cookie1.getPath()%>
<br>
<%=cookie2.getName()%>=<%=cookie2.getValue()%>
<%=cookie2.getPath()%>
<br>
<%=cookie3.getName()%>=<%=cookie3.getValue()%>
<%=cookie3.getPath()%>
<br>
<%=cookie4.getName()%>=<%=cookie4.getValue()%>
<%=cookie4.getPath()%>
<br>
</body>
</html>