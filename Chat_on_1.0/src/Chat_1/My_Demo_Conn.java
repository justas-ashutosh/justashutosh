package Chat_1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class My_Demo_Conn {
	public Connection getConnection() throws SQLException 
	{  Connection con = null;
	  try {
		  Class.forName("com.mysql.jdbc.Driver");
			  String urls="jdbc:mysql://localhost:3306/test";
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
