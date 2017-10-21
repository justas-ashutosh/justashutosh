<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comments@E-Sewa</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<br>
	<br>
	<%if (session.getAttribute("username") != null ) {%>
	<jsp:include page="included pages/logout.jsp"></jsp:include>
        <%
        }  %>
    <br>
	<br>   
	<div class="card">
		<div class="card-body">User name : Comment</div>
	</div>
	<br>
<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test1" user="root" password="ashutosh"/>
<sql:query var="list_comments" dataSource="${myDS}">
    select * from Comments;
</sql:query>
<c:forEach var="Comments" items="${list_comments.rows}">
	<div class="card border-primary mb-3" style="max-width: 200rem;">
		<div class="card-header">Comments</div>
		<div class="card-body text-primary">
			<h4 class="card-title"><c:out value="${Comments.username}" /></h4>
			<p class="card-text"><c:out value="${Comments.message}" /></p>
		</div>
	</div>
</c:forEach>	
	<br>
	<br>
	<jsp:include page="Footer.jsp" />
</body>
</html>