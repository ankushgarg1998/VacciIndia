package service;

import java.io.IOException;

import org.joda.time.Days;
import org.joda.time.LocalDate;

public class ReminderService {

	void vac(String name, String email, String vaccine, String day, String web) throws IOException {

		SendMailService sendMailService = new SendMailService();

		String msgBody = "Hello Parent,\n \nThis is to remind you that your child, " + name + ", is to get " + vaccine
				+ " vaccine " + day
				+ "\n\nFor details about this vaccine and it's benefits, exceptions and threats, click http://vacciindia-173923.appspot.com/vaccine-"
				+ web + "\n\nRegards\nVacciIndia\n(+91)7838765583";
		// string concatenation

		sendMailService.send(email, "Vaccination Reminder", msgBody);
		System.out.println("Reminder mail sent for " + name + "\n Msg Body : " + msgBody);
	}

	public void msg(String email, LocalDate dob, String name) throws IOException {
		LocalDate today = new LocalDate();
		System.out.println(today);
		System.out.println(dob);
		int ch = Days.daysBetween(dob, today).getDays();
		System.out.println(ch);

		switch (ch) {
		case 0:
			vac(name, email, "Bacillus Calmette Guerin (BCG)", "today", "bcg");
			vac(name, email, "Hepatitis B", "today", "hepb");
			vac(name, email, "polio", "today", "polio");
			break;
		case 28:
			vac(name, email, "polio", "today", "polio");
			vac(name, email, "Hepatitis B", "today", "hepb");
			break;
		case 84:
			vac(name, email, "Hepatitis B", "today", "hepb");
			break;
		case 56:
			vac(name, email, "polio", "today", "polio");
			break;
		case 42:
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "today", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "today", "pneum");
			vac(name, email, "rotavirus", "today", "rota");
			break;

		case 70:
			vac(name, email, "DTP", "today", "dtp");
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "today", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "today", "pneum");
			vac(name, email, "rotavirus", "today", "rota");
			break;
		case 98:
			vac(name, email, "DTP", "today", "dtp");
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "today", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "today", "pneum");

		case 278:
			vac(name, email, "DTP", "today", "dtp");
			break;
		case 1373:
			vac(name, email, "DTP", "today", "dtp");
			break;
		case 270:
			vac(name, email, "Measles, Mumps, Rubella (MMR)", "today", "mmr");
			break;
		case 450:
			vac(name, email, "Measles, Mumps, Rubella (MMR)", "today", "mmr");
			break;
		case 3285:
			vac(name, email, "Human Papilloma Virus(HPV)", "today", "hpv");
			break;
		case 248:
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "today", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "today", "pneum");
			break;

		case 3465:
			if (ch > 3285 && ch < 5110)
				vac(name, email, "Human Papilloma Virus(HPV)", "today", "hpv");
			break;
		case 3315:
			if (ch >= 5475)
				vac(name, email, "Human Papilloma Virus(HPV)", "today", "hpv");
			break;
		case 5625:
			vac(name, email, "Human Papilloma Virus(HPV)", "today", "hpv");
			break;

		// Reminders for tommorow
		case 27:
			vac(name, email, "polio", "tomorrow", "polio");
			vac(name, email, "Hepatitis B", "tomorrow", "hepb");
			break;
		case 41:
			vac(name, email, "DTP", "tomorrow", "dtp");
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "tomorrow", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "tomorrow", "pneum");
			vac(name, email, "rotavirus", "tomorrow", "rota");
			break;
		case 55:
			vac(name, email, "polio", "tomorrow", "polio");
			break;
		case 69:
			vac(name, email, "DTP", "tomorrow", "dtp");
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "tomorrow", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "tomorrow", "pneum");
			vac(name, email, "rotavirus", "tomorrow", "rota");
			break;
		case 83:
			vac(name, email, "Hepatitis B", "tomorrow", "hepb");
			break;
		case 97:
			vac(name, email, "DTP", "tomorrow", "dtp");
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "tomorrow", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "tomorrow", "pneum");
			break;
		case 277:
			vac(name, email, "DTP", "tomorrow", "dtp");
			break;
		case 1372:
			vac(name, email, "DTP", "tomorrow", "dtp");
			break;
		case 269:
			vac(name, email, "Measles, Mumps, Rubella (MMR)", "tomorrow", "mmr");
			break;
		case 449:
			vac(name, email, "Measles, Mumps, Rubella (MMR)", "tomorrow", "mmr");
			break;
		case 3284:
			vac(name, email, "Human Papilloma Virus(HPV)", "tomorrow", "hpv");
			break;
		case 247:
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "tomorrow", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "tomorrow", "pneum");
			break;

		case 3464:
			if (ch > 3285 && ch < 5110)
				vac(name, email, "Human Papilloma Virus(HPV)", "tomorrow", "hpv");
			break;
		case 3314:
			if (ch >= 5475)
				vac(name, email, "Human Papilloma Virus(HPV)", "tomorrow", "hpv");
			break;
		case 5624:
			vac(name, email, "Human Papilloma Virus(HPV)", "tomorrow", "hpv");
			break;

		// Reminders for after 1 week
		case 21:
			vac(name, email, "polio", "in a week", "polio");
			vac(name, email, "Hepatitis B", "in a week", "hepb");
			break;
		case 77:
			vac(name, email, "Hepatitis B", "in a week", "hepb");
			break;
		case 49:
			vac(name, email, "polio", "in a week", "polio");
			break;
		case 35:
			vac(name, email, "DTP", "in a week", "dtp");
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "in a week", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "in a week", "pneum");
			vac(name, email, "rotavirus", "in a week", "rota");
			break;

		case 63:
			vac(name, email, "DTP", "in a week", "dtp");
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "in a week", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "in a week", "pneum");
			vac(name, email, "rotavirus", "in a week", "rota");
			break;
		case 91:
			vac(name, email, "DTP", "in a week", "dtp");
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "in a week", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "in a week", "pneum");
			break;
		case 271:
			vac(name, email, "DTP", "in a week", "dtp");
			break;
		case 1366:
			vac(name, email, "DTP", "in a week", "dtp");
			break;
		case 263:
			vac(name, email, "Measles, Mumps, Rubella (MMR)", "in a week", "mmr");
			break;
		case 443:
			vac(name, email, "Measles, Mumps, Rubella (MMR)", "in a week", "mmr");
			break;
		case 3278:
			vac(name, email, "Human Papilloma Virus(HPV)", "in a week", "hpv");
			break;
		case 241:
			vac(name, email, "Haemophilus Influenza Type B (HiB)", "in a week", "hib");
			vac(name, email, "Pheumococcal conjugate(PCV)", "in a week", "pneum");
			break;

		case 3458:
			if (ch > 3285 && ch < 5110)
				vac(name, email, "Human Papilloma Virus(HPV)", "in a week", "hpv");
			break;
		case 3308:
			if (ch >= 5475)
				vac(name, email, "Human Papilloma Virus(HPV)", "in a week", "hpv");
			break;
		case 5618:
			vac(name, email, "Human Papilloma Virus(HPV)", "in a week", "hpv");
			break;
		}
	}
}