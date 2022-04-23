package classreportpack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ClassReportServlet")
public class ClassReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
//	static List<classreport> t,sub,s=new ArrayList<classreport>();
	
	
	/*private static PreparedStatement ps;
	private static PreparedStatement ps1;
       
	public void init() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/admindb","root","Pandu$01");
			ps = con.prepareStatement("select code,subname,department,shortcut from subjects where class=?");
			ps1 = con.prepareStatement("select sid,concat(fname,' ',lname) from students where class=?");
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String classname = request.getParameter("classname");
		List<classreport> t=new ArrayList<classreport>();
		List<classreport> sub=new ArrayList<classreport>();
		List<classreport> s=new ArrayList<classreport>();
		/*try {
			ps.setString(1, classname);
			ps1.setString(1, classname);
		} catch (SQLException e) {
			e.printStackTrace();
		}*/
		try(
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/admindb","root","Pandu$01");
				Statement st=con.createStatement();
		
		){
			ResultSet rs1=st.executeQuery("select t.tid,concat(t.firstname,' ',t.lastname),t.designation from teachers t, classes c where concat(t.firstname,' ',t.lastname)=c.teachername and c.class='"+classname+"'");

			while(rs1.next()) {
				classreport cr=new classreport(rs1.getInt(1),rs1.getString(2),rs1.getString(3));
				t.add(cr);
			}
			ResultSet rs2=st.executeQuery("select s.* from subjects s, classsub cs where cs.class='"+classname+"' and s.subname=cs.subname");
			while(rs2.next()) {
				classreport cr=new classreport(rs2.getInt(1),rs2.getString(2),rs2.getString(3),rs2.getString(4));
				sub.add(cr);
			}
			ResultSet rs3=st.executeQuery("select sid,concat(fname,' ',lname) from students where class='"+classname+"'");
			while(rs3.next()) {
				classreport cr=new classreport(rs3.getInt(1),rs3.getString(2));
				s.add(cr);
			}
		} catch (SQLException e ) {
			e.printStackTrace();
		}
		request.setAttribute("crt", t);
		request.setAttribute("crsub", sub);
		request.setAttribute("crs", s);
		RequestDispatcher rd=request.getRequestDispatcher("/classreport-list.jsp");
		rd.forward(request,response);
	}

}
