package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Customer;

@WebServlet(name="Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Register() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer cust = new Customer();
		
		String name = request.getParameter("first_name") + " " + request.getParameter("last_name");
		cust.setName(name);
		cust.setMobile(request.getParameter("mobile_no"));
		cust.setCity(request.getParameter("city"));
		cust.setEmail(request.getParameter("email"));
		cust.setUsername(request.getParameter("user"));
		cust.setPassword(request.getParameter("pass"));
		
		MovieDAO dao = new MovieDAO();
		int flag = dao.setCustomerDetails(cust);
		if (flag == 0)
			response.sendRedirect("registration.jsp");
		else
			response.sendRedirect("error1.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
