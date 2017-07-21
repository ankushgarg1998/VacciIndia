package service;

import dao.ClientsDao;


public class LoginService {
	ClientsDao clientsDao = new ClientsDao();

	public boolean validate(String email, String pass) {
		return clientsDao.val(email, pass);
	}
	
	public String getName(String email) {
		return clientsDao.name(email);
	}
}
