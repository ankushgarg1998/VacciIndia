package controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.joda.time.LocalDate;

import service.ChildService;

@SuppressWarnings("serial")
public class ChildController extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		ChildService childService = new ChildService();
		HttpSession sess = req.getSession(false);

		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String gender = req.getParameter("gender");
		String email = (String) sess.getAttribute("email");
		LocalDate dob = new LocalDate(req.getParameter("dob"));

		childService.registerKid(fname, lname, gender, email, dob);
		// sendMainService.sendWelcomeMail(name, uID, pass);

		// Integer i = sess.getAttribute("noc");
		// sess.setAttribute("noc", i+1);
		// System.out.println(sess.getAttribute("noc"));
		System.out.println("Child Added");
		resp.sendRedirect("dashboard");
		}
	}
