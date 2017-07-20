package dao;

import static service.OfyService.ofy;

import entity.Clients;

public class ClientsDao {
//	static Clients ud = null;

	public void save(Clients user) {
			ofy().save().entities(user);
			ofy().clear();
			System.out.println("Data Saved");
	}

	//Check Existing User
		public boolean check(String email) {
			Clients user = ofy().load().type(Clients.class).id(email).now();
			if (user==null)
				return false;
			else
				return true;
		}

	}
