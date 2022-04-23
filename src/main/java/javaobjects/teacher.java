package javaobjects;

public class teacher {
	
	private int tid;
	private String firstname;
	private String lastname;
	private String designation;
	private String email;
	private int age;
	
	public teacher(int tid, String firstname, String lastname, String designation, String email, int age) {
		this.tid = tid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.designation = designation;
		this.email = email;
		this.age = age;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
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
