package Chat_1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Insert_data extends My_Demo_Conn{

	PreparedStatement ps = null;
    Statement st = null;
    ResultSet rs = null;
     public int Insert (Input_data e)
       {int flag = 0;
    	 try {
    	 Connection con = null;	 
		 con = getConnection();
		 ps = con.prepareStatement("Insert into Entries values(?,?,?,?)");
         ps.setString(1,e.getEmail());
         ps.setString(2,e.getUser_name());
         ps.setString(3,e.getPass_word());
         ps.setString(4,e.getRetype_Password());
         int i= ps.executeUpdate();
         if(i!=0)
         {
             System.out.println("Inserted");
             flag=1;
         }
         else
         {
              System.out.println("Insertion Failed");
         }
    
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
  
		return flag;
      }
	
	
}
