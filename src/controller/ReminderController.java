package controller;

import static service.OfyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.LocalDate;

import entity.Child;
import service.ReminderService;
import service.SendMailService;

@SuppressWarnings("serial")
public class ReminderController extends HttpServlet {
  protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	  ReminderService reminderService = new ReminderService();
	  SendMailService sendMailService = new SendMailService();
	  
	  List<Child> childs = ofy().load().type(Child.class).list();
	  for(int i=0; i<childs.size(); i++) {
//		  String msgBody = reminderService.msg(childs.get(i).getDob());
//		  sendMailService.send(childs.get(i).getEmail(), "Vaccination Reminder", msgBody);
		  System.out.println(childs.get(i).getFname());
		  System.out.println(childs.get(i).getDob());
	  }
  }
}