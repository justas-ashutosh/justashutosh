package Chat_1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    int i;   
   	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Email =request.getParameter("Email");
		String password =request.getParameter("password");
		
		System.out.println(Email);
		System.out.println(password);
		
		Login_input li=new Login_input();
		  li.setEmail(Email);
		  li.setPassword(password);
		
		Login_ps ps=new Login_ps();
		 i = ps.Check(li);
		 if(i==1)
		  	{
			response.sendRedirect("temp.html");  
		  	}
		 else
		    {
			 response.sendRedirect("index.html");  
		    }
	}

}
