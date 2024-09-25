

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class Create
 */
public class Create extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		PrintWriter pw = response.getWriter();
		            
		if( name!=null && email!=null && mobile!=null && password!=null){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommrce","root","Saro@1234");
			Statement st=con.createStatement();
			st.executeUpdate("insert into userdetails values('"+name+"','"+email+"','"+mobile+"','"+password+"')");
			pw.println("<script>alert('Account created successfully');</script>");
			response.sendRedirect("login.jsp");
		}
		catch(Exception e){
			pw.println(e);
		}
		}
	}

}
