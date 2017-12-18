package service;

import dao.ResetDao;

public class DelElementService {
	public void updateElements() {
		ResetDao resetDao = new ResetDao();
		resetDao.updateReset();
	}
}
