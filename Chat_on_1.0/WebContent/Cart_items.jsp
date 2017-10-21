<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.HashMap" %>    
<%@ page import="Cart_Test.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<style>
body{
  background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPdNimmTX-7D_dBVPqvwJnqE7kJTxa4gPh8hTOPjXb3VBMvp3k);
  background-repeat:repeat;
}
</style>
<title>Cart@E-Gas</title>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
if(session.getAttribute("username")==null)
	response.sendRedirect("Home.html");
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Home.html">E Gas Sewa</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="Cust_Home.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Booking_Cylinder.jsp">Book Cylinder</a>
      </li>
  </div>
</nav>
<br>
<div class="fluid container">
  <h1><u><i>Cart E-Gas Reloaded</i></u></h1>
  <p>We Highly Suggest Digital Payments as we support the Vision of Digital India. </p>
  <table class="table">
    <thead>
      <tr>
        <th>Product Name</th>
        <th>Product Price</th>
        <th>        </th>
      </tr>
    </thead>
    <tbody>
     <%
     Cart shoppingCart;
     shoppingCart = (Cart) session.getAttribute("cart");
     HashMap<String, Integer> items = shoppingCart.getCartItems();
           
            for(String key: items.keySet()){
                out.println("<tr><td><b><i>"+key+"</i></b></td><td><b><i>"+"Rs."+items.get(key)+"</i></b></td>"+
            "<td><form action='Addtocart' method='post'>"+
            "<input type='hidden' name='pname' value='"+key+"'><input type='hidden' name='del' value='del'>"+
                "<button type='submit' class='btn btn-primary'>Delete the item.</button></form></td></tr>");
              }
      %>
      <tr>
        <th>Total Payable Amount is:</th>
        <th>                        </th>
        <th><% 
        int sum=0;
        for(String key: items.keySet()){
        	sum=sum+items.get(key);        
        }        
        out.println("Rs. "+sum);%></th>
      </tr>
    </tbody>
      <tr>
        <th><form action="Cust_product.jsp"><button type="submit" class="btn btn-primary">Buy More Products.</button></form></th>
        <th>                                           </th>
        <th><form action="payment.jsp"><button type="submit" class="btn btn-primary">Proceed To Payments.</button></form></th>
      </tr>

  </table>
</div>
</body>
</html>