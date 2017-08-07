package Chat_1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Login_ps extends My_Demo_Conn {
		
	PreparedStatement ps = null;
    Statement st = null;
    ResultSet rs = null;
    public int Check(Login_input e)
    {
       	int Flag=0;
    	
 	 try {
		 	 Connection con = null;	 
			 con = getConnection();
			
	 System.out.println("Connection Successful");
		String query ="select * from Entries where Email=? and Pass_word=?";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ps.setString(1, e.getEmail());
		ps.setString(2, e.getPassword());
		rs = ps.executeQuery(); 
		if(rs.next())
			{
			System.out.println("Match Found");
			Flag=1;
			//response.sendRedirect("login_welcome.jsp");  
			}
		else
		{
			Flag=0;  
		}
		} 
 	 
 	 catch (SQLException e1)
		{
			e1.printStackTrace();
		}
 	 return Flag;
    
   }
}


