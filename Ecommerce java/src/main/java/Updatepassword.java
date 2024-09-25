

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class Updatepassword
 */
public class Updatepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter pw = response.getWriter();
		String cpassword = request.getParameter("currentpassword");
		String npassword = request.getParameter("newpassword");
		
		if(cpassword != null && npassword != null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
		        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommrce","root","Saro@1234");
				Statement st = con.createStatement();
				st.executeUpdate("update userdetails set password='"+npassword+"' where username like '%admin%' and password='"+cpassword+"' ");
				pw.println("<script>alert('Password Updated !')</script>;");
				response.sendRedirect("admin.jsp");
			}
			catch( Exception e) {
				pw.println(e);
			}
		}
	}

}
