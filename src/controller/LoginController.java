package controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.LoginService;

@SuppressWarnings("serial")
public class LoginController extends HttpServlet {
  protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		LoginService loginService = new LoginService();
//		SendMailService sendMainService = new SendMailService();

		String email = req.getParameter("uname");
		String pass = req.getParameter("upass");

		if(loginService.validate(email, pass)) {
      System.out.println("Logged In");
		}
		else {
			System.out.println("Incorrect Email or Password");
			resp.sendRedirect("sign");
		}
	}
}
