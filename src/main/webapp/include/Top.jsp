<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>



body {
  background-image: url("include/Login.jpg");
   background-attachment:fixed;
   background-repeat: no-repeat;
   background-size: cover;
}

</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
JSP online Shopping
  <c:if test="${empty user}">
     <a href ="Login.jsp">Login</a>
  </c:if>
  
  <c:if test="${!empty user}">
     <div>Welcome ${user.name}</div>
  
     <a href ="Logout.jsp">Logout</a>
  </c:if>
  <c:if test="${empty user}">
     <a href ="Register.jsp">Register</a>
  </c:if>
</body>
</html>