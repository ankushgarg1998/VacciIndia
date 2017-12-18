package service;

import dao.ResetDao;

public class ResetLinkService {
	public boolean uidCheck (String uid) {
		ResetDao resetDao = new ResetDao();
		return resetDao.uidCheck(uid);
	}
	
	public void changePswd (String uid, String pswd) {
		ResetDao resetDao = new ResetDao();
		resetDao.change(uid, pswd);
	}
}
