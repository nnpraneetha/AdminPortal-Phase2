package admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javaobjects.subject;
import javaobjects.classes;
import javaobjects.student;
import javaobjects.teacher;

@WebServlet("/ServiceServlet")
public class ServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	public void init() throws ServletException {

		super.init();

	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String option = request.getParameter("option");

	
				switch (option) {

				case "STUDENTS":
					studentsList(request, response);
					break;

				case "TEACHERS":
					teachersList(request, response);
					break;

				case "CLASSES":
					classestList(request, response);
					break;

				default:
					classestList(request, response);

			}
			} catch (Exception e) {
				throw new ServletException(e);
			}
}
	private void studentsList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<student> students =DbQueries.getStudents();
		request.setAttribute("studentList", students);
		RequestDispatcher rd=request.getRequestDispatcher("/student-list.jsp");
		rd.forward(request, response);

	}

	private void teachersList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<teacher> teachers =DbQueries.getTeachers();
		request.setAttribute("teacherList", teachers);
		RequestDispatcher rd=request.getRequestDispatcher("/teacher-list.jsp");
		rd.forward(request, response);

	}


	private void classestList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<classes> classes =DbQueries.getClasses();
		request.setAttribute("classList", classes);
		RequestDispatcher rd=request.getRequestDispatcher("/class-list.jsp");
		rd.forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
