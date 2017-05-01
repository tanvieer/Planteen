<%-- <%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
		
		<jsp:useBean id="cartList" scope="session" class="java.util.ArrayList" />
		<jsp:useBean id="cart" scope="cartList" class="entity.Cart"></jsp:useBean>
		<c:set target="${cart}" property="productId" value="2000"/>
		
		<jsp:useBean id="cart1" scope="cartList" class="entity.Cart"></jsp:useBean>
		<c:set target="${cart1}" property="productId" value="100"/>
		
		<jsp:useBean id="cart2" scope="cartList" class="entity.Cart"></jsp:useBean>
		<c:set target="${cart2}" property="productId" value="100"/>
		<c:set target="${cart2}" property="productName" value="Mobile"/>
		
		
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



<%@ page language="java" import="examples.cart.*,java.util.*,java.text.*" %>

Show the header with the shopping cart image
<table border="0">
<tr><td><img src="cart4.png"><td><h1>Shopping Cart</h1>
</table>

<%
// Get the current shopping cart from the user's session.
    ShoppingCart cart = (ShoppingCart) session.getAttribute("ShoppingCart");

// If the user doesn't have a shopping cart yet, create one.
    if (cart == null)
    {
        cart = new ShoppingCart();
        session.setAttribute("ShoppingCart", cart);
    }

// Get the items from the cart.
    Vector items = cart.getItems();

// If there are no items, tell the user that the cart is empty.
    if (items.size() == 0)
    {
        out.println("<h3>Your shopping cart is empty.</h3>");
    }
    else
    {
%>
Display the header for the shopping cart table
<br>
<table border=4>
<tr><th>Description</th><th>Quantity</th><th>Price</th></tr>
<%

        int numItems = items.size();

// Get a formatter to write out currency values.
        NumberFormat currency = NumberFormat.getCurrencyInstance();

        for (int i=0; i < numItems; i++)
        {
           // Item item = (Item) items.elementAt(i);

// Print the table row for the item.
            out.print("<tr><td>");
            //out.print(item.description);
            out.print("</td><td>");
           // out.print(item.quantity);
            out.print("</td><td>");
            //out.print(currency.format(item.price));

// Print out a link that allows the user to delete an item from the cart.
            out.println("</td><td>"+
                "<a href=\"/shoppingcart/RemoveItemServlet?item="+
                i+"\">Remove</a></td></tr>");
        }
    }
%>
</table> --%> --%>