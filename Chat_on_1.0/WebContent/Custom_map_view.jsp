<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="NYTimes_Configuration.Nytimes_Key , Test_package.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" , content="initial-scale=1.0, user-scalable=no">
<title>Map's@E-Sewa</title>
<link rel="stylesheet" href="style/Mystyle.css">
<script type="text/javascript" src="Java_script/myscript.js"></script>
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?libraries=places&key=<%=Nytimes_Key.API_KEY_map()%>&libraries=places&callback=initialize" async defer>
</script>
<script type="text/javascript" src="Java_script/e-gas_maps.js"></script>
<style>
html, body, #map {
	height: 100%;
	margin: 0px;
	padding: 0px;
}
</style>
</head>
<%
	String address=(String)request.getAttribute("address");
	String json=Map_request.location(address);
	String lat=Map_responce.getlat(json);
	String lng=Map_responce.getlng(json);
	%>
<body>
	<jsp:include page="Header.jsp" />
	<div id="map"></div>
	<script>
	var lat=<%=lat%>;
	var lng=<%=lng%>;
	initialize(lat,lng);
	</script>	
	<br></br>
	<jsp:include page="Footer.jsp" />
</body>
</html>