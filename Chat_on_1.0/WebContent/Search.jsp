<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="NYTimes_Configuration.Nytimes_Key"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" , content="initial-scale=1.0, user-scalable=no">
<title>Search@E-Sewa</title>
<link rel="stylesheet" href="style/Mystyle.css">
<script type="text/javascript" src="Java_script/myscript.js"></script>
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?libraries=places&key=<%=Nytimes_Key.API_KEY_map()%>&callback=initialize"
	async defer>
	
</script>
<style>
html, body, #map {
	height: 100%;
	margin: 0px;
	padding: 0px;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: none;
}

input[type=submit] {
	background-color: #1f01ff;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #1f01ff;
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<%if (session.getAttribute("username") != null ) {%>
	<jsp:include page="included pages/logout.jsp"></jsp:include>
        <%
        }  %>
	<div class="container1">
		<table
			style="border: 1px solid gray; border-radius: 2px; margin-left: 225px; margin-top: 40px; margin-bottom: 40px;">
			<form action="/Chat_on_1.0/cod_conversion" method="post">
				<tr>
					<td>Enter Your City:</td>
					<td><input type="text" name="city"
						placeholder="Please Type Your City..." /></td>
				</tr>
				<tr>
					<td>Enter Your Area Name:</td>
					<td><textarea id="address" name="address"
							placeholder="Please Type Your Area Name.."
							style="height: 100px; width: 500px;"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" name="submit" value="Submit!"
						align="right" style="margin-left: 20px; margin-bottom: 9px;" /></td>
				</tr>
			</form>
		</table>
	</div>
	<br></br>
	<footer> Copyright &copy; AKM Corporation <br></br>
	<a id=one href="Home.html" style="float: right;">Home</a> <a id=one
		href="News.jsp" style="float: right;">News</a> <a id=one
		href="Search.jsp" style="float: left;">Our Networks</a> <a id=one
		href="Reg.jsp" style="float: left;">Login & Sign-Up</a> <a id=one
		href="Inst.jsp" style="float: left;">Instruction</a> </footer>
</body>
</html>