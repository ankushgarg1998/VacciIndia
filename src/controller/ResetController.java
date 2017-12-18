package controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ResetService;
import service.SendMailService;

@SuppressWarnings("serial")
public class ResetController extends HttpServlet {
	public void service (HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ResetService resetService = new ResetService();
		String email = req.getParameter("forgotpswd");
		if (resetService.getEmail(email))
			resp.sendRedirect("/fogotpswderr");
		else {
			SendMailService sendMailService = new SendMailService();
			sendMailService.sendResetPswdMail(email);
		}
	}
}
