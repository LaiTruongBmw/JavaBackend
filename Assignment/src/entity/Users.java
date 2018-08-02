package entity;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Users {
	@Id
	private String Username;
	private String Password;
	private String Fullname;

	public Users() {
		super();
	}

	public Users(String username, String password, String fullname) {
		super();
		Username = username;
		Password = password;
		Fullname = fullname;
	}

	// Getter and Setter
	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getFullname() {
		return Fullname;
	}

	public void setFullname(String fullname) {
		Fullname = fullname;
	}

}
