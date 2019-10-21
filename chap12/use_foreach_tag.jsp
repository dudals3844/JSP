<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<%
    HashMap<String,Object> mapData = new HashMap<String,Object>();
    mapData.put("name", "choi");
    mapData.put("today", new java.util.Date());
    
%>
<c:set var="intArray" value="<%=new int[]{1,2,3,4,5}%>"/>
<c:set var="map" value="<%=mapData%>"/>
<html>
<head><title>forEach tag</title></head>
<body>
1~100 홀수의 합<br>
<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="100" step="2">
<c:set var="sum" value="${sum+i}"/>
</c:forEach>
result = ${sum}

</body>
</html>