package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Bill", urlPatterns = { "/Bill" })
public class Bill extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Bill() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("customer") == null) {
			response.sendRedirect("registration.jsp");
		} else {
			String[] seats = request.getParameterValues("selected");
			String movievenue = (String) session.getAttribute("movievenue");
			int total_price;
			if (movievenue.equals("Venue 1"))
			{
				total_price = seats.length * 150;
			}
			else
			{
				total_price = seats.length * 180;
			}
			String temp = "";
			for (String x : seats) {
				temp += x + ",";
			}
			session.setAttribute("seats", temp);
			session.setAttribute("price", total_price);
			response.sendRedirect("confirmation.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
