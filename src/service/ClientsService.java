package service;

import dao.ClientsDao;
import entity.Clients;


public class ClientsService {
	ClientsDao clientsDao = new ClientsDao();

	public boolean checkIfUserAlreadyExists(String email) {
		return clientsDao.check(email);
	}

	public void registerUser(String fname, String lname, String email, String pass, String contact) {
		Clients user = new Clients(email, fname, lname, pass, contact);
		clientsDao.save(user);
	}
}
