package Login_Servlet;

import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import Test_Register.Connection_Dao;

public class SigninDAO extends Connection_Dao {

	PreparedStatement ps = null;
    Statement st = null;
    ResultSet rs = null;

    public boolean checkLogin(My_Login l){
        
            String sql = "SELECT * FROM Login WHERE username=? AND pass=?"; 
            PreparedStatement p;
			try {
				p = (PreparedStatement) getConnection().prepareStatement(sql);
				 p.setString(1, l.getUsername());
		            p.setString(2,l.getPassword());
		             ResultSet rs=(ResultSet) p.executeQuery();
		             if(rs.next())
		                 return true;
		             else
		            	 return false;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//step 4 prepare Query For Execution 
            	 return false;
             
        }
}
