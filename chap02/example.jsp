<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%!
    public int multiply(int a , int b){
        int c = a * b;
        return c;
    }

    public int add(int a, int b){
        int c = a +b;
        return c;
    }

    public int subtract(int a , int b){
        int c = a- b;
        return c;
    }
%>

<html>
<head>
    <title>Time now</title>
</head>

<body>
   
    <%
        int value1 = 3;
        int value2 = 9;

        int addResult = add(value1, value2);
        int subtractResult = subtract(value1, value2);
    %>
    <%= addResult%>
    <%= subtractResult%>
    <%= request.getRemoteAddr()%>
    <%= request.getServerName()%>
    <%= request.getProtocol()%>
    <%= request.getMethod()%>
    <%= request.getServerPort()%>
    
    
</body>
</html>
