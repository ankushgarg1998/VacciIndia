package entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class Child {
	@Id
	Long id;
	@Index
	String fname;
	@Index
	String lname;
	String gender;
	String email;
	String dob;

	public Child() {
	}

	public Child(String fname, String lname, String gender, String email, String dob) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.gender = gender;
		this.email = email;
		this.dob = dob;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getDob(){
		return dob;
	}
	
	public void setDob(String dob){
		this.dob = dob;
	}

}
