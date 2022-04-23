package assign;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AssignTeacherServlet")
public class AssignTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Connection con;
	public void init() {
		System.out.println("initializing assignTeacherServlet...");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/admindb","root","Pandu$01");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String teachername=request.getParameter("tname");
		String classname=request.getParameter("class");
		String subjectname=request.getParameter("subname");
		String time=request.getParameter("time");


		try {
			Statement st=con.createStatement();
			int result=st.executeUpdate("insert into classes values('"+classname+"','"+subjectname+"','"+teachername+"','"+time+"')");
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			if(result>0) {
				out.println("<h3>Succesfully assigned</h3>");
				out.println("<form action='assignteacher.jsp' method='post'>");
				out.println("<input type='submit' value='Back'/>");
				out.println("</form>");
			
			}else {
				out.println("<h1>Error assigning</h1>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void destroy() {
		
			try {
				if(con!=null) {
				con.close();
				}
			}catch (SQLException e) {
				
				e.printStackTrace();
			}
	}
}
