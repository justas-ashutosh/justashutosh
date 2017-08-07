package test_services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResultSet rs;
       

    public login() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<String> errors = new ArrayList<String>();

		String Email =request.getParameter("Email");
		String password =request.getParameter("password");
		
		System.out.println(Email);
		System.out.println(password);
		 if (Email.equals("") || null == Email) {
		        errors.add(" can't be empty.");					
		 		    }
		
	  String urls="jdbc:mysql://localhost:3306/Registered";
	  String id="root";
	  String pass="ashutosh";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection mycon=DriverManager.getConnection(urls,id,pass);
			System.out.println("Connection Successful");
			String query ="select * from users where Email=? and password=?";
			
			PreparedStatement ps=(PreparedStatement) mycon.prepareStatement(query);
			ps.setString(1, Email);
			ps.setString(2, password);
			rs = ps.executeQuery(); 
			if(rs.next())
				{
				System.out.println("Match Found");
				response.sendRedirect("login_welcome.jsp");  
				}
			else
			{
				String someMessage = "Error !";
				PrintWriter out = response.getWriter();
				out.print("<html><head>");
				out.print("<script type=\"text/javascript\">alert(" + someMessage + ");</script>");
				out.print("</head><body></body></html>");
				response.sendRedirect("Registration.jsp");  
			}
			mycon.close();
		}
		catch (Exception e){
				e.printStackTrace();
			
		}
		 
		
	}

}
