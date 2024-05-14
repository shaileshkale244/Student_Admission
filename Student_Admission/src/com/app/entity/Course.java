package com.app.entity;

import java.sql.Date;

public class Course {
	
	private int id;
	private String title;
	private Date start_date;
	private Date end_date;
	private double fees;
	private Schedule schedule;
	
	
	public Course(String title, Date start_date, Date end_date, double fees, Schedule schedule, int capacity) {
		super();
		this.title = title;
		this.start_date = start_date;
		this.end_date = end_date;
		this.fees = fees;
		this.schedule = schedule;
		this.capacity = capacity;
	}
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public double getFees() {
		return fees;
	}
	public void setFees(double fees) {
		this.fees = fees;
	}
	public Schedule getSchedule() {
		return schedule;
	}
	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	@Override
	public String toString() {
		return "Course [id=" + id + ", title=" + title + ", start_date=" + start_date + ", end_date=" + end_date
				+ ", fees=" + fees + ", schedule=" + schedule + ", capacity=" + capacity + "]";
	}
	private int capacity;
	

}
