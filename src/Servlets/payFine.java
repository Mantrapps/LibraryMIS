package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.QueryDAO;
import DAO.dbconnection;

/**
 * Servlet implementation class payFine
 */
@WebServlet("/payFine")
public class payFine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payFine() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		//check if return first
		String query1 = "select BOOK_LOANS.status from FINES left join BOOK_LOANS on FINES.loan_id=BOOK_LOANS.Loan_id left join BOOK on BOOK_LOANS.isbn=BOOK.isbn where FINES.id=\"" + id + "\"";
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			QueryDAO dao=new QueryDAO();
			if(!dao.queryReturn(query1))
			{
				//book checked out
				out.print("<div  class=\"alert alert-danger\">book not return yet!</div>");
			}
			else
			{
				//update to paid
				String query="update FINES set paid=true where id=\"" + id + "\"";
				Connection conn = dbconnection.getInstance().getConnection();
				Statement stmt = null;
				stmt = conn.createStatement();
				System.out.println(query);
				int count=stmt.executeUpdate(query);
				if(count>0)
				{
					out.println("<div class=\"alert alert-success\">fine paid success!</div>");
				}
				else
				{
					out.println("<div class=\"alert alert-danger\">errror!</div>");
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
