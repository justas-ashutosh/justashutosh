package Test_Register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Registeration
 */
@WebServlet("/Registeration")
public class Registeration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String pass = request.getParameter("Password");
		String email = request.getParameter("Email");
		String pno = request.getParameter("Phone");
		String addhar = request.getParameter("Addhar");
		Register r = new Register();
		r.setFname(fname);
		r.setPass(pass);
		r.setEmail(email);
		r.setPno(pno);
		r.setAddhar(addhar);
		registerDao dao = new registerDao();
		   if(dao.Insert(r)==1)
	        {
	        	HttpSession session=request.getSession();
	            session.setAttribute("username",fname);
	            response.sendRedirect("Cust_Home.jsp");
	        }
	        else
	        	{
	        	request.setAttribute("message", "Account is Invalid");
	        	request.getRequestDispatcher("Reg.jsp").forward(request, response);
	        	}
		doGet(request, response);
	}

}
