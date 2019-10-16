<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>

<html>
<head><title>read file using url path</title></head>
<body>
    

   <%
        char[] buff = new char[128];
        int len = -1;
        String resourcePath = "/message/notice.txt";
        URL url = application.getResource(resourcePath);
        try(InputStreamReader fr = new InputStreamReader(
            url.openStream(),"UTF-8")) {
                while ((len = fr.read(buff)) != -1) {
                    out.print(new String(buff,0,len));
                }
            
        } catch (IOException ex) {
            //TODO: handle exception
            out.println("exception"+ex.getMessage());
        }
   %>
</body>
</html>
