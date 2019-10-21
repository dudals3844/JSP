<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head><title>url tag</title></head>
<body>
<c:url value="http://search.daum.net/search" var="searchUrl">
    <c:param name="w" value="tot"/>
    <c:param name="q" value="공원"/>
</c:url>
<c:redirect url="http://search.daum.net/search">
    <c:param name="w" value="blog"/>
    <c:param name="q" value="공원"/>
</c:redirect>
<ul>
    <li>${searchUrl}</li>
   
</ul>

</body>
</html>