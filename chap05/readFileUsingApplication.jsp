<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import="java.io.*"%>

<html>
<head><title>read file using relative path</title></head>
<body>
    <%
        String resourcePath = "/message/notice.txt";
    %>
    원래 파일 경로 입니다.
    <%= application.getRealPath(resourcePath)%><br>

   <%
        char[] buff = new char[128];
        int len = -1;
        //String filePath = "/var/lib/tomcat8/webapps/chap05/message/notice.txt";
        try(InputStreamReader fr = new InputStreamReader(
            application.getResourceAsStream(resourcePath),"UTF-8")) {
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
