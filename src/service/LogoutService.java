package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LogoutService {

	public void logout(HttpServletRequest req) {
		HttpSession sess = req.getSession(false);
		sess.invalidate();
	}
}
