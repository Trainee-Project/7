package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditScreenServlet
 */
@WebServlet("/EditScreenServlet")
public class EditScreenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditScreenServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get PrintWriter
		PrintWriter pw = response.getWriter();
		//set content type
		response.setContentType("text/html");
		
		//get the id
		//get the values
		int id = Integer.parseInt(request.getParameter("id"));
		//link the bootstrap
		pw.println("<link rel='stylesheet' href='css/bootstrap.css'></link>");
		//load the JDBC driver
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(Exception e) {
			e.printStackTrace();
		}
		//generate the connection
		try(Connection con = DriverManager.getConnection("jdbc:mysql:///usermgmt","root","root");
				PreparedStatement ps = con.prepareStatement(query);){
			//set value 
			ps.setInt(1, id);
			//resultSet
			ResultSet rs = ps.executeQuery();
			rs.next();
			pw.println("<div style='margin:auto;width:500px;margin-top:100px;'>");
			pw.println("<form action='edit?id="+id+"' method='post'>");
			pw.println("<table class='table table-hover table-striped'>");
			pw.println("<tr>");
			pw.println("<td>Name</td>");
			pw.println("<td><input type='text' name='name' value='"+rs.getString(1)+"'></td>");
			pw.println("</tr>");
			pw.println("<tr>");
			pw.println("<td>Email</td>");
			pw.println("<td><input type='email' name='email' value='"+rs.getString(2)+"'></td>");
			pw.println("</tr>");
			pw.println("<tr>");
			pw.println("<td>Mobile</td>");
			pw.println("<td><input type='text' name='mobile' value='"+rs.getString(3)+"'></td>");
			pw.println("</tr>");
			pw.println("<tr>");
			pw.println("<td>Country</td>");
			pw.println("<td><input type='text' name='city' value='"+rs.getString(5)+"'></td>");
			pw.println("</tr>");
			pw.println("<tr>");
			pw.println("<td><button type='submit' class='btn btn-outline-success'>Edit</button></td>");
			pw.println("<td><button type='reset' class='btn btn-outline-danger'>Cancel</button></td>");
			pw.println("</tr>");
			pw.println("</table>");
			pw.println("</form>");
		}catch(SQLException se) {
			pw.println("<h2 class='bg-danger text-light text-center'>"+se.getMessage()+"</h2>");
			se.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		pw.println("<a href='home.html'><button class='btn btn-outline-success'>Home</button></a>");
		pw.println("</div>");
		//close the stream
		pw.close();
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
