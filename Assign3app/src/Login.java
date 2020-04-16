

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		 String email = request.getParameter("EMAIL");
		 String password = request.getParameter("PASSWORD");
		 Boolean flag = false;
		 
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","pranav@123");
				PreparedStatement ps = con.prepareStatement("select * form student where email=? and password=?");
				ps.setString(1, email);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				flag = rs.next();
				if(flag==true)
				{
					HttpSession session = request.getSession();
					session.setAttribute("eml", email);
					RequestDispatcher rds = request.getRequestDispatcher("home.jsp");
					rds.forward(request, response);
				}
				else
				{
					out.print("Email or Password is wrong");
					RequestDispatcher rds = request.getRequestDispatcher("home.jsp");
					rds.include(request, response);
				}
			 
		 }
		 catch(Exception ee)
		 {
			 ee.printStackTrace();
		 }
	}

}
