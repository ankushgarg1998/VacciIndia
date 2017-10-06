package controller;

import javax.servlet.http.*;
import service.DelElementService;


@SuppressWarnings("serial")
public class DelElementsController extends HttpServlet {
	public void service (HttpServletRequest req, HttpServletResponse resp) {
		DelElementService delElementService = new DelElementService();
		delElementService.updateElements();
	}
}
