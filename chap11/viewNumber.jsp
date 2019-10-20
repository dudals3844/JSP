<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="util.FormatUtil"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("price",12345);
%>
<html>
<head><title>Call JSTL function</title></head>
<body>
today: ${FormatUtil.number(price,'#,##0')}
<%
    java.util.Map<String,String> map = new java.util.Map<>();
    map.put("code1","1");
    map.put("code2","2");
    request.setAttribute("map",map);

%>
<c:set var="name" value="choi"/>

${map.entrySet().stream().map(entry->entry.value).toList()}
</body>
</html>