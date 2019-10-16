<%@ page contentType= "text/html; charset=utf-8"%>

<html>
<head><title>View server information</title></head>
<body>
    <%= application.getServerInfo()%><br>
    <%= application.getMajorVersion()%><br>
    <%= application.getMinorVersion()%><br>
</body>
</html>
