package com.app.entity;

<<<<<<< HEAD
public class Admission {

=======
import java.sql.Date;

public class Admission {
	private int id;
	private int stud_id;
	private int course_id;
	private Date application_date;
	private Admission_Staus status;
	
	public Admission(int stud_id, int course_id, Date application_date, Admission_Staus status) {
		super();
		this.stud_id = stud_id;
		this.course_id = course_id;
		this.application_date = application_date;
		this.status = status;
	}

	
	
	public int getStud_id() {
		return stud_id;
	}



	public void setStud_id(int stud_id) {
		this.stud_id = stud_id;
	}



	public int getCourse_id() {
		return course_id;
	}



	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}



	public Date getApplication_date() {
		return application_date;
	}



	public void setApplication_date(Date application_date) {
		this.application_date = application_date;
	}



	public Admission_Staus getStatus() {
		return status;
	}



	public void setStatus(Admission_Staus status) {
		this.status = status;
	}



	public int getId() {
		return id;
	}



	@Override
	public String toString() {
		return "Admission [stud_id=" + stud_id + ", course_id=" + course_id + ", application_date=" + application_date
				+ ", status=" + status + "]";
	}
	
	
	
>>>>>>> shailesh
}
