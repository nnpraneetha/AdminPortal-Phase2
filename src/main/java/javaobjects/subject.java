package javaobjects;

public class subject {
	
	private int code;
	private String subname;
	private String shortcut;
	private String department;
	
	public subject(int code, String subname, String shortcut,String department) {
		this.code = code;
		this.subname = subname;
		this.shortcut = shortcut;
		this.department=department;
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}
	public String getShortcut() {
		return shortcut;
	}
	public void setShortcut(String shortcut) {
		this.shortcut = shortcut;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	
	
	
}
