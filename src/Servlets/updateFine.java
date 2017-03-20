package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
 * Servlet implementation class updateFine
 */
@WebServlet("/updateFine")
public class updateFine extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public updateFine() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Statement stmt = null;
		// insert new fines
		String query1 = "INSERT INTO FINES (Loan_id) select Loan_id from BOOK_LOANS where current_date()>Due_date and status=false and Loan_id not in (select Loan_id from Fines);";
		// insert other fines only for test purpose
		String query5= "INSERT INTO FINES (Loan_id) select Loan_id from BOOK_LOANS where Date_in>Due_date and Loan_id not in (select Loan_id from Fines);";
		// update unpaid fines if not return
		String query2 = "update Fines left join BOOK_LOANS on Fines.Loan_id=BOOK_Loans.Loan_id set Fine_amt= 0.25*datediff(current_date(),BOOK_Loans.Due_date)  where paid=false and BOOK_LOANS.status=false";
		// update unpaid fines if return only for accurate purpose
		String query4="update Fines left join BOOK_LOANS on Fines.Loan_id=BOOK_Loans.Loan_id set Fine_amt= 0.25*datediff(BOOK_Loans.Date_in,BOOK_Loans.Due_date)  where paid=false and BOOK_LOANS.status=true;";
		// show everyone's unpaid fine amount
		String query3 = "select BOOK_LOANS.card_id,BORROWER.bname,sum(Fine_amt) as total from Fines left join BOOK_LOANS on Fines.Loan_id= BOOK_LOANS.Loan_id left join BORROWER on BOOK_LOANS.card_id=BORROWER.card_id where paid=false group by BOOK_LOANS.Card_id;";

		try {
			Connection conn=dbconnection.getInstance().getConnection();
			stmt = conn.createStatement();
			stmt.executeUpdate(query1);
			stmt.executeUpdate(query2);
			stmt.executeUpdate(query4);
			stmt.executeUpdate(query5);
			ResultSet rs = stmt.executeQuery(query3);
			out.println("<table class=\"table table-bordered table-hover table-striped\">");
			out.println("<thead><tr><th>CardID</th><th>Borrower Name</th><th>Not Paid Fine Amount</th></tr></thead>");
			out.println("<tbody>");
			while(rs.next())
			{

				out.print(
						//"<option value='1'>1</option>"
								"<tr><td>"+rs.getString("card_id")+"</td>"
						);
				out.print(
						//"<option value='1'>1</option>"
								"<td>"+rs.getString("bname")+"</td>"
						);	
				out.print(
						//"<option value='1'>1</option>"
								"<td>"+rs.getString("total")+"</td>"
						);
				
			}
			out.println("</tbody>");
			out.println("</table>");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
