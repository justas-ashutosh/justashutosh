<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
#one{
	margin: 10px;
	padding: 8px;
	float: right;
	background-color: gray;
	text-align: center;
	border: 5px  groove black;
	border-radius: 2px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<button id="one" onclick="window.location.assign('Cust_Home.jsp')"type="button" class="btn btn-secondary btn-lg"  value="Home">Home</button>
<form action="/Chat_on_1.0/logout" method="post">
        <button id="one" type="submit" class="btn btn-secondary btn-lg"  value="logout">Logout</button>
</form>
</body>
</html>