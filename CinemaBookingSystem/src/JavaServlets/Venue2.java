package JavaServlets;

import java.io.IOException;
import java.sql.Time;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Venue1
 */
@WebServlet(name="/TimeForVenue1Store", urlPatterns = { "/Venue1Time" })
public class Venue2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Venue2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String time;
		if(request.getParameter("t5")!=null)
		{
			time=(String) request.getParameter("t5");
		}
		else if(request.getParameter("t6")!=null)
		{
			time=(String) request.getParameter("t6");
		}
		else if(request.getParameter("t7")!=null)
		{
			time=(String) request.getParameter("t7");
		}
		else if(request.getParameter("t8")!=null)
		{
			time=(String) request.getParameter("t8");
		}
		response.sendRedirect("SeatSelection.html");	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
