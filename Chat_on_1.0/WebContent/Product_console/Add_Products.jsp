<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body{
  background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPdNimmTX-7D_dBVPqvwJnqE7kJTxa4gPh8hTOPjXb3VBMvp3k);
  background-repeat:repeat;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<title>Admin_Add@E-gas</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" href="../success.jsp">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="../News.jsp">News</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="../Jasper.jsp">Reports</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#">Answer Complains</a>
  </li>
</ul>
</nav>
<h1><b><i><u>Add New Product Console....</u></i></b></h1>
<form action="#" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Product id</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter pid">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Product Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter pname">
  </div>
 <div class="form-group">
    <label for="exampleInputEmail1">Enter Product Description</label>
    <textarea class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter pdis"></textarea>
  </div>
    <div class="form-group">
    <label for="exampleInputEmail1">Enter Product Image Path</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter pimg">
  </div>
    <div class="form-group">
    <label for="exampleInputEmail1">Enter Product Price</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter price">
  </div>
 <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>