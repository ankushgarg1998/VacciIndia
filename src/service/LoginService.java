package service;

import dao.ClientsDao;
import entity.Clients;


public class LoginService {
	ClientsDao clientsDao = new ClientsDao();

	public boolean validate(String email, String pass) {
		return clientsDao.val(email, pass);
	}
}
