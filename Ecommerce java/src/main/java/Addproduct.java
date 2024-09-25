

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.*;
import java.sql.*;


/**
 * Servlet implementation class Addproduct
 */
public class Addproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter pw = response.getWriter();
		String pname = request.getParameter("pname");
		String pprice = request.getParameter("pprice");
		String pdesc = request.getParameter("pdesc");
		String pcategory = request.getParameter("pcategory");
		String pstock = request.getParameter("pstock");
		
		if(pname != null && pprice != null && pcategory != null && pstock != null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommrce","root","Saro@1234");
				Statement st = con.createStatement();
				st.executeUpdate("insert into products values('"+pname+"','"+pprice+"', '"+pcategory+"','"+pstock+"', '"+pdesc+"')");
			        pw.println("<script>alert('Product added successfully');</script>");
			        response.sendRedirect("addproduct.jsp");
			}
			catch(Exception e) {
				pw.println(e);
			}
		}
	}

}
