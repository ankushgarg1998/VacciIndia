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

	public String vac(String name, String vaccine, String day, String web) {

		String msgBody = "Hello Parent,\n \nThis is to remind you that your infant, " + name + ", is to get " + vaccine + " vaccine " + day + "\n\nFor details about this vaccine and it's benifits, exceptions and threats, click http://vacciindia-173923.appspot.com/vaccine-"+web;
		// string concatenation
		return (msgBody);

	}



	public String msg(LocalDate dob, String name) {
		LocalDate localdate = new LocalDate();
		String msgBody = null;
		int ch = Days.daysBetween(localdate, dob).getDays();
		switch (ch) {
		case 0:
			msgBody = vac(name,"Bacillus Calmette Guerin (BCG)", "today", "bcg");
			msgBody = vac(name, "Hepatitis B", "today", "hepb");
			msgBody = vac(name, "polio", "today", "polio");
			break;
		case 28:
			msgBody = vac(name, "polio", "today", "polio");
			msgBody = vac(name, "Hepatitis B", "today", "hepb");
			break;
		case 84:
			msgBody = vac(name, "Hepatitis B", "today", "hepb");
			break;
		case 56:
			msgBody = vac(name, "polio", "today", "polio");
			break;
		case 42:
								vac(name, "DTP", "in a week", "dtp");
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "today", "hib");
			msgBody = vac(name,"Pheumococcal conjugate(PCV)", "today", "pneum");
			msgBody = vac(name, "rotavirus", "today", "rota");
			break;

		case 70:
			msgBody = vac(name, "DTP", "today", "dtp");
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "today", "hib");
			msgBody = vac(name,"Pheumococcal conjugate(PCV)", "today", "pneum");
			msgBody = vac(name, "rotavirus", "today", "rota");
			break;
		case 98:
			msgBody = vac(name, "DTP", "today", "dtp");
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "today", "hib");
			msgBody = vac(name, "Pheumococcal conjugate(PCV)", "today", "pneum");

		case 278:
			msgBody = vac(name, "DTP", "today", "dtp");
			break;
		case 1373:
			msgBody = vac(name, "DTP", "today", "dtp");
			break;
		case 270:
			msgBody = vac(name, "Measles, Mumps, Rubella (MMR)", "today", "mmr");
			break;
		case 450:
			msgBody = vac(name, "Measles, Mumps, Rubella (MMR)", "today", "mmr");
			break;
		case 3285:
			msgBody = vac(name, "Human Papilloma Virus(HPV)", "today", "hpv");
			break;
		case 248:
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "today", "hib");
			msgBody = vac(name, "Pheumococcal conjugate(PCV)", "today", "pneum");
			break;

		case 3465:
			if (ch > 3285 && ch < 5110)
				msgBody = vac(name, "Human Papilloma Virus(HPV)", "today", "hpv");
			break;
		case 3315:
			if (ch >= 5475)
				msgBody = vac(name, "Human Papilloma Virus(HPV)", "today", "hpv");
			break;
		case 5625:
			msgBody = vac(name, "Human Papilloma Virus(HPV)", "today", "hpv");
			break;

		// Reminders for tommorow
		case 27:
			msgBody = vac(name, "polio", "tomorrow", "polio");
			msgBody = vac(name, "Hepatitis B", "tomorrow", "hepb");
			break;
		case 41:
			msgBody = vac(name, "DTP", "tomorrow", "dtp");
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "tomorrow", "hib");
			msgBody = vac(name, "Pheumococcal conjugate(PCV)", "tomorrow", "pneum");
			msgBody = vac(name, "rotavirus", "tomorrow", "rota");
			break;
		case 55:
			msgBody = vac(name, "polio", "tomorrow", "polio");
			break;
		case 69:
			msgBody = vac(name, "DTP", "tomorrow", "dtp");
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "tomorrow", "hib");
			msgBody = vac(name,"Pheumococcal conjugate(PCV)", "tomorrow", "pneum");
			msgBody = vac(name, "rotavirus", "tomorrow", "rota");
			break;
		case 83:
			msgBody = vac(name, "Hepatitis B", "tomorrow", "hepb");
			break;
		case 97:
			msgBody = vac(name, "DTP", "tomorrow", "dtp");
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "tomorrow", "hib");
			msgBody = vac(name, "Pheumococcal conjugate(PCV)", "tomorrow", "pneum");
			break;
		case 277:
			msgBody = vac(name, "DTP", "tomorrow", "dtp");
			break;
		case 1372:
			msgBody = vac(name, "DTP", "tomorrow", "dtp");
			break;
		case 269:
			msgBody = vac(name, "Measles, Mumps, Rubella (MMR)", "tomorrow", "mmr");
			break;
		case 449:
			msgBody = vac(name, "Measles, Mumps, Rubella (MMR)", "tomorrow", "mmr");
			break;
		case 3284:
			msgBody = vac(name, "Human Papilloma Virus(HPV)", "tomorrow", "hpv");
			break;
		case 247:
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "tomorrow", "hib");
			msgBody = vac(name, "Pheumococcal conjugate(PCV)", "tomorrow", "pneum");
			break;

		case 3464:
			if (ch > 3285 && ch < 5110)
				msgBody = vac(name, "Human Papilloma Virus(HPV)", "tomorrow", "hpv");
			break;
		case 3314:
			if (ch >= 5475)
				msgBody = vac(name, "Human Papilloma Virus(HPV)", "tomorrow", "hpv");
			break;
		case 5624:
			msgBody = vac(name, "Human Papilloma Virus(HPV)", "tomorrow", "hpv");
			break;

		// Reminders for after 1 week
		case 21:
			msgBody = vac(name, "polio", "in a week", "polio");
			msgBody = vac(name, "Hepatitis B", "in a week", "hepb");
			break;
		case 77:
			msgBody = vac(name, "Hepatitis B", "in a week", "hepb");
			break;
		case 49:
			msgBody = vac(name, "polio", "in a week", "polio");
			break;
		case 35:
			msgBody = vac(name, "DTP", "in a week", "dtp");
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "in a week", "hib");
			msgBody = vac(name, "Pheumococcal conjugate(PCV)", "in a week", "pneum");
			msgBody = vac(name, "rotavirus", "in a week", "rota");
			break;

		case 63:
			msgBody = vac(name, "DTP", "in a week", "dtp");
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "in a week", "hib");
			msgBody = vac(name, "Pheumococcal conjugate(PCV)", "in a week", "pneum");
			msgBody = vac(name, "rotavirus", "in a week", "rota");
			break;
		case 91:
			msgBody = vac(name, "DTP", "in a week", "dtp");
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "in a week", "hib");
			msgBody = vac(name, "Pheumococcal conjugate(PCV)", "in a week", "pneum");
			break;
		case 271:
			msgBody = vac(name, "DTP", "in a week", "dtp");
			break;
		case 1366:
			msgBody = vac(name, "DTP", "in a week", "dtp");
			break;
		case 263:
			msgBody = vac(name, "Measles, Mumps, Rubella (MMR)", "in a week", "mmr");
			break;
		case 443:
			msgBody = vac(name, "Measles, Mumps, Rubella (MMR)", "in a week", "mmr");
			break;
		case 3278:
			msgBody = vac(name, "Human Papilloma Virus(HPV)", "in a week", "hpv");
			break;
		case 241:
			msgBody = vac(name, "Haemophilus Influenza Type B (HiB)", "in a week", "hib");
			msgBody = vac(name, "Pheumococcal conjugate(PCV)", "in a week", "pneum");
			break;

		case 3458:
			if (ch > 3285 && ch < 5110)
				msgBody = vac(name, "Human Papilloma Virus(HPV)", "in a week", "hpv");
			break;
		case 3308:
			if (ch >= 5475)
				msgBody = vac(name, "Human Papilloma Virus(HPV)", "in a week", "hpv");
			break;
		case 5618:
			msgBody = vac(name, "Human Papilloma Virus(HPV)", "in a week", "hpv");
			break;

		}
		return msgBody;
	}
}
