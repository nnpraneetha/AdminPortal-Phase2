package classreportpack;

public class classreport {
	private int tid;
	private String tname;
	private String designation;
	private int code;
	private String subname;
	private String department;
	private String shortcut;
	private int sid;
	private String sname;
	
	public classreport( int sid, String sname) {
		this.sid = sid;
		this.sname = sname;
	}
	
	public classreport(int tid, String tname, String designation) {
		this.tid = tid;
		this.tname = tname;
		this.designation = designation;
	}

	public classreport(int code, String subname, String department, String shortcut) {
		this.code = code;
		this.subname = subname;
		this.department = department;
		this.shortcut = shortcut;
	}

	public String getDesignation() {
		return designation;
	}


	public void setDesignation(String designation) {
		this.designation = designation;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public String getShortcut() {
		return shortcut;
	}


	public void setShortcut(String shortcut) {
		this.shortcut = shortcut;
	}


	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
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

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}
	
	
}
