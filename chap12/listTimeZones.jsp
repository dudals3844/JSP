<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head><title>Timezone list</title></head>
<body>
<c:forEach var="id" items="<%= java.util.TimeZone.getAvailableDs()%>">
${id}<br/>
</c:forEach>
</body>
</html>
