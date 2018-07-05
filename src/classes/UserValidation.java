package classes;

public class UserValidation {

	private String vusename;
	private String vpassword;
	public String getvusename() {
		return vusename;
	}
	public void setVusename(String vusename) {
		this.vusename = vusename;
	}
	public String getVpassword() {
		return vpassword;
	}
	public void setVpassword(String vpassword) {
		this.vpassword = vpassword;
	}
	
	public UserValidation(String vusename, String vpassword) {
		super();
		this.vusename = vusename;
		this.vpassword = vpassword;
	}
	public UserValidation() {
		// TODO Auto-generated constructor stub
	}
	
	
	
}
