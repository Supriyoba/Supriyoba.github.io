

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Cart;
import dao.ProductDao;

/**
 * Servlet implementation class Add2Cart1
 */
@WebServlet("/Add2Cart1")
public class Add2Cart1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add2Cart1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 Object user = request.getSession().getAttribute("user");
		
		if(null != user) {
		int num = Integer.parseInt(request.getParameter("num"));
		int pid = Integer.parseInt(request.getParameter("pid"));
		
		Cart cart = new ProductDao().OrderP(num, pid);
		request.getSession().setAttribute("cart", cart);
		
		ArrayList<Cart> carts = (ArrayList<Cart>) request.getSession().getAttribute("carts");
		
		
		if(null == carts) {
			carts = new ArrayList<Cart>();}
		
		carts.add(cart);
		request.getSession().setAttribute("carts", carts);
		
		
		response.sendRedirect("Cart.jsp");}
		else {
			response.sendRedirect("Login.jsp");}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

