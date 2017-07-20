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

public class SendMailService {

	String mail_from_id = "ashish@osahub.com";
	String mail_from_name = "OSAHUB Technologies";

	public void sendWelcomeMail(String mail_to_name, String mail_to_id, String pass) {

		String msgBody = "Hello " + mail_to_name
				+ ".\nYou are successfully register on The Vacci India.\n\nThe Details Given are:\n\nEmail: "
				+ mail_to_id + "\nPassword: " + pass + ".";

		SendMail(msgBody, mail_to_id, mail_to_name);
	}

	private void SendMail(String msgBody, String mail_to_id, String mail_to_name) {

		Properties props = new Properties();
		Session session = Session.getDefaultInstance(props, null);

		try {

			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(mail_from_id, mail_from_name));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(mail_to_id, mail_to_name));
			msg.setSubject("Registration Successful");
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

}
