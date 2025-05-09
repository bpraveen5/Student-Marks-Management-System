package com.praveen.model;



import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student {
	
	@Id
	private int sid;
	private String firstName;
	private String lastName;
	private double sub1;
	private double sub2;
	private double sub3;
	private double totalMarks;
	private double percentage;
	private String grade;
	public Student() {
		super();
	}
	public Student(int sid, String firstName, String lastName, double sub1, double sub2, double sub3, double totalMarks,
			double percentage, String grade) {
		super();
		this.sid = sid;
		this.firstName = firstName;
		this.lastName = lastName;
		this.sub1 = sub1;
		this.sub2 = sub2;
		this.sub3 = sub3;
		this.totalMarks = totalMarks;
		this.percentage = percentage;
		this.grade=grade;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	// Business logic for fullName
    public String getFullName() {
        return firstName + " " + lastName;
    }   
	public double getSub1() {
		return sub1;
	}
	public void setSub1(double sub1) {
		this.sub1 = sub1;
	}
	public double getSub2() {
		return sub2;
	}
	public void setSub2(double sub2) {
		this.sub2 = sub2;
	}
	public double getSub3() {
		return sub3;
	}
	public void setSub3(double sub3) {
		this.sub3 = sub3;
	}
	public double getTotalMarks() {
		return totalMarks;
	}
	public void setTotalMarks(double totalMarks) {
		this.totalMarks = totalMarks;
	}
	public double getPercentage() {
		return percentage;
	}
	public void setPercentage(double percentage) {
		this.percentage = percentage;
	}
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	@Override
	public String toString() {
		return "Student [sid=" + sid + ", fullName="+ getFullName() +", sub1=" + sub1
				+ ", sub2=" + sub2 + ", sub3=" + sub3 + ", totalMarks=" + totalMarks + ", percentage=" + percentage
			 + ", grade="+grade+"]";
	}
	
	
	
}
