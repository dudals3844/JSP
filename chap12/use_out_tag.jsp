<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.IOException, java.io.FileReader"%>
<html>
<head><title>View source</title></head>
<body>
<%
    FileReader reader = null;
    try {
        String path = request.getParameter("path");
        reader = new FileReader(getServletContext().getRealPath(path));
%>
<pre>
source code = <%=path%>
<c:out value="<%=reader%>" escapeXml="true"/>
</pre>
<%
    }catch (IOException ex) {
%>
error:<%= ex.getMessage()%>
<%
    }finally{
        if (reader != null) {
            try {
                reader.close();
            } catch (Exception ex) {
                //TODO: handle exception
                
            }
        }
    }
%>
</body>
</html>