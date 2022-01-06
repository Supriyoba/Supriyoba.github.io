<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page import="dao.ProductDao" import="bean.Product"
 import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
 <%
    List<Product> products = new ProductDao().ListProduct();
    request.getSession().setAttribute("products", products);
	

%>


    <table border= "1" cellspacing="0" align= "center">
    
    <tr>
       <td>Product ID </td>
       <td> Product</td>
       <td>Price </td>
       <td>Purchase</td>
    
    
    </tr>
    
    <c:forEach items= "${products}" var="product" varStatus="st">
    <tr>
    <td>${product.id}</td>
    <td>${product.name}</td>
    <td>${product.price}</td>
    
    
    <td>
       <form action ="Add2Cart">
       
        Quantity: <input type= "number" value=1 name="num">
        
        <input type ="hidden"  value ="${product.id}"name="pid">
        <input type ="submit" value="Buy">
        
       </form>
    </td>	
    
    
    
    </tr>
    </c:forEach>
    <tr>
    
    
    </tr>
    
    
    </table>
</body>
</html>