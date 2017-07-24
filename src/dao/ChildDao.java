package dao;

import static service.OfyService.ofy;

import entity.Child;

public class ChildDao {
//	static Clients ud = null;

	public void save(Child kid) {
			ofy().save().entities(kid);
			ofy().clear();
			System.out.println("Data Saved");
	}

}
