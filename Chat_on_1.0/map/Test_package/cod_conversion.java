package Test_package;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.json.JSONException;

/**
 * Servlet implementation class cod_conversion
 */
@WebServlet("/cod_conversion")
public class cod_conversion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		String city=request.getParameter("city");
        String address=request.getParameter("address");
        PrintWriter out = response.getWriter();
         if(!Vlidate_info.Check(city))
         	{  
         	   out.println("<script type=\"text/javascript\">");
         	   out.println("alert('Entered City is not Mumbai');");
         	   out.println("location='Search.jsp';");
         	   out.println("</script>");
       	}
         else
         	{
        	request.setAttribute("address",address); 
        	RequestDispatcher view= request.getRequestDispatcher("Custom_map_view.jsp");
        	view.forward(request,response);
	       }
  	   }
}
