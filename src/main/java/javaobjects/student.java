package javaobjects;

public class student {
	private int sid;
	private String fname;
	private String lname;
	private String classname;
	private String email;
	private int age;
	
	public student(int sid, String fname, String lname, String classname, String email, int age) {
		
		this.sid = sid;
		this.fname = fname;
		this.lname = lname;
		this.classname = classname;
		this.email = email;
		this.age = age;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
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
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
}
