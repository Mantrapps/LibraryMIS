package Servlets;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.dbconnection;
import DAO.QueryDAO;

/**
 * Servlet implementation class checkOut
 */
@WebServlet("/checkOut")
public class checkOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkOut() {
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
		String isbn = request.getParameter("isbn");
		String cardid = request.getParameter("id");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//check if book exist
		String Query1 = "select title from Library.Book where isbn = \"" + isbn + "\"";
		//check if book checked out
		String Query2 = "select Status from Library.Book where isbn = \"" + isbn + "\"";
		//check if id exist
		String Query3 = "select bname from Library.BORROWER where Card_id = \"" + cardid + "\"";
		//check if exceed 3 max
		String Query4 = "select count(*) as checked from Library.BOOK_LOANS where Card_id = \"" + cardid + "\" and Status=0;";
		
		try {
			QueryDAO dao=new QueryDAO();
			if(!dao.queryE(Query1))
			{
				//book not exist
				out.print("<div  class=\"alert alert-danger\">book not exist!</div>");
			}
			else if(!dao.queryReturn(Query2))
			{
				//book checked out
				out.print("<div  class=\"alert alert-danger\">book checked out!</div>");
			}
			else if(!dao.queryE(Query3))
			{
				//user not exist
				out.print("<div class=\"alert alert-danger\">user not exist!</div>");
			}
			else if(!dao.queryMax(Query4))
			{
				//already 3 books
				out.print("<div class=\"alert alert-danger\">this user already has 3 books not return!</div>");
			}
			else
			{
				//insert to book_loans
				/**
				 * INSERT INTO `Library`.`BOOK_LOANS` 
				 * (`Loan_id`, `Isbn`, `Card_id`, `Date_out`, `Due_date`, `Date_in`,`Return`)
				 * VALUES
				 * (<{Loan_id: }>,<{Isbn: }>,<{Card_id: }>,<{Date_out: }>,<{Due_date: }>,<{Date_in: }>,<{status: 0}>);

				 */
				String query="insert into BOOK_LOANS (Isbn, Card_id, Date_out, Due_date) values (?,?,?,?)";
				Connection conn = dbconnection.getInstance().getConnection();
				PreparedStatement stmt = conn.prepareStatement(query);
				stmt.setString(1, isbn);
				stmt.setString(2, cardid);
				DateFormat outputFormatter = new SimpleDateFormat("yyyy-MM-dd");
				//Date dt=new Date();
				//String Due_date=outputFormatter.format(dt.getTime());
				Calendar c= Calendar.getInstance();
				String Date_out=outputFormatter.format(c.getTime());
				c.add(Calendar.DATE, 14); // Adding 14 days
				String Due_date = outputFormatter.format(c.getTime());
				stmt.setString(3, Date_out);
				stmt.setString(4, Due_date);
				System.out.println(query);
				int count = stmt.executeUpdate();
				if(count>0)
				{
					dao.checkout(isbn);
					out.println("<div class=\"alert alert-success\">book checked out success!</div>");
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
