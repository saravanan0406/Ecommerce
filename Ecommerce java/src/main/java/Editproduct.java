

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.*;
import java.sql.*;

/**
 * Servlet implementation class Editproduct
 */
public class Editproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter pw = response.getWriter();
		String eid = request.getParameter("eid");
		String ename = request.getParameter("ename");
		String eprice = request.getParameter("eprice");
		String estock = request.getParameter("estock");
		int row = 0;
		
		
		
		if(ename != null && eprice != null && estock != null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommrce","root","Saro@1234");
				Statement st = con.createStatement();
				row =st.executeUpdate("update products set pname='"+ename+"',price='"+eprice+"',pstock='"+estock+"' where pid='"+eid+"'");
				if(row>0) {
	                pw.println("<script>alert('Product Updated !!');</script>");
	                response.sendRedirect("viewproducts.jsp");
				}
				else {
	                pw.println("<script>alert('Product not Updated !!');</script>");
	                response.sendRedirect("viewproducts.jsp");
				}
				
			}
			catch(Exception e) {
				pw.println(e);
			}
		}
	}			
	}

