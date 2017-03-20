package Servlets;
import DAO.QueryDAO;
import DAO.dbconnection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class returnBook
 */
@WebServlet("/returnBook")
public class returnBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public returnBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String isbn=request.getParameter("isbn");
		DateFormat outputFormatter = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c= Calendar.getInstance();
		String Date_in=outputFormatter.format(c.getTime());
		String Query = "update book_loans set status=1, Date_in=\""+Date_in+"\" where isbn =\""+isbn+"\" and status=0;";
		QueryDAO dao=new QueryDAO();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Statement stmt = null;
		System.out.println(Query);
		try {
			Connection conn=dbconnection.getInstance().getConnection();
			stmt = conn.createStatement();
			stmt.executeUpdate(Query);
			dao.checkIn(isbn);
			out.println("<div class=\"alert alert-success\">book "+isbn+" checked in success!</div>");
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		//check in 
		//update book
		
	}

}
