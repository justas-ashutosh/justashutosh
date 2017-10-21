<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="NYTimes_Configuration.test_nyt , org.json.JSONObject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" , content="initial-scale=1.0, user-scalable=no">
<link rel="stylesheet" href="style/Mystyle.css">
<script type="text/javascript" src="Java_script/myscript.js"></script>
<style>
#two{
    margin:20px;
   	border:2px groove black;
	border-radius: 4px;
	background:light-blue;
	padding:2px;
}
</style>
<title>News-Section@E-Sewa</title>
</head>
<body>
<jsp:include page="Header.jsp" />
<br>
<%if (session.getAttribute("username") != null ) {%>
	<jsp:include page="included pages/logout.jsp"></jsp:include>
        <%
        }  %>
<br>
<div class="container1">
<%
for(int i=0;i<20;i++)
	{%>
	<img id="two" src=<%=test_nyt.getImg(i)%> height="135px" width="170px" align="right"/><%
	out.println("</br><h2>Category: "+test_nyt.getField(i)+"</h2>");
	out.println("<h3>Title: "+test_nyt.getTitle(i)+"</h3>"); %>
	<%
	out.println("<p><h3>Abstract: "+test_nyt.getBody(i)+"</h3></p>");
	out.println("<h3><u><a href="+test_nyt.getUrl(i)+">For more Info Click Here</a>"+"</u></h3>");
	out.println("<a href=javascript:void(0);></a>");
	out.println("<hr>");
	}
%>

</div>

<br>
<br>
<jsp:include page="Footer.jsp" />

</body>
</html>