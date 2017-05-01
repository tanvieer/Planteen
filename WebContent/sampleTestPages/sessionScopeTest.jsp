<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="POST">
		test ${cart.productId}
		
<%-- 		<jsp:useBean id="cartList" scope="session" class="java.util.ArrayList" /> --%>
<%-- 		<jsp:useBean id="cart" scope="cartList" class="entity.Cart"></jsp:useBean>
		<c:set target="${cart}" property="productId" value="2000"/>
		
		<jsp:useBean id="cart1" scope="cartList" class="entity.Cart"></jsp:useBean>
		<c:set target="${cart1}" property="productId" value="100"/>
		
		<jsp:useBean id="cart2" scope="cartList" class="entity.Cart"></jsp:useBean>
		<c:set target="${cart2}" property="productId" value="100"/>
		<c:set target="${cart2}" property="productName" value="Mobile"/>
		 --%>
		
		<%
		
			ArrayList<Cart> cList = new ArrayList<Cart>();
			
			Cart ct = new Cart(1,"Mobile");
			cList.add(ct);
			
			 ct = new Cart(2,"Mobile1");
			cList.add(ct);
			
			 ct = new Cart(3,"Mobile2");
			cList.add(ct);
			
			 ct = new Cart(4,"Mobile3");
			cList.add(ct);

			

			session.setAttribute("cartList", cList);
		
		%>
		
		
		
		
		<input type="submit" value="DONE"/>	
	</form>
	

</body>
</html>