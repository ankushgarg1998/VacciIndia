package service;

import dao.ClientsDao;
import dao.ResetDao;
import entity.Reset;
import org.joda.time.*;


public class ResetService {
	public boolean getEmail(String email) {
		ClientsDao clientsDao = new ClientsDao();
		return clientsDao.check(email);
	}
	
	public void saveRecord(String email, String uuidPswd) {
		LocalTime time = new LocalTime();
		Reset reset = new Reset(email, uuidPswd, time.toString());
		ResetDao resetDao = new ResetDao();
		resetDao.save(reset);
	}
}
