<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<style>



body {
  background-image: url("include/Cart.jpg");
   background-attachment:fixed;
   background-repeat: no-repeat;
   background-size: cover;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1 align="center">Shopping Cart</h1>
    <table cellspacing="0" border="1" align="center">
    
      <tr>
     
       <td>Product Name</td>
       <td>Product Price </td>
       <td>Product Number</td>
       <td>Total Price</td>
    
    
    </tr>
    
   
    <tr>
    <td>${cart.product.name}</td>
    <td>${cart.product.price}</td>
    <td>${cart.num}</td>
    <td>${cart.product.price*cart.num}</td>         
    </tr>
    
    
    
    
    </table>
    
</body>
</html>