package Cart_Test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Addtocart
 */
@WebServlet("/Addtocart")
public class Addtocart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("pname");
        if(request.getParameter("del")!=null)
    	{
        	  HttpSession session = request.getSession();
              Cart shoppingCart1;
              shoppingCart1 = (Cart) session.getAttribute("Cart");
              if(shoppingCart1 == null){
                shoppingCart1 = new Cart();
                session.setAttribute("Cart", shoppingCart1);
              }	
    	shoppingCart1.deleteFromCart(name);
    	response.sendRedirect("Cart_items.jsp");
    	}
        if(request.getParameter("del")==null){
        	  HttpSession session = request.getSession();
              Cart shoppingCart;
              shoppingCart = (Cart) session.getAttribute("Cart");
              if(shoppingCart == null){
                shoppingCart = new Cart();
                session.setAttribute("Cart", shoppingCart);
              }	
        Integer price = Integer.parseInt(request.getParameter("price"));
        shoppingCart.addToCart(name, price);
        session.setAttribute("cart", shoppingCart);
        response.sendRedirect("Cart_items.jsp");		
        }
               
        doGet(request, response);
        }

}