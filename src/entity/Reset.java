package entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class Reset {

	@Id
	String email;
	@Index
	String uuid;
	String time;
	
	public Reset() {
	}
	
	public Reset(String email, String uuid, String time) {
		super();
		this.email = email;
		this.uuid = uuid;
		this.time = time;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public String getUuid() {
		return uuid;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public String getTime() {
		return time;
	}
}
