<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import="java.net.*"%>
<%
    String value = "자바";
        String encodedValue = URLEncoder.encode(value, "utf-8");//자바 단어를 utf-8로 인코딩
        
        response.sendRedirect("/chap03/index.jsp?name="+encodedValue);
    
%>

