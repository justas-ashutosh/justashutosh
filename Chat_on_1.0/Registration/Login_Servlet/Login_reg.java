package Login_Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login_reg
 */
@WebServlet("/Login_reg")
public class Login_reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("Username");
		String pass = request.getParameter("Password");
		My_Login my_Login=new My_Login();
		my_Login.setUsername(username);
		my_Login.setPassword(pass);
		SigninDAO dao= new SigninDAO();
        if(dao.checkLogin(my_Login))
        {
        	HttpSession session=request.getSession();
            session.setAttribute("username",username);
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
