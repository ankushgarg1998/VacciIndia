package controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.LogoutService;

@SuppressWarnings("serial")
public class LogoutController extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		LogoutService logoutService = new LogoutService();

		logoutService.logout(req);
		System.out.println("Logged out!");
		resp.sendRedirect("home");
	}
}
