package Test_jdbc;

import java.sql.*;
import java.util.ArrayList;
public class EmployeeDAO extends MyDemoCon {

	PreparedStatement ps = null;
    Statement st = null;
    ResultSet rs = null;
     public void Insert (Employee e)
       {
    	 try {
    	 Connection con = null;	 
		 con = getConnection();
		 ps = con.prepareStatement("Insert into EMPLOYEE values(?,?,?,?,?)");
         ps.setInt(1,e.getE_id());
         ps.setString(2,e.getCode());
         ps.setString(3,e.getName());
         ps.setString(4,e.getCity());
         ps.setDouble(5,e.getSal());
         int i= ps.executeUpdate();
         if(i!=0)
         {
             System.out.println("Inserted");
         }
         else
         {
              System.out.println("Insertion Failed");
         }
    
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
      }
    	 public void DeleteEmp(int E_id)
    	    {
		    		 Connection con;
					try {
						con = getConnection();
						 ps = con.prepareStatement("Delete from employee where E_id = ?");
			             ps.setInt(1,E_id);
			             int i= ps.executeUpdate();
			                if(i!=0)
			                {
			                    System.out.println("Deleted");
			                }
			                else
			                {
			                     System.out.println("Deletion Failed");
			                }
	            
						} 
					catch (SQLException e) 
					{
						e.printStackTrace();
					}
     	    }
    	 public void updateEmp(int E_id,String code)
    	     {
    		 Connection con;
			try {
				con = getConnection();
				 ps = con.prepareStatement("Update employee set code = ? where E_id = ?");
	             ps.setInt(2,E_id);
	             ps.setString(1,code);
	             int i= ps.executeUpdate();
	                if(i!=0)
	                {
	                    System.out.println("Updated");
	                }
	                else
	                {
	                     System.out.println("Updation Failed");
	                }
			} catch (SQLException e) {
				e.printStackTrace();
			}	  
      }
    	  
		 
    	 public ArrayList<Employee> displayEmployee() 
    	   {
    		 ArrayList<Employee> emps= new ArrayList<Employee>(); 
    		 Employee e = null;
    		 try {
				Connection con = getConnection();
				st = con.createStatement();
				String s="select * from employee";
                ResultSet rs = st.executeQuery(s);
                while(rs.next())
                {
                e = new Employee();
              	e.setE_id(rs.getInt("E_id"));
              	e.setCode(rs.getString("code"));
              	e.setName(rs.getString("name"));
              	e.setCity(rs.getString("city"));
              	e.setSal(rs.getDouble("sal"));
              	 emps.add(e);
                }
    		 } catch (SQLException e1) {
				e1.printStackTrace();
		    	}
		return emps;
    	   }
    	 
}
