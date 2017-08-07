package Test_jdbc;

import java.sql.*;
public class MyDemoCon {

	public Connection getConnection() throws SQLException
	{  Connection con = null;
	  try {
		  Class.forName("com.mysql.jdbc.Driver");
			  String urls="jdbc:mysql://localhost:3306/test1";
			  String id="root";
			  String pass="ashutosh";
		  con = DriverManager.getConnection(urls,id,pass);
	      } 
	  catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	  return con;
	
	}

}
