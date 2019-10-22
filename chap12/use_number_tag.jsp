<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head><title>Use numberFormat Tag</title></head>
<body>
<c:set var="price" value="10000"/>
<fmt:formatNumber value="${price}" type="number" var="numberType"/>
<br/>
currency: <fmt:formatNumber value="${price}" type="currency" currencySymbol="KRW" />
<br/>
number: ${numberType}
</body>
</html>
