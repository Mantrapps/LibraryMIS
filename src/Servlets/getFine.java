package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.dbconnection;

/**
 * Servlet implementation class getFine
 */
@WebServlet("/getFine")
public class getFine extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public getFine() {
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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		String opt = req.getParameter("option");
		String cardid = req.getParameter("cardid");
		String Query = "select BOOK_LOANS.card_id,BORROWER.bname,sum(Fine_amt) as total from Fines left join BOOK_LOANS on Fines.Loan_id= BOOK_LOANS.Loan_id left join BORROWER on BOOK_LOANS.card_id=BORROWER.card_id where 1=1";
		String Query2="select Fines.id,BOOK_LOANS.Isbn,BOOK.title,Fine_amt from Fines left join BOOK_LOANS on Fines.Loan_id= BOOK_LOANS.Loan_id left join BOOK on BOOK_LOANS.Isbn= BOOK.Isbn where paid=false ";
		if (cardid != null && cardid != "") {
			Query += " and Card_id like \"%" + cardid + "%\"";
			Query2 += " and Card_id like \"%" + cardid + "%\"";
		}
		if (opt.equals("Unpaid")) {
			Query += " and paid=false";
		}
		else
		{
			Query+= " and paid=true";
		}
		Query+=" group by BOOK_LOANS.Card_id";
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		Statement stmt = null;
		System.out.println(Query);
		try {
			Connection conn = dbconnection.getInstance().getConnection();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(Query);

			out.println("<table class=\"table table-bordered table-hover table-striped\">");
			out.println(
					"<thead><tr><th>cardNo</th><th>Borrower Name</th><th>Fine Amount</th></tr></thead>");
			out.println("<tbody>");
			
			while (rs.next()) {
				out.print(
						// "<option value='1'>1</option>"
						"<tr><td>" + rs.getString("card_id") + "</td>");
				out.print(
						// "<option value='1'>1</option>"
						"<td>" + rs.getString("bname") + "</td>");
				out.print(
						// "<option value='1'>1</option>"
						"<td>" + rs.getString("total") + "</td>");

			}
			out.println("</tbody>");
			out.println("</table>");
			if(opt.equals("Unpaid"))
			{
				//Fines.id,BOOK_LOANS.Isbn,BOOK.title,Fine_amt
				rs = stmt.executeQuery(Query2);
				out.println("<label>Select fine to pay</label>");
				out.println("<select id=\"sel\" class=\"selectpicker\">");
				/**
				 * <select class="form-control"> <option>1</option>
				 * <option>2</option> </select>
				 */
				while (rs.next()) {
					out.println("<option value=\""+rs.getString("id")+"\">" + rs.getString("title")+" ("+rs.getString("Isbn")+") Fine Amount:"+ rs.getString("Fine_amt")+ "</option>");
				}
				out.println("</select>");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
