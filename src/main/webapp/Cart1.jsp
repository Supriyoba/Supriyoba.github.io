<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart</title>
</head>
<body>
<table border="1" cellspacing="0" align="center">
		<tr>
			<td>Product ID</td>
			<td>Product Name</td>
			<td>Price</td>
			<td>Number</td>
			<td>Total Price</td>
		</tr>
		<c:forEach  items="${carts}" var="cart" varStatus="st">
			<tr>
				<td>${cart.product.id}</td>
				<td>${cart.product.name}</td>
				<td>${cart.product.price}</td>	
				<td>${cart.num}</td>
				<td>${cart.product.price*cart.num}</td>		
			</tr>
		</c:forEach>
	</table>
</body>
</html>