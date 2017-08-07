package Chat_1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Input_from_form")
public class Input_from_form extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int i;
       
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email =request.getParameter("Email");
		String User_name =request.getParameter("User_name");
		String Pass_word =request.getParameter("Pass_word");
		String Retype_password =request.getParameter("Retype_password");
		
		System.out.println(Email);
		System.out.println(User_name);
		System.out.println(Pass_word);
		System.out.println(Retype_password);
		
		Input_data e = new Input_data();
			e.setEmail(Email);
			e.setUser_name(User_name);
			e.setPass_word(Pass_word);
			e.setRetype_Password(Retype_password);
		
		Insert_data id= new Insert_data();
			i=id.Insert(e);
		if (i==1)
			{
			response.sendRedirect("temp.html");  
			}
		 else
		    {
			 response.sendRedirect("index.html");  
		    }
		}

}
