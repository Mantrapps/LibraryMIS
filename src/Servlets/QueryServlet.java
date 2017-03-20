package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.*;
import DTO.*;

/**
 * 
 * @author Kaiz
 * Query Servlet implementation
 */
@WebServlet("/QueryServlet")
public class QueryServlet extends HttpServlet{
	/*
	private QueryDAO queryDAO;
	@Override
    public void init() {
		queryDAO = new QueryDAO();
    }
    */
	public QueryServlet(){
		super();
	}
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);
    	/*
    	List<Book> books = queryDAO.query();
		request.setAttribute("books", books); // Will be available as ${products} in JSP
		request.getRequestDispatcher("/Query.jsp").forward(request, response);
		*/
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	String isbn=req.getParameter("isbn");
    	String title=req.getParameter("title");
    	String author=req.getParameter("author");
    	String Query = "select * from book where 1=1";
    	if(isbn!=null && isbn!="")
    	{
    		Query+=" and isbn like \"%"+isbn+"%\"";
    	}
    	if(title!=null && title!="")
    	{
    		Query+=" and title like \"%"+title+"%\"";
    	}
    	if(author!=null && author!="")
    	{
    		Query+=" and authors like \"%"+author+"%\"";
    	}
    	Query+=" limit 10";
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		Statement stmt = null;
		System.out.println(Query);
		try {
			Connection conn=dbconnection.getInstance().getConnection();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(Query);
			out.println("<table class=\"table table-bordered table-hover table-striped\">");
			out.println("<thead><tr><th>ISBN</th><th>Book Title</th><th>Book Authors</th><th>Book Availability</th></tr></thead>");
			out.println("<tbody>");
			
			while(rs.next())
			{

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
								"<td>"+rs.getString("authors")+"</td>"
						);
				String status;
				status=rs.getBoolean("status")==true?"Available":"Not Available";
				out.print(
						//"<option value='1'>1</option>"
						
								"<td>"+status+"</td></tr>"
						);
				
			}
			out.println("</tbody>");
			out.println("</table>");
			
			
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

}
