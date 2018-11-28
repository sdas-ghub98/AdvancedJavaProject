package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Customer;

@WebServlet(name = "Login", urlPatterns = "/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		Customer cust = (Customer) session.getAttribute("customer");
		String url = (String) session.getAttribute("url");

		if (cust != null) {
			session.invalidate();
			response.sendRedirect("index.jsp");
		} else if (!user.isEmpty() && !pass.isEmpty()) {
			MovieDAO dao = new MovieDAO();
			Customer cust1 = dao.getCustomerDetails(user, pass);
			if (cust1.getUsername() != null) {
				session.setAttribute("customer", cust1);
				response.sendRedirect(url);
			}
			else {
				response.sendRedirect("error1.jsp");
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
