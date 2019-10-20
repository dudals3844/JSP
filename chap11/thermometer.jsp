<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="chap11.Thermometer"%>
<%
    Thermometer thermometer = new Thermometer();
    request.setAttribute("t",thermometer);
%>
<html>
<head><title>온도 변환 에제</title></head>
<body>
${t.setCelsius('Seoul',27.3)}
Seoul temperature:${t.getCelsius('Seoul')}<br>${t.getFahrenheit('Seoul')}
</body>
</html>