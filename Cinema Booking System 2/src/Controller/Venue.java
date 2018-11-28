package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name="Venue", urlPatterns= {"/Venue"})
public class Venue extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Venue() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String time = request.getParameter("time");
		String date = request.getParameter("date");
		String venue = request.getParameter("venue");
		
		session.setAttribute("movietime", time);
		session.setAttribute("movievenue", venue);
		session.setAttribute("moviedate", date);
		
		response.sendRedirect("SeatSelection.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
