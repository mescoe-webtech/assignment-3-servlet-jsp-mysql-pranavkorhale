

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 String fname = request.getParameter("FIRST NAME");
		 String lname = request.getParameter("LAST NAME");
		 String email = request.getParameter("EMAIL");
		 String password = request.getParameter("PASSWORD");
		 String dob = request.getParameter("BOD");
		 String address = request.getParameter("ADDRESS");
		 String gender = request.getParameter("GENDER");
		 String city = request.getParameter("CITY");
		 String pincode = request.getParameter("PINCODE");
		 String country = request.getParameter("COUNTRY");
		 String mobno = request.getParameter("MOBILE NO");
		 String boe = request.getParameter("BOE");
		 String tenb = request.getParameter("10th");
		 String tenp = request.getParameter("10per");
		 String teny = request.getParameter("10yr");
		 String twb = request.getParameter("12b");
		 String twp = request.getParameter("12per");
		 String twy = request.getParameter("12yr");
		 String gb = request.getParameter("graduation");
		 String gp = request.getParameter("gper");
		 String gy = request.getParameter("gyr");
		 try
		 {
			 Class.forName("com.mysql.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","pranav@123");
				PreparedStatement ps = con.prepareStatement("insert into student values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, fname);
				ps.setString(2, lname);
				ps.setString(3, email);
				ps.setString(4, password);
				ps.setString(5, dob);
				ps.setString(6, address);
				ps.setString(7, gender);
				ps.setString(8, city);
				ps.setString(9, pincode);
				ps.setString(10, country);
				ps.setString(11, mobno);
				ps.setString(12, boe);
				ps.setString(13, tenb);
				ps.setString(14, tenp);
				ps.setString(15, teny);
				ps.setString(16, twb);
				ps.setString(17, twp);
				ps.setString(18, twy);
				ps.setString(19, gb);
				ps.setString(20, gp);
				ps.setString(21, gy);
				
				int i = ps.executeUpdate();
				if(i>0)
				{
					out.println("you are  register sucessfully..");
				}
				else
				{
					out.prinln("Error..");
				}
				
				
		 }
		 catch(Exception ee)
		 {
			 ee.printStackTrace();
		 }
	 }

}
