package service;

import dao.ChildDao;
import entity.Child;


public class ChildService {
	ChildDao childDao = new ChildDao();

	public void registerKid(String fname, String lname, String gender, String email, String dob) {
		Child kid = new Child(fname, lname, gender, email, dob);
		childDao.save(kid);
	}
}
