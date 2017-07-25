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

public class ReminderService {
	
		String mail_from_id = "vacciindia@gmail.com";
		String mail_from_name = "VacciIndia ";

		public void bcgToday(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's BCG vaccine is today .";
				// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}

		private void SendMail(String msgBody, String mail_to_id, String mail_to_name) {

			Properties props = new Properties();
			Session session = Session.getDefaultInstance(props, null);

			try {

				Message msg = new MimeMessage(session);
				msg.setFrom(new InternetAddress(mail_from_id, mail_from_name));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(mail_to_id, mail_to_name));
				msg.setSubject("Vaccine Reminder");
				msg.setText(msgBody);
				Transport.send(msg);

			} catch (AddressException e) {
				e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

		}

		public void bcgTommorow(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's BCG vaccine is Tommorow "
					  + ".";// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		
		
		public void bcgWeek(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's BCG vaccine is after 1 week "
					 + ".";// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void hepBToday(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Hep B vaccine is today. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void hepBTommorow(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Hep B vaccine is tommorow .";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void hepBWeek(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Hep B  vaccine is after 1 week "
					+ ".";// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void polioToday(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Polio vaccine is today "
					 + ".";// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void polioTommorow(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Polio vaccine is tommorow "
					+ ".";// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void polioWeek(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Polio vaccine is after 1 week. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void dtpToday(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's DTP vaccine is today. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void dtpTommorow(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's DTP vaccine is tommorow. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void dtpWeek(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's DTP vaccine is after 1 week. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void mmrToday(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's MMR vaccine is today. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void mmrTommorow(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's MMR vaccine is tommorow. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void mmrWeek(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's MMR vaccine is after 1 week. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void hpvToday(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's HPV vaccine is today. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void hpvTommorow(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's HPV vaccine is tommorow. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void hpvWeek(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's HPV vaccine is after 1 week. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void hibToday(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Hib vaccine is today. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void hibTommorow(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Hib vaccine is tommorow. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void hibWeek(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Hib vaccine is after  1 week . ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void pcvToday(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's PCV vaccine is today. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}public void pcvTommorow(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's PCV vaccine is tommorow. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}public void pcvWeek(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's PCV vaccine is after 1 week. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
		public void rotavirusToday(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Rotavirus vaccine is today. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}public void rotavirusTommorow(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Rotavirus vaccine is tommorow. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}public void rotavirusWeek(String mail_to_name, String mail_to_id, String pass) {

			String msgBody = "Hello " + mail_to_name
					+ "This is to remind you that your child's Rotavirus vaccine is after 1 week. ";
					// string concatenation

			SendMail(msgBody, mail_to_id, mail_to_name);
		}
	}