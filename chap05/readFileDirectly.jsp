<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import="java.io.*"%>

<html>
<head><title>read file using absolute path</title></head>
<body>
   <%
        char[] buff = new char[128];
        int len = -1;
        String filePath = "/var/lib/tomcat8/webapps/chap05/message/notice.txt";
        try(InputStreamReader fr = new InputStreamReader(
            new FileInputStream(filePath),"UTF-8")) {
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
