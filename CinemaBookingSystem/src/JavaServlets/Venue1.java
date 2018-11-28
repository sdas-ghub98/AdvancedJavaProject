package JavaServlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Venue1
 */
@WebServlet(name="/TimeForVenue1Store", urlPatterns = { "/Venue1Time" })
public class Venue1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Venue1() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String time;
		if(request.getParameter("t1")!=null)
		{
			time=(String) request.getParameter("t1");
		}
		else if(request.getParameter("t2")!=null)
		{
			time=(String) request.getParameter("t2");
		}
		else if(request.getParameter("t3")!=null)
		{
			time=(String) request.getParameter("t3");
		}
		else if(request.getParameter("t4")!=null)
		{
			time=(String) request.getParameter("t4");
		}
		response.sendRedirect("SeatSelection.html");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
