<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%
    String memberID = request.getParameter("memberID");
%>
<html>
<head><title>Member information</title></head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        String jdbc = "jdbc:mysql://localhost:3306/chap14"+"?useUnicode=true&characterEncoding=utf8";
        String dbUser = "choi";
        String dbPass = "3844";
        String query = "select * from MEMBER where MEMBERID = '"+memberID+"'";

        conn = DriverManager.getConnection(jdbc,dbUser,dbPass);
        stmt = conn.createStatement();
        rs = stmt.executeQuery(query);
        if(rs.next()){ 
%>
<table border="1">
<tr>
    <td>ID</td><td><%=memberID%></td>
</tr>
<tr>
    <td>Password</td><td><%=rs.getString("PASSWORD")%></td>
</tr>
<tr>
    <td>Name</td><td><%=rs.getString("NAME")%></td>
</tr>
<tr>
    <td>EMAIL</td><td><%=rs.getString("EMAIL")%></td>
</tr>
</table>
<%
        } else{
%>
<%=memberID%>
<%
        }
    } catch(SQLException ex){
%>
error:<%=ex.getMessage()%>
<%
    } finally{
        if(rs != null)try{rs.close();} catch(SQLException ex){}
        if(stmt != null)try{stmt.close();} catch(SQLException ex){}
        if(conn != null)try{conn.close();}catch(SQLException ex){}
    }
%>
</table>
</body>
</html>
