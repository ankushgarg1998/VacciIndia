package controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.ClientsService;
import service.SendMailService;

@SuppressWarnings("serial")
public class ClientsController extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		ClientsService clientsService = new ClientsService();
		SendMailService sendMailService = new SendMailService();

		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String email = req.getParameter("email");
		String pass = req.getParameter("pass");
		String contact = req.getParameter("contact");
		
		if(clientsService.checkIfUserAlreadyExists(email)) {
			System.out.println("User Already Exists!!");
		}
		else {
			System.out.println("User does not exists!!");
			clientsService.registerUser(fname, lname, email, pass, contact);
			
			System.out.println("Logged In");
			HttpSession sess = req.getSession();
			sess.setAttribute("email", email);
			sess.setAttribute("name", fname);
			System.out.println(sess.getAttribute("name"));
			sess.setMaxInactiveInterval(300);
			System.out.println(sess.getId());
			
			sendMailService.sendRegistrationMail(fname, lname, email, pass, contact);
			System.out.println("Welcome Mail sent to" + email);
			resp.sendRedirect("dashboard");
			
		}
	}
}
