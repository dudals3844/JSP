<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import = "java.util.Enumeration"%>

<html>
<head><title>Show default Attribute setting</title></head>
<body>
<%
    Enumeration<String> attrEnum = application.getAttributeNames();
        while (attrEnum.hasMoreElements()) {
            String name = attrEnum.nextElement();
            Object value = application.getAttribute(name);
%>
application setting: <%= name%>  <%= value%>
<%
        }
%>
</body>
</html>
