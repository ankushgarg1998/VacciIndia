package controller;

import static service.OfyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.LocalDate;
import org.joda.time.format.DateTimeFormatter;

import entity.Child;
import service.ReminderService;

@SuppressWarnings("serial")
public class ReminderController extends HttpServlet {
  protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	  ReminderService reminderService = new ReminderService();
	  
	  List<Child> childs = ofy().load().type(Child.class).list();
	  for(int i=0; i<childs.size(); i++) {
		  String fname = childs.get(i).getFname();
		  String dob = childs.get(i).getDob();
		  
		  DateTimeFormatter format = org.joda.time.format.DateTimeFormat.forPattern("yyyy-MM-dd");
		  LocalDate date = org.joda.time.LocalDate.parse(dob, format);
		  System.out.println(date);
		  
		  reminderService.msg(childs.get(i).getEmail(), date, fname);
	  }
  }
}