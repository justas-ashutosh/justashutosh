<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Test_Register.*" %>
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
<title>Detail About@E - Gas</title>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
if(session.getAttribute("username")==null)
	response.sendRedirect("Home.html");
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Cust_Home.jsp">E- Gas Sewa</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Cust_Home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Cust_product.jsp">Products</a>
      </li>
    </ul>
  </div>
</nav>
<br>
<%if (session.getAttribute("username") != null ) {%>
	<jsp:include page="included pages/logout1.jsp"></jsp:include>
        <%
        }  %>
<br>
<%
		String pid=request.getParameter("pid");
		try {
			Connection_Dao dao=new Connection_Dao();
			Connection con=dao.getConnection();
			String query = "select * from products where pid="+pid;
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
	%>
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="<%=rs.getString("pimg")%>" alt="First slide" height="350px" width="950px">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<%=rs.getString("pimg")%>" alt="Second slide" height="350px" width="950px">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<%=rs.getString("pimg")%>" alt="Third slide" height="350px" width="950px">
    </div>
  </div>
</div>
<br>
<div class="jumbotron">
  <h1 class="display-3"><%=rs.getString("pname")%></h1>
  <p class="lead"><i><%=rs.getString("pdis")%></i></p>
  <hr class="my-4">
  <p><h3><b><i>Rs. <%=rs.getInt("price")%></i></b></h3></p>
  <p>Liquefied petroleum gas or liquid petroleum gas (LPG or LP gas), also referred to as simply propane or butane, are flammable mixtures of hydrocarbon gases used as fuel in heating appliances, cooking equipment, and vehicles.

It is increasingly used as an aerosol propellant[1] and a refrigerant,[2] replacing chlorofluorocarbons in an effort to reduce damage to the ozone layer. When specifically used as a vehicle fuel it is often referred to as autogas.
<form action="/Chat_on_1.0/Addtocart" method="post">
	<input type="hidden" name="pid" value="<%=rs.getString("pid")%>">
	<input type="hidden" name="pname" value="<%=rs.getString("pname")%>">
	<input type="hidden" name="price" value="<%=rs.getInt("price")%>">
    <input type="submit" class="btn btn-primary btn-lg" value="Add to Cart.">
</form> 
</div>
<%
		}
	%>
	<%
		rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>