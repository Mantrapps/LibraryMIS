package Servlets;
import DAO.QueryDAO;
import DAO.dbconnection;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class checkIn
 */
@WebServlet("/checkIn")
public class checkIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkIn() {
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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String isbn=req.getParameter("isbn");
    	String cardid=req.getParameter("cardid");
    	String bname=req.getParameter("bname");
    	String Query = "select BOOK_LOANS.isbn,book.title,BOOK_LOANS.Date_out,BOOK_LOANS.Card_id, BORROWER.Bname from BOOK_LOANS left join BORROWER ON  BOOK_LOANS.Card_id=BORROWER.Card_id left join book on BOOK_LOANS.isbn=book.isbn where 1=1";
    	if(isbn!=null && isbn!="")
    	{
    		Query+=" and isbn like \"%"+isbn+"%\"";
    	}
    	if(cardid!=null && cardid!="")
    	{
    		Query+=" and Card_id like \"%"+cardid+"%\"";
    	}
    	if(bname!=null && bname!="")
    	{
    		Query+=" and bname like \"%"+bname+"%\"";
    	}
    	Query+=" and BOOK_LOANS.Status=false";
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		Statement stmt = null;
		System.out.println(Query);
		try {
			Connection conn=dbconnection.getInstance().getConnection();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(Query);
			
			out.println("<table class=\"table table-bordered table-hover table-striped\">");
			out.println("<thead><tr><th>ISBN</th><th>Book Title</th><th>Data Out</th><th>Borrower Name</th></tr></thead>");
			out.println("<tbody>");
			List<String> res=new ArrayList();
			while(rs.next())
			{
				res.add(rs.getString("isbn"));
				out.print(
						//"<option value='1'>1</option>"
								"<tr><td>"+rs.getString("isbn")+"</td>"
						);
				out.print(
						//"<option value='1'>1</option>"
								"<td>"+rs.getString("title")+"</td>"
						);	
				out.print(
						//"<option value='1'>1</option>"
								"<td>"+rs.getString("Date_out")+"</td>"
						);
				
				out.print(
						//"<option value='1'>1</option>"
						"<td>"+rs.getString("Bname")+"</td>"
						);
				
			}
			out.println("</tbody>");
			out.println("</table>");
			out.println("<label>Select book to return</label>");
			out.println("<select id=\"sel\" class=\"form-control\">");
			/**
			 * <select class="form-control">
			 * <option>1</option>
			 * <option>2</option>
			 * </select>
			 */
			
			for(String i:res)
			{
				out.println("<option>"+i+"</option>");
			}
			out.println("</select>");
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

}
