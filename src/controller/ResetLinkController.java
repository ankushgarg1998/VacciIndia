package controller;

import java.io.IOException;

import javax.servlet.http.*;
import service.ResetLinkService;

@SuppressWarnings("serial")
public class ResetLinkController extends HttpServlet {
	public void service (HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String uid = req.getParameter("uid");
		String pass = req.getParameter("upass");
		String passCheck = req.getParameter("upasscheck");
		ResetLinkService linkService = new ResetLinkService();
		if( !pass.equals(passCheck)) {
			System.out.println("password mismatch");
//			resp.sendRedirect("/login again");
		}
		if(linkService.uidCheck(uid)) {
			linkService.changePswd(uid, pass);
		}
	}
}
