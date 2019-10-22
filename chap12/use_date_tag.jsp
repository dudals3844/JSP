<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head><title>Use numberFormat Tag</title></head>
<body>
<c:set var="now" value="<%=new java.util.Date()%>"/>
<fmt:formatDate value="${now}" type="date" dateStyle="full"/>
<br>
</body>
</html>
