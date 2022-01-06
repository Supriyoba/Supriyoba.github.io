<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="bean.User"%>  
 <%@ page import="dao.UserDao"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%
    User login = new UserDao().getUser("Supriyo", "123");
     out.print(login.getName());
    %>
</body>
</html>