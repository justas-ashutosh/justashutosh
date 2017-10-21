import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import Test_Register.Connection_Dao;

public class Comment_Entry extends Connection_Dao {

	PreparedStatement ps = null;
    Statement st = null;
    ResultSet rs = null;

    public int Insert (MyComments dao)
    {
 	 try {
 	 Connection con = null;	 
		 con = getConnection();
	  ps = (PreparedStatement) con.prepareStatement("Insert into Comments values(?,?)");
      ps.setString(1,dao.getName());
      ps.setString(2,dao.getMessage());
      int i= ps.executeUpdate();
      return i; 
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
 	 return 0;
   }
}
