package controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			HttpSession sess = req.getSession();
			sess.setAttribute("email", email);
			sess.setAttribute("name", loginService.getName(email));
			System.out.println(sess.getAttribute("name"));
			sess.setMaxInactiveInterval(300);
			System.out.println(sess.getId());
			resp.sendRedirect("home");
		}
		else {
			System.out.println("Incorrect Email or Password");
			resp.sendRedirect("sign");
		}
	}
}
