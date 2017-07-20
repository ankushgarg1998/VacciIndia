package controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ClientsService;

@SuppressWarnings("serial")
public class ClientsController extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		ClientsService clientsService = new ClientsService();
//		SendMailService sendMainService = new SendMailService();

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
//			sendMainService.sendWelcomeMail(name, uID, pass);
			resp.sendRedirect("dash");
		}
	}
}
