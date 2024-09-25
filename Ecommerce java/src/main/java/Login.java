

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		PrintWriter pw = response.getWriter();
		
		if(name!=null && password!=null) {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommrce","root","Saro@1234");
	        Statement st=con.createStatement();
	        ResultSet rs=st.executeQuery("select * from userdetails where username='"+name+"' and password='"+password+"'");

	        if(rs.next())
	        {
	        	if(name.equals("admin") && password.equals(rs.getString("password"))) {
		        	HttpSession session=request.getSession();
		        	session.setAttribute("username", name);
		        	response.sendRedirect("admin.jsp");
	        	}
	        	else {
		        	HttpSession session=request.getSession();
		        	session.setAttribute("username", name);
		        	response.sendRedirect("users.jsp");
	        	}
	        }
	        else
	        {
	        	pw.println("<script>alert('username or password is wrong !');</script>");
	        }
		    }
		    catch(Exception e)
		    {
			pw.println(e);
		    }
	}
	}

}
