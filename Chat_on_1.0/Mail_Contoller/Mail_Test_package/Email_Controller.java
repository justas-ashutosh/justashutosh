package Mail_Test_package;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;

/**
 * Servlet implementation class Email_Controller
 */
@WebServlet("/Email_Controller")
public class Email_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
private Logger log=null;

	
	public void init(){
		setLog(Logger.getRootLogger());
		BasicConfigurator.configure();
	}

    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
           String emailto=request.getParameter("emailto");
		   String subject=request.getParameter("subject");
		   String message=request.getParameter("message");
		   System.out.println(emailto);
		   System.out.println(subject);
		   System.out.println(message);

		   PrintWriter out = response.getWriter();
		   log.info("THE CAUSE OF ERROR:");
		   if (emailto !="" && subject!="" && message!="" )
		   		{
			       My_Messenger.Mail(emailto, subject, message);
			       out.println("<script type=\"text/javascript\">");
		     	   out.println("alert('Your Mail Has been Sent Successfully!!!');");
		     	   out.println("location='success.jsp';");
		     	   out.println("</script>");
			     }
		   else 
		   { 
			   out.println("<script type=\"text/javascript\">");
	     	   out.println("alert('Error While Sending Email');");
	     	   out.println("location='success.jsp';");
	     	   out.println("</script>");
		   }

		
		doGet(request, response);
	}

	public Logger getLog() {
		return log;
	}

	public void setLog(Logger log) {
		this.log = log;
	}

}
