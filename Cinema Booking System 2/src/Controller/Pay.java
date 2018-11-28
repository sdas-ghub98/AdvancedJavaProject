package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Customer;
import Model.Movie;

@WebServlet("/Pay")
public class Pay extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Pay() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MovieDAO dao = new MovieDAO();
		String seats = (String) session.getAttribute("seats");
		seats = seats.substring(0, seats.length()-1);
		Movie movie = (Movie) session.getAttribute("movie");
		Customer cust = (Customer) session.getAttribute("customer");
		String movietime = (String) session.getAttribute("movietime");
		String movievenue = (String) session.getAttribute("movievenue");
		String moviedate = (String) session.getAttribute("moviedate");
		int total_price = (int) session.getAttribute("price");
		
		int flag = dao.pay(seats, cust.getUsername(), movie.getName().toLowerCase().replaceAll(" ", ""), movietime, movievenue, moviedate,total_price);
		if (flag == 0)
			response.sendRedirect("index.jsp");
		else 
			response.sendRedirect("error2.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
