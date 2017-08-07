package test_services;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String First_Name =request.getParameter("First_Name");
		String Last_Name =request.getParameter("Last_Name");
		String Contact_no =request.getParameter("Contact_no");
		String Email =request.getParameter("Email");
		String password =request.getParameter("password");
		
	
		       
 		System.out.println(First_Name);
		System.out.println(Last_Name);
		System.out.println(Contact_no);
		System.out.println(Email);
		System.out.println(password);
		
	  String urls="jdbc:mysql://localhost:3306/Registered";
	  String id="root";
	  String pass="ashutosh";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection mycon=DriverManager.getConnection(urls,id,pass);
			System.out.println("Connection Successful");
			Statement myst=mycon.createStatement();
			String query = " insert into new_users (First_name,Last_Name,Contact_no,Email,password)"
				        + " values ('"+First_Name+"','"+Last_Name+"','"+Contact_no+"','"+Email+"', '"+password+"')";
			myst.executeUpdate(query);
			System.out.println("task done");
			String query1= "insert into users(Email,password) "+
                            "select distinct Email,password from new_users where Email NOT IN(select Email from users)";
  
			PreparedStatement ps=mycon.prepareStatement(query1);
                          ps.execute();			
              System.out.println("task done once again");
             
			mycon.close(); 
		}
		catch (Exception e){
				e.printStackTrace();
			
		}
		response.sendRedirect("login_welcome.jsp");  
		
	
	}
	
}
