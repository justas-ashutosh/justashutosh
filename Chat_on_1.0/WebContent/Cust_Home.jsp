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
<title>Customer Home Page</title>
<script>
$('#exampleModal').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  var recipient = button.data('whatever') // Extract info from data-* attributes
	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
	  var modal = $(this)
	  modal.find('.modal-title').text('New message to ' + recipient)
	  modal.find('.modal-body input').val(recipient)
	})
</script>
<style>
body{
  background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPdNimmTX-7D_dBVPqvwJnqE7kJTxa4gPh8hTOPjXb3VBMvp3k);
  background-repeat:repeat;
}
.styletext{
	fontfamily: Times New Romen;
	text-align: center;
	letter-spacing: 4px;
	text-transform: uppercase;
	text-decoration: underline;	
}
#one{
	border:15px sloid black;
	border-radius:10px;
}
#two{
	float:right;
}
#nine{
	border:5px solid black;
	text-decoration:underline;
	color:white;
	background-color: black;
}
</style>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
if(session.getAttribute("username")==null)
	response.sendRedirect("Home.html");
%>
<header>
<h1 class="styletext" id="nine"><br>E - Gas Sewa <br><br></h1>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Home.html">E- Gas Sewa</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="Cust_product.jsp">Products<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Search.jsp">Search Distributor's</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Booking_Cylinder.jsp">Book Cylinder</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Transfer_location.jsp">Transfer Location</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="Delete.jsp">Delete Account</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="News.jsp">News</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Important Links
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="Faq.html">Faq's</a>
          <a class="dropdown-item" href="Inst.jsp">Instruction Manual</a>
          <a class="dropdown-item" href="Achivement.html">Achivement's</a>
          <a class="dropdown-item" href="Vision.html">Vision</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
</header>
<div id="two">
<form action="/Chat_on_1.0/logout" method="post">
        <button type="submit" class="btn btn-secondary btn-lg"  value="logout">Logout</button>
</form>
</div>
<p>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
   Notice
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body">
    <h3><i>We Welcome you ${sessionScope.username}.</i></h3> 
    We Highly Suggest you to Visit Our Faq's And Instruction Manual Page's that will Guide You to the Right Path.
  </div>
</div>
<div id ="one" class="container">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div  id="one" class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" class="img-fluid" alt="Responsive image" src="myimages/66.jpg" height="350px" width="950px" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" class="img-fluid" alt="Responsive image" src="myimages/71.jpg" height="350px" width="950px" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" class="img-fluid" alt="Responsive image" src="myimages/69.jpg" height="350px" width="950px" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" class="img-fluid" alt="Responsive image" src="myimages/67.jpg" height="350px" width="950px" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
<br><br>
<div class="jumbotron">
  <h1 class="display-3">Hello !</h1>
  <p class="lead">This is the customer Console page form where You Can enjoy the Different Benifit's of being a part of the Web app. </p>
  <hr class="my-4">
  <p> Please Do Recommend Us to Your Other Family and friends.</p>
  <p class="lead">
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Comment About Us</button>
  </p>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New Comment</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="/Chat_on_1.0/User_Comment" method="post">
          <div class="form-group">
            <label for="message-text" class="form-control-label">User Name</label>
            <input type="text" class="form-control" id="message-text" name=username value=${sessionScope.username } />
            <label for="message-text" class="form-control-label">Message:</label>
            <textarea class="form-control" id="message-text" name="message" placeholder="write a comment"></textarea>
            <br>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Send message</button>
      </div>
      </form>
      </div>
    </div>
  </div>
</div>
<br>
<div class="card" style="width: 20rem;">
  <img class="card-img-top" src="myimages/card.png" alt="Card image cap">
  <div class="card-body">
    <p class="card-text">We Highly Recommend you to use Digital Payments and support Our Prime minister's Vision</p>
  </div>
</div>
<br>
</body>
<footer id="nine" class="styletext">
 Copyright &copy; AKM Corporation
<br>
  <a href="Home.html" style="float:right;">Home</a><br>
  <a href="News.jsp" style="float:right;" >News</a>
  <a href="Search.jsp" style="float:left;">Our Networks</a><br>
  <a href="Reg.jsp" style="float:left;">Login & Sign-up</a><br>
  <a href="Product.jsp" style="float:left;">Our Products</a>
 <br>
</footer>
</html>