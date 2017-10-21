package Test_Register;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class Connection_Dao {

	public Connection getConnection() throws SQLException
	{  
		Connection con = null;
		  try {
			  Class.forName("com.mysql.jdbc.Driver");
				  String urls="jdbc:mysql://localhost:3306/test1";
				  String id="root";
				  String pass="ashutosh";
			  con = (Connection) DriverManager.getConnection(urls,id,pass);
		      } 
		  catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	  return con;
	
	}

}
