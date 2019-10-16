<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Map"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>Print parameter</title>
</head>

<body>
    name parameter = <%= request.getParameter("name")%> <br><!--한개의 값만 읽을 수 있다-->
    address parameter = <%= request.getParameter("address")%> <br>
    <br>
    <%
        String[] values = request.getParameterValues("pet");//배열로 여러개의 값을 읽을 수 있다
        if(values != null){
            for(int i =0; i < values.length; i++){
            %>
                <%= values[i]%>
            <%
            }
        }
    %>
    <br>


    request.getParameterNames()<br>

    <%
        Enumeration paramEnum = request.getParameterNames();
        while(paramEnum.hasMoreElements()){
            String name = (String)paramEnum.nextElement();
    %>
        <%= name%>
    <%
    }
    %>
    <br>
    request.getParameterMap()<br>

    <%
        Map parameterMap = request.getParameterMap();
        String[] nameParam = (String[])parameterMap.get("name");
        if(nameParam != null){
    %>
        name = <%= nameParam[0]%>
    <%
        }
    %>
</body>
</html>