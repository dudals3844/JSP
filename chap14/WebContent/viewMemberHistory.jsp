<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
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
        String query = "select * from MEMBER_HISTORY where MEMBERID = '"+memberID+"'";

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
    <td>History</td>
    <td>
<%
    String history = null;
    Reader reader = null;
    try{
        reader = rs.getCharacterStream("HISTORY");
        if(reader != null){
            StringBuilder buff = new StringBuilder();
            char[] ch = new char[512];
            int len = -1;

            while((len = reader.read(ch)) != -1){
                buff.append(ch,0,len);
            }
            history = buff.toString();
        }
    } catch(IOException ex){
        out.println("exception:"+ex.getMessage());
    } finally{
        if(reader != null)try{reader.close();}catch(IOException ex){}
    }
%>
    <%=history%>
    </td>
</tr>
</table>
<%
        } else{
%>
<%=memberID%>NO Member history
<%
        }
    }catch(SQLException ex){
%>
error:<%=ex.getMessage()%>
<%
    } finally{
        if(rs != null)try{rs.close();} catch(SQLException ex){}
        if(stmt != null)try{conn.close();} catch(SQLException ex){}
        if(conn != null)try{conn.close();}catch(SQLException ex){}
    }
%>
</html>
