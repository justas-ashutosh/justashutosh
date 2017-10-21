<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="Test_Register.Connection_Dao"%>
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
#one{

	position:static;
	marin:10px;
	padding: 10px;
}
</style>
<title>ProDuct@E gas</title>
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
<%if (session.getAttribute("username") != null && session.getAttribute("query")!=null) {%>
	<jsp:include page="included pages/logout1.jsp"></jsp:include>
        <%
        }  %>
<br>
<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test1" user="root" password="ashutosh"/>
<sql:query var="list_comments" dataSource="${myDS}">
    select * from products where pname like '%${sessionScope.query}%';
</sql:query>
<div class="container-fluid" >	
<c:forEach var="Com" items="${list_comments.rows}">
<div class="row" id="one">
  <div class="col-sm">
    <div class="card">
    <img class="card-img-top" src="<c:out value="${Com.pimg}" />" alt="Card image cap" height="150px" width="200px">
      <div class="card-body">
        <h4 class="card-title"><u><c:out value="${Com.pname}" /></u></h4>
        <p class="card-text"><i><c:out value="${Com.pdis}" /></i></p>
        <p class="card-text"><b><i><c:out value="Rs. ${Com.price}" /></i></b></p>
        <form action="Detail_About_Products.jsp">
        <input type="hidden"  name="pid" value="${Com.pid}"/>	
        <button type="submit" class="btn btn-primary">View Details</button>
       </form>
      </div>
    </div>
  </div>
   <div class="col-sm">
    <div class="card">
    <img class="card-img-top" src="<c:out value="${Com.pimg}" />" alt="Card image cap" height="150px" width="200px">
      <div class="card-body">
        <h4 class="card-title"><u><c:out value="${Com.pname}" /></u></h4>
        <p class="card-text"><i><c:out value="${Com.pdis}" /></i></p>
        <p class="card-text"><b><i><c:out value="Rs. ${Com.price}" /></i></b></p>
        <form action="Detail_About_Products.jsp">
        <input type="hidden"  name="pid" value="${Com.pid}"/>	
        <button type="submit" class="btn btn-primary">View Details</button>
       </form>
      </div>
    </div>
  </div>
   <div class="col-sm">
    <div class="card">
    <img class="card-img-top" src="<c:out value="${Com.pimg}" />" alt="Card image cap" height="150px" width="200px">
      <div class="card-body">
        <h4 class="card-title"><u><c:out value="${Com.pname}" /></u></h4>
        <p class="card-text"><i><c:out value="${Com.pdis}" /></i></p>
        <p class="card-text"><b><i><c:out value="Rs. ${Com.price}" /></i></b></p>
        <form action="Detail_About_Products.jsp">
        <input type="hidden"  name="pid" value="${Com.pid}"/>	
        <button type="submit" class="btn btn-primary">View Details</button>
       </form>
      </div>
    </div>
  </div>
  </div>
 </c:forEach> 
</div>
  	<br>
	<br>
</body>
</html>