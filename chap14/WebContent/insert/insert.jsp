<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%
    request.setCharacterEncoding("utf-8");

    String memberID = request.getParameter("memberID");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String email = request.getParameter("email");


    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    PreparedStatement pstmt = null;
    

    try {
        String jdbc = "jdbc:mysql://localhost:3306/chap14"+"?useUnicode=true&characterEncoding=utf8";
        String dbUser = "choi";
        String dbPass = "3844";
        String query = "update MEMEBER set NAME= 'choi' where MEMBERID= 'dudals'";

        conn = DriverManager.getConnection(jdbc,dbUser,dbPass);
        pstmt = conn.prepareStatement("insert into MEMBER values (?,?,?,?)");
        pstmt.setString(1,memberID);
        pstmt.setString(2, password);
        pstmt.setString(3, name);
        pstmt.setString(4, email);
       
        pstmt.executeUpdate();

    } finally {
        if(pstmt != null)try{pstmt.close();} catch(SQLException ex){}
        if(conn != null)try{conn.close();}catch(SQLException ex){}
    }
%>
<html>
<head><title>Insert</title></head>
<body>
Insert new record in Table.
</body>
</html>
