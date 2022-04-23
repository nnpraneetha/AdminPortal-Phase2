package javaobjects;

public class classes {
	
	private String classname;
	private String subname;
	private String teacher;
	private String time;
	public classes(String classname, String subname, String teacher, String time) {
		super();
		this.classname = classname;
		this.subname = subname;
		this.teacher = teacher;
		this.time = time;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
	
}
