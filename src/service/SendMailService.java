package service;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.joda.time.LocalDate;

public class SendMailService {

	private static String fromAddress = "vacciindia@gmail.com";
	
	public void send(String toAddress, String subject, String msgBody) throws IOException {

		Properties props = new Properties();
		Session session = Session.getDefaultInstance(props, null);

		try {
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(fromAddress));
			InternetAddress to = new InternetAddress(toAddress);
			msg.addRecipient(Message.RecipientType.TO, to);
			msg.setSubject(subject);
			msg.setText(msgBody);
			Transport.send(msg);

		} catch (AddressException addressException) {
			// log.log(Level.SEVERE, "Address Exception , mail could not be
			// sent", addressException);
		} catch (MessagingException messageException) {
			// log.log(Level.SEVERE, "Messaging Exception , mail could not be
			// sent", messageException);
		}
	}
	
	
	public void sendRegistrationMail(String fname, String lname, String email, String pass, String contact) throws IOException{
		String msgBody = "Hello " + fname + " " + lname
				+ ".\nYou are successfully registered on Vacci India.\n\nYour Details are:\nEmail: "
				+ email + "\nPassword: " + pass + "\nContact No: " + contact + "\n\nYou will be receiving on-time Vaccination Reminders as soon as you add your child's details to your ID.\n\n\nRegards\nVacciIndia\n(+91)7838765583";

		send(email, "Welcome to VacciIndia", msgBody);
	}
	
	public void sendChildMail(String fname, String lname, String gender, String email, LocalDate dob) throws IOException{
		String msgBody = "Hello Parent,\n Your little one, " + fname + " " + lname
				+ "has been successfully added with Date of Birth as : " + dob + ". You will be receiving on-time Vaccination Reminders.\n\n\nRegards\nVacciIndia\n(+91)7838765583";

		send(email, "Child Registered to VacciIndia", msgBody);
	}
	
}
