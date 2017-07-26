package service;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import entity.Child;
import entity.ChildEntity;

import org.joda.time.LocalDate;
import org.joda.time.Weeks;
import org.joda.time.Days;

public class ReminderService {


//	private static final String String = null;

	String mail_from_id = "vacciindia@gmail.com";
	String mail_from_name = "VacciIndia ";
		ChildEntity child=  new ChildEntity();
		ReminderService s=  new ReminderService();
	public String bcgToday(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name +child.getFname() +"\n This is to remind you that your child's BCG vaccine is today .";
		// string concatenation
		return(msgBody);

	}


	public String bcgTommorow(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name +child.getFname()+ " \n This is to remind you that your child's BCG vaccine is Tommorow "
				+ ".";// string concatenation
		return(msgBody);

	}

	public String bcgWeek(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name +child.getFname()
				+ "\n This is to remind you that your child's BCG vaccine is after 1 week " + ".";// string
		return(msgBody);																				// concatenation

	}

	public String hepBToday(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname()+" \n This  to remind you that your child's Hep B vaccine is today. ";
		// string concatenation
		return(msgBody);

	}

	public String hepBTommorow(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name
				+ "This is to remind you that your child's Hep B vaccine is tommorow .";
		// string concatenation
		return(msgBody);

	}

	public String hepBWeek(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname()
				+ " \n This is to remind you that your child's Hep B  vaccine is after 1 week " + ".";// string
		return(msgBody);																						// concatenation

	}

	public String polioToday(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname() + " \n This is to remind you that your child's Polio vaccine is today "
				+ ".";// string concatenation
		return(msgBody);

	}

	public String polioTommorow(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname() + " \n This is to remind you that your child's Polio vaccine is tommorow "
				+ ".";// string concatenation
		return(msgBody);

	}

	public String polioWeek(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname()
				+ " \n This is to remind you that your child's Polio vaccine is after 1 week. ";
		// string concatenation
		return(msgBody);

	}

	public String dtpToday(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname()+ "\n This is to remind you that your child's DTP vaccine is today. ";
		// string concatenation
		return(msgBody);

	}

	public String dtpTommorow(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname() + "\n This is to remind you that your child's DTP vaccine is tommorow. ";
		// string concatenation
		return(msgBody);

	}

	public String dtpWeek(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname()
				+ " \n This is to remind you that your child's DTP vaccine is after 1 week. ";
		// string concatenation
		return(msgBody);

	}

	public String mmrToday(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname()+ " \n This is to remind you that your child's MMR vaccine is today. ";
		// string concatenation
		return(msgBody);

	}

	public String mmrTommorow(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname() + "\n This is to remind you that your child's MMR vaccine is tommorow. ";
		// string concatenation
		return(msgBody);

	}

	public String mmrWeek(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname()
				+ "\n This is to remind you that your child's MMR vaccine is after 1 week. ";
		// string concatenation
		return(msgBody);

	}

	public String hpvToday(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname() + "\n This is to remind you that your child's HPV vaccine is today. ";
		// string concatenation
		return(msgBody);

	}

	public String hpvTommorow(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname()+ " \n This is to remind you that your child's HPV vaccine is tommorow. ";
		// string concatenation
		return(msgBody);

	}

	public String hpvWeek(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname()
				+ "\n This is to remind you that your child's HPV vaccine is after 1 week. ";
		// string concatenation
		return(msgBody);

	}

	public String hibToday(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname()+ " \n This is to remind you that your child's Hib vaccine is today. ";
		// string concatenation
		return(msgBody);

	}

	public String hibTommorow(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname()+ " \n This is to remind you that your child's Hib vaccine is tommorow. ";
		// string concatenation
		return(msgBody);
	}

	public String hibWeek(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname()
				+ "\n This is to remind you that your child's Hib vaccine is after  1 week . ";
		// string concatenation
		return(msgBody);

	}

	public String pcvToday(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname() + "\n This is to remind you that your child's PCV vaccine is today. ";
		// string concatenation
		return(msgBody);

	}

	public String pcvTommorow(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name + child.getFname()+ "\n This is to remind you that your child's PCV vaccine is tommorow. ";
		// string concatenation
		return(msgBody);

	}

	public String pcvWeek(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname()
				+ "\n This is to remind you that your child's PCV vaccine is after 1 week. ";
		// string concatenation
		return(msgBody);

	}

	public String rotavirusToday(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname()
				+ "\n This is to remind you that your child's Rotavirus vaccine is today. ";
		// string concatenation
		return(msgBody);

	}

	public String rotavirusTommorow(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname()
				+ "\n This is to remind you that your child's Rotavirus vaccine is tommorow. ";
		// string concatenation
		return(msgBody);

	}

	public String rotavirusWeek(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name+ child.getFname()
				+ "\n This is to remind you that your child's Rotavirus vaccine is after 1 week. ";
		return(msgBody);
		// string concatenation

	}

