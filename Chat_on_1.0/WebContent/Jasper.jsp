<%@ page contentType="application/pdf"%>
<%@ page  import="java.io.*"%> 
<%@ page  import="java.sql.Connection"%> 
<%@ page  import="java.sql.DriverManager"%>
<%@ page  import="net.sf.jasperreports.engine.*"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="Test_Register.Connection_Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>System Report</title>
</head>
<body>
<%
	Connection conn=null;

	try{
		Connection_Dao d11 =new Connection_Dao();
		 Connection con=d11.getConnection();
		  String jrxmlFile = session.getServletContext().getRealPath("/Registered.jrxml");
		  InputStream input=new FileInputStream(new File(jrxmlFile));
		  JasperReport jasperReport= JasperCompileManager.compileReport(input);
		  JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, null, con);
		  JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	  
	  response.getOutputStream().flush();
	  response.getOutputStream().close();
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
%>
</body>
</html>