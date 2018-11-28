package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="Bill", urlPatterns= {"/Bill"})
public class Bill extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public Bill() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String seats[] = (String[]) request.getAttribute("selected[]");
		
		for (String x: seats) {
			System.out.println(x + " ");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
