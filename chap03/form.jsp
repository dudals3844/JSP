<%@ page contentType= "text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>


<html>
<head>
    <title>Create form</title>
</head>

<body>
    <form action="/chap03/viewParameter.jsp" method="post">
    name: <input type="text" name= "name" size="10"><br>
    address: <input type="text" name="address" size="30"><br>
    animal:
    <input type="checkbox" name="pet" value="dog">dog
    <input type="checkbox" name="pet" value="cat">cat
    <input type="checkbox" name="pet" value="pig">pig
<br>
<input type="submit" value="send">
</form>        
</body>
</html>