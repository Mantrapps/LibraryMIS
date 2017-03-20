package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.dbconnection;

/**
 * Servlet implementation class AddBorrowerServlet
 */
@WebServlet("/AddBorrowerServlet")
public class AddBorrowerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddBorrowerServlet() {
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
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String bname = fname + " " + lname;
		String ssn = request.getParameter("ssn");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String Query = "insert into borrower (Ssn,Bname,Address,Phone,Fname,Lname,Email,City,State) values (?,?,?,?,?,?,?,?,?)";

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println(Query);
		try {
			Connection conn = dbconnection.getInstance().getConnection();
			PreparedStatement stmt = conn.prepareStatement(Query);
			stmt.setString(1, ssn);
			stmt.setString(2, bname);
			stmt.setString(3, address);
			stmt.setString(4, phone);
			stmt.setString(5, fname);
			stmt.setString(6, lname);
			stmt.setString(7, email);
			stmt.setString(8, city);
			stmt.setString(9, state);
			System.out.println(Query);
			int count = stmt.executeUpdate();
			if (count > 0) {
				String verify = "select Card_id from BORROWER where ssn=\"" + ssn + "\"";
				System.out.println(verify);
				ResultSet rs = stmt.executeQuery(verify);
				if (rs.next())
					out.print(rs.getString("Card_id"));
				else
					out.print("false");
			} else {
				out.print("false");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