	public String msg(LocalDate dob) {
		LocalDate localdate = new LocalDate();
		// int ch= Days.daysBetween(localdate, dob).getDays();
		int ch = Days.daysBetween(localdate, dob).getDays();
		switch (ch) {
		case 0:
			s.bcgToday("dgf", "jgj", "mbk") ;
			polioToday(String, String, String);
			hepBToday(String, String, String);
			break;
		case 28:
			polioToday(String, String, String);
			hepBToday(String, String, String);
			break;
		case 84:
			hepBToday(String, String, String);
			break;
		case 56:
			polioToday(String, String, String);
			break;
		case 42:
			dtpToday(String, String, String);
			hibToday(String, String, String);
			pcvToday(String, String, String);
			rotavirusToday(String, String, String);
			break;

		case 70:
			dtpToday(String, String, String);
			hibToday(String, String, String);
			pcvToday(String, String, String);
			rotavirusToday(String, String, String);
			break;
		case 98:
			dtpToday(String, String, String);
			hibToday(String, String, String);
			pcvToday(String, String, String);
			break;
		case 278:
			dtpToday(String, String, String);
			break;
		case 1373:
			dtpToday(String, String, String);
			break;
		case 270:
			mmrToday(String, String, String);
			break;
		case 450:
			mmrToday(String, String, String);
			break;
		case 3285:
			hpvToday(String, String, String);
			break;
		case 248:
			hibToday(String, String, String);
			pcvToday(String, String, String);
			break;

		case 3465:
			if (ch > 3285 && ch < 5110)
				hpvToday(String, String, String);
			break;
		case 3315:
			if (ch >= 5475)
				hpvToday(String, String, String);
			break;
		case 5625:
			hpvToday(String, String, String);
			break;


			// Reminders for tommorow
		case -1:
			bcgTommorow(String, String, String);
			polioTommorow(String, String, String);
			hepBTommorow(String, String, String);
			break;
			case 27:
			polioTommorow(String, String, String);
			hepBTommorow(String, String, String);
			break;
		case 83:
			hepBTommorow(String, String, String);
			break;
		case 55:
			polioTommorow(String, String, String);
			break;
		case 41:
			dtpTommorow(String, String, String);
			hibTommorow(String, String, String);
			pcvTommorow(String, String, String);
			rotavirusTommorow(String, String, String);
			break;

		case 69:
			dtpTommorow(String, String, String);
			hibTommorow(String, String, String);
			pcvTommorow(String, String, String);
			rotavirusTommorow(String, String, String);
			break;
		case 97:
			dtpTommorow(String, String, String);
			hibTommorow(String, String, String);
			pcvTommorow(String, String, String);
			break;
		case 277:
			dtpTommorow(String, String, String);
			break;
		case 1372:
			dtpTommorow(String, String, String);
			break;
		case 269:
			mmrTommorow(String, String, String);
			break;
		case 449:
			mmrTommorow(String, String, String);
			break;
		case 3284:
			hpvTommorow(String, String, String);
			break;
		case 247:
			hibTommorow(String, String, String);
			pcvTommorow(String, String, String);
			break;

		case 3464:
			if (ch > 3285 && ch < 5110)
				hpvTommorow(String, String, String);
			break;
		case 3314:
			if (ch >= 5475)
				hpvTommorow(String, String, String);
			break;
		case 5624:
			hpvTommorow(String, String, String);
			break;


			// Reminders for after 1 week

		case -7:
			bcgWeek(String, String, String);
			polioWeek(String, String, String);
			hepBWeek(String, String, String);
			break;
		case 21:
			polioWeek(String, String, String);
			hepBWeek(String, String, String);
			break;
		case 77:
			hepBWeek(String, String, String);
			break;
		case 49:
			polioWeek(String, String, String);
			break;
		case 35:
			dtpWeek(String, String, String);
			hibWeek(String, String, String);
			pcvWeek(String, String, String);
			rotavirusWeek(String, String, String);
			break;

		case 63:
			dtpWeek(String, String, String);
			hibWeek(String, String, String);
			pcvWeek(String, String, String);
			rotavirusWeek(String, String, String);
			break;
		case 91:
			dtpWeek(String, String, String);
			hibWeek(String, String, String);
			pcvWeek(String, String, String);
			break;
		case 271:
			dtpWeek(String, String, String);
			break;
		case 1366:
			dtpWeek(String, String, String);
			break;
		case 263:
			mmrWeek(String, String, String);
			break;
		case 443:
			mmrWeek(String, String, String);
			break;
		case 3278:
			hpvWeek(String, String, String);
			break;
		case 241:
			hibWeek(String, String, String);
			pcvWeek(String, String, String);
			break;

		case 3458:
			if (ch > 3285 && ch < 5110)
				hpvWeek(String, String, String);
			break;
		case 3308:
			if (ch >= 5475)
				hpvWeek(String, String, String);
			break;
		case 5618:
			hpvWeek(String, String, String);
			break;




		}
		return mail_from_id;
	}
}
