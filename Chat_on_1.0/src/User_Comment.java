

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class User_Comment
 */
@WebServlet("/User_Comment")
public class User_Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

   		String name=request.getParameter("username");
   	    String message=request.getParameter("message");
   	    String del=request.getParameter("del");
   	    if (del==null)
   	    { MyComments comments=new MyComments();
   	    comments.setName(name);
   	    comments.setMessage(message);
   	    Comment_Entry fname =new Comment_Entry();
   	    PrintWriter out = response.getWriter();
   	    if(fname.Insert(comments)==1)
	     {
	   		   out.println("<script type=\"text/javascript\">");
	     	   out.println("alert('Your Comment has been Recorded Successfully!!!');");
	     	   out.println("location='Cust_Home.jsp';");
	     	   out.println("</script>");
	     }
   	    else
	     {
	   		   out.println("<script type=\"text/javascript\">");
	     	   out.println("alert('ERROR While Sending To DB!!!!');");
	     	   out.println("location='Cust_Home.jsp';");
	     	   out.println("</script>");
	     }
   	    }
   	    else{
   	        PrintWriter out = response.getWriter();
   	    	Del_User dell=new Del_User();
   	    	dell.setUsername(name);
   	    	dell.setMessage(message);
   	    	Delete_User dd =new   Delete_User();
   	    	int i=dd.Insert(dell);
   	    	System.out.println(i);
   	    	int j=dd.Delete(dell);
   	    	System.out.println(j);
   	    	if (i==1 && j==1)
   	    	{
   	    	   out.println("<script type=\"text/javascript\">");
 	     	   out.println("alert('Your Account Has Been Deleted Successfully!!!');");
 	     	   out.println("location='Home.html';");
 	     	   out.println("</script>");
   	    	}
   	    	else
   	    	{
   	    	   out.println("<script type=\"text/javascript\">");
  	     	   out.println("alert('Failed To Execute!!!');");
  	     	   out.println("location='Cust_Home.jsp';");
  	     	   out.println("</script>");
   	    	}
   	    	
   	    }
   		doGet(request, response);
	}

}
