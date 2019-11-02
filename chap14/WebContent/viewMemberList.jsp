<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.*"%>

<html>
<head><title>Member list</title></head>
<body>
Show member table
<table>
<tr>
    <td>name</td><td>ID</td><td>Email</td>
</tr>
<%
    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        String jdbc = "jdbc:mysql://localhost:3306/chap14"+"?useUnicode=true&characterEncoding=utf8";
        String dbUser = "choi";
        String dbPass = "3844";
        String query = "select * from MEMBER order by MEMBERID";

        conn = DriverManager.getConnection(jdbc,dbUser,dbPass);
        stmt = conn.createStatement();
        rs = stmt.executeQuery(query);
        while(rs.next()){
%>
<tr>
    <td><%=rs.getString("NAME")%></td>
    <td><%=rs.getString("MEMBERID")%></td>
    <td><%=rs.getString("EMAIL")%></td>
</tr>
<%
        }
    } catch(SQLException ex){
        out.println(ex.getMessage());
        ex.printStackTrace();
    } finally{
        if(rs != null)try{rs.close();} catch(SQLException ex){}
        if(stmt != null)try{conn.close();} catch(SQLException ex){}
        if(conn != null)try{conn.close();}catch(SQLException ex){}
    }
%>
</table>
</body>
</html>
