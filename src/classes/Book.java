package classes;

import java.util.Date;

public class Book {

	
	private int userid;
	private String username;
	private String password;
	private int bId;
	private String book;
	private String authour;
	private String category;
	private String status;
	private String country;
	private Date borroweddate;
	private Date duedate;
	private int quantity;
	private Date returneddate;
	

	
	
	
	
	public Date getReturneddate() {
		return returneddate;
	}

	public void setReturneddate(Date returneddate) {
		this.returneddate = returneddate;
	}

	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getBook() {
		return book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public String getAuthour() {
		return authour;
	}

	public void setAuthour(String authour) {
		this.authour = authour;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Date getBorroweddate() {
		return borroweddate;
	}

	public void setBorroweddate(Date borroweddate) {
		this.borroweddate = borroweddate;
	}

	public Date getDuedate() {
		return duedate;
	}

	public void setDuedate(Date duedate) {
		this.duedate = duedate;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	

}
