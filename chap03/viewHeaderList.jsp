<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>

<html>
<head>
    <title>Print Header list</title>
</head>

<body>
    <%
        Enumeration headerEnum = request.getHeaderNames();
        while (headerEnum.hasMoreElements()) {//뒤에 남은 데이터가 있으면 True, 없으면 False를 반환한다. while 루프를 통한 제어처리시 사용한다.
            String headerName = (String)headerEnum.nextElement();
            String headerValue = request.getHeader(headerName);
        
    %>
    <%= headerName %> =  <%= headerValue%><br>

    <% 
        }
    %>
</body>
</html>