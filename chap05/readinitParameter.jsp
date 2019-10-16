<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import = "java.util.Enumeration"%>

<html>
<head><title>Read initial parameter</title></head>
<body>
    <ul>
    <%
        Enumeration<String> initParamEnum = application.getInitParameterNames();
        while (initParamEnum.hasMoreElements()) {
            String initParamName = initParamEnum.nextElement();
    %>
    <li><%=initParamName%> = 
        <%=application.getInitParameter(initParamName)%>
    <%
        }
    %>
</body>
</html>
