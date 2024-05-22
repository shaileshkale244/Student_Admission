package com.app.entity;

public class Student {
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> b74bf8d20439bff8b503417bf7b244d0f7376785
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String password;
	private String address;
	private double marks;
	
	public Student(String fname, String lname, String email, String password, String address, double marks) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.address = address;
		this.marks = marks;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public double getMarks() {
		return marks;
	}

	public void setMarks(double marks) {
		this.marks = marks;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + fname + " " + lname + ", email=" + email + ", password="
				+ password + ", address=" + address + ", marks=" + marks + "]";
	}
<<<<<<< HEAD
	

	   
	    
>>>>>>> shailesh
=======
>>>>>>> b74bf8d20439bff8b503417bf7b244d0f7376785

}
