package service;

import org.joda.time.Days;
import org.joda.time.LocalDate;

public class ReminderService {
	public String msg(LocalDate dob) {
		LocalDate today = new LocalDate();
		String msgBody ="";
		
//		int ch = Days.daysBetween(today, dob).getDays();
		System.out.println(today);
		System.out.println(dob);
		
		return msgBody;
	}
}
