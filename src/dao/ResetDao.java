package dao;

import entity.Reset;
import entity.Clients;
import static service.OfyService.ofy;

import java.util.List;

import org.joda.time.Hours;
import org.joda.time.LocalTime;


public class ResetDao {
	public void save (Reset reset) {
		ofy().save().entities(reset);
		ofy().clear();
		System.out.println("data saved!");
	}

	public boolean uidCheck(String uid) {
		Reset reset = new Reset();
		reset = ofy().load().type(Reset.class).id(uid).now();
		if(reset != null)
			return true;
		else
			return false;
	}

	public void updateReset() {
		List<Reset> li = ofy().load().type(Reset.class).list();
		Reset reset = new Reset();
		LocalTime time;
		LocalTime timeCurr = new LocalTime();
		int diff;
		for(int i=0; i<li.size(); i++) {
			reset = li.get(i);
			time = LocalTime.parse(reset.getTime());
			diff = Hours.hoursBetween(time, timeCurr).getHours();
			if(diff == 1) {
				ofy().delete().entity(reset).now();
			}
		}
	}

	public boolean change (String uid, String pswd) {
		Reset reset = new Reset();
		reset = ofy().load().type(Reset.class).id(uid).now();
		Clients clients = new Clients();
		try {
			clients = ofy().load().type(Clients.class).id(reset.getEmail()).now();
			ofy().delete().type(Clients.class).id(reset.getEmail()).now();
			clients.setPass(pswd);
			ofy().save().entity(clients).now();
			ofy().delete().type(Reset.class).id(uid).now();
		} catch(Exception e) {
		}
		return true;
	}
}
