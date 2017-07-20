package pkg;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class SchedulerServlet extends HttpServlet {
	
	
	@Override
	public void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		
		arg0.setAttribute("name", arg0.getParameter("name") );
		arg0.setAttribute("dob", arg0.getParameter("dob") );
		//arg0.getParameter("dob");
		arg0.getRequestDispatcher("scheduler").forward(arg0, arg1);
		
		
	}

}
