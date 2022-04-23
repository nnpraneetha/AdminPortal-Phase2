package assign;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class AssignClassServlet
 */
@WebServlet("/AssignClassServlet")
public class AssignClassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Connection con;
	public void init() {
		System.out.println("initializing assignClassServlet...");
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
	
		String subjectname=request.getParameter("subname");
		String classname=request.getParameter("class");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		try {
			Statement st=con.createStatement();
			int result=st.executeUpdate("insert into classsub values('"+subjectname+"','"+classname+"')");
			
			if(result>0) {
				out.println("<h3>Succesfully assigned</h3>");
				out.println("<form action='assignclass.jsp' method='post'>");
				out.println("<input type='submit' value='Back'/>");
				out.println("</form>");
			}
		} catch (SQLException e) {
			if(e instanceof SQLIntegrityConstraintViolationException) {
				out.println("<h3>Already present.Duplicate Entry</h3><br>");
				out.println("<form action='assignclass.jsp' method='post'>");
				out.println("<input type='submit' value='Back'/>");
				out.println("</form>");
			} else {
			e.printStackTrace();
			}
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
