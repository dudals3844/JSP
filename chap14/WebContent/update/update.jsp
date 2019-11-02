<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.*"%>
<%
    request.setCharacterEncoding("utf-8");

    String memberID = request.getParameter("memberID");
    String name = request.getParameter("name");

    int updateCount = 0;

    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    Statement stmt = null;
    

    try {
        String jdbc = "jdbc:mysql://localhost:3306/chap14"+"?useUnicode=true&characterEncoding=utf8";
        String dbUser = "choi";
        String dbPass = "3844";
        String query = "update MEMEBER set NAME= 'choi' where MEMBERID= 'dudals'";

        conn = DriverManager.getConnection(jdbc,dbUser,dbPass);
        stmt = conn.executeQuery(query);
       
        

    } finally {
        if(stmt != null)try{stmt.close();} catch(SQLException ex){}
        if(conn != null)try{conn.close();}catch(SQLException ex){}
    }
%>
<html>
<head><title>Change name</title></head>
<body>
<%if(updateCount > 0){%>
<%=memberID%>:user change <%=name%>
<%}else{%>
<%=memberID%>  <%=name%>
<%}%>

</body>
</html>
