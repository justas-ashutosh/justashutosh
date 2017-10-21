<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Book Cylinder@E Gas</title>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
if(session.getAttribute("username")==null)
	response.sendRedirect("Home.html");
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Home.html">E-Gas Sewa</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Cust_Home.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Cust_product.jsp">Product</a>
      </li>
    </ul>
  </div>
</nav>
<%if (session.getAttribute("username") != null ) {%>
	<jsp:include page="included pages/logout1.jsp"></jsp:include>
        <%
        }  %>
<marquee><b><i>Note : Your address Should be the One Present on the Addhar card. Else You Cylinder Will Not be Delivered.</i></b></marquee> 
<form  action="#" method="post">
  <div class="form-group">
    <label for="exampleFormControlInput1">Phone No:</label>
    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="+919768092336">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Address:</label>
    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="196, Masjid Terrace, Reay Road Mumbai-400010">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Select No. of Cylinders</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>Select Quantity</option>
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Type Of Need</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>Select One Of the Following</option>
      <option>Industrial Use</option>
      <option>Domestic</option>
      <option>Scientific</option>
      <option>Academic</option>
      <option>Other</option>
    </select>
  </div>
<button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>