<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head><title>forTokens tag</title></head>
<body>
, and .<br>
<c:forTokens var="token" items="yellow,red.blue,orange" delims=",.">
${token}
</c:forTokens>

</body>
</html>