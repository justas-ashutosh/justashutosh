<%@page import="Test_News.My_News,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic|Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="styles_newspaper.css">
    <title>Newspaper_Articles</title>
    <meta name="viewport" content="width=device-width">

</head>
<body>
<div class="head">
    <div class="headerobjectswrapper">
          <header>Newpost AKM Corp.</header>
    </div>
    <div class="subhead"><h2><I>INDIA, MUMBAI -</I></h2> 
    <%
         Date date = new Date();
         out.print( "<h2 align = \"center\">" +date.toString()+"</h2>");
    %>
    </div>
</div>
<div class="content">
    <div class="collumns">
        <div class="collumn">
            <div class="head"><span class="headline hl5">Top News Related to INDIA</span><p><span class="headline hl5">by news18</span></p></div>
             <%=My_News.read_rss("http://www.news18.com/rss/india.xml")%><br></br>
        </div>
        <div class="collumn">
            <div class="head"><span class="headline hl5">Top News Related to MOVIES</span><p><span class="headline hl5">by news18</span></p></div>
            <%=My_News.read_rss("http://www.news18.com/rss/movies.xml")%><br></br>
        </div>
        <div class="collumn">
            <div class="head"><span class="headline hl5">Top News Related to SPORTS</span><p><span class="headline hl5">by news18</span></p></div>
            <%=My_News.read_rss("http://www.news18.com/rss/sports.xml")%><br></br>
        </div>   
        <div class="collumn">
            <div class="head"><span class="headline hl5">Top News Related to LIFESTYLE</span><p><span class="headline hl5">by news18</span></p></div>
            <%=My_News.read_rss("http://www.news18.com/rss/lifestyle.xml")%><br></br>
        </div>
        <div class="collumn">
            <div class="head"><span class="headline hl5">Top News Related to POLITICS</span><p><span class="headline hl5">by news18</span></p></div>
            <%=My_News.read_rss("http://www.news18.com/rss/politics.xml")%><br></br>
        </div>        
  </div>
</div>
</body>
</html>