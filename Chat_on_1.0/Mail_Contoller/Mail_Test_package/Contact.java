package Mail_Test_package;

import java.io.IOException;
import java.io.PrintWriter;
//import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;




/**
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private Logger log=null;

	
	public void init(){
		log= Logger.getRootLogger();
		BasicConfigurator.configure();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		log.setLevel(Level.ALL);
	   String name=request.getParameter("firstname");
	   String email=request.getParameter("email");
	   String address=request.getParameter("address");
	   String state=request.getParameter("state");
	   String message=request.getParameter("subject");
	   System.out.println(name);
	   System.out.println(email);
	   System.out.println(address);
	   System.out.println(state);
	   System.out.println(message);
	   PrintWriter out = response.getWriter();
	   log.info("THE CAUSE OF ERROR:");
	   if (name !="" && email!="" && address!="" && state!="" && message!="")
	   		{
		       Main.Mail(name, email, address, state, message);
		       out.println("<script type=\"text/javascript\">");
	     	   out.println("alert('Your Request has been Sent to the Administrator');");
	     	   out.println("location='Contact.html';");
	     	   out.println("</script>");
		     }
	   else 
	   { 
		   out.println("<script type=\"text/javascript\">");
     	   out.println("alert('Entered Data is not valid');");
     	   out.println("location='Contact.html';");
     	   out.println("</script>");
	   }
		doGet(request, response);
	}

}
