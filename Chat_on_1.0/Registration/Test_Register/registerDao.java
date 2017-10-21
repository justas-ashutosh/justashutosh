package Test_Register;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

public class registerDao extends Connection_Dao {

	PreparedStatement ps = null;
    Statement st = null;
    ResultSet rs = null;

	public int Insert (Register e)
    {
 	 try {
 	 Connection con = null;	 
		 con = getConnection();
		 ps = (PreparedStatement) con.prepareStatement("Insert into customer values(?,?,?,?,?)");
      ps.setString(1,e.getFname());
      ps.setString(2,e.getPass());
      ps.setString(3,e.getEmail());
      ps.setString(4,e.getPno());
      ps.setString(5,e.getAddhar());
      int i= ps.executeUpdate();
      return i; 
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
 	 return 0;
   }
 
}
