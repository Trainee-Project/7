package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
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
		//link the bootstrap
		pw.println("<link rel='stylesheet' href='css/bootstrap.css'></link>");
		//get the values
		int id = Integer.parseInt(request.getParameter("id"));
		//load the JDBC driver
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(Exception e) {
			e.printStackTrace();
		}
		//generate the connection
		try(Connection con = DriverManager.getConnection("jdbc:mysql:///usermgmt","root","root");
				PreparedStatement ps = con.prepareStatement(query);){
			//set the values
			ps.setInt(1, id);
			//execute the query
			int count = ps.executeUpdate();
			pw.println("<div class='card' style='margin:auto;width:300px;margin-top:100px'>");
			if(count==1) {
				pw.println("<h2 class='bg-danger text-light text-center'>Record Deleted Successfully</h2>");
			}else {
				pw.println("<h2 class='bg-danger text-light text-center'>Record Not Deleted</h2>");
			}
		}catch(SQLException se) {
			pw.println("<h2 class='bg-danger text-light text-center'>"+se.getMessage()+"</h2>");
			se.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		pw.println("<a href='home.html'><button class='btn btn-outline-success'>Home</button></a>");
		pw.println("&nbsp; &nbsp;");
		pw.println("<a href='showdata'><button class='btn btn-outline-success'>Show User</button></a>");
		pw.println("</div>");
		//close the stram
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
