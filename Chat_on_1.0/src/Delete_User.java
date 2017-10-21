import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import Test_Register.Connection_Dao;

public class Delete_User extends Connection_Dao{

	PreparedStatement ps = null;
    Statement st = null;
    ResultSet rs = null;

    public int Insert (Del_User dao)
    {
 	 try {
 	 Connection con = null;	 
		 con = getConnection();
	  ps = (PreparedStatement) con.prepareStatement("Insert into Delete_Reason values(?,?)");
      ps.setString(1,dao.getUsername());
      ps.setString(2,dao.getMessage());
      int i= ps.executeUpdate();
      return i; 
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
 	 return 0;
   }

  public int Delete (Del_User dao)
    {
 	 try {
 	 Connection con = null;	 
		 con = getConnection();
	  ps = (PreparedStatement) con.prepareStatement("delete from customer where username= ?");
      ps.setString(1,dao.getUsername());
      int i= ps.executeUpdate();
      return i; 
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
 	 return 0;
   }
}
