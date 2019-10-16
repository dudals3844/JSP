<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%
    String id = request.getParameter("memberId");
        if (id != null && id.equals("madvirus")) {
            response.sendRedirect("/chap03/index.jsp");
        } else{
%>
<html>
<head>
    <title>fail to login</title>
</head>

<body>
    wrong id
</body>
</html>
<%
    }
%>