package classes;

import java.util.Date;

public class Users {

	private int userId;
	private String username;
	private String password;
	private String conformpassword;
	private String gender;
	private Date dob;
	private String country;

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getUserId() {
		return userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConformpassword() {
		return conformpassword;
	}

	public void setConformpassword(String conformpassword) {
		this.conformpassword = conformpassword;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Override
	public String toString() {
		return "Users [userId=" + userId + ", username=" + username + ", password=" + password + ", gender=" + gender
				+ ", dob=" + dob + ", country=" + country + "]";
	}

}
