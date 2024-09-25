<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Detailsx</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
   <script src="https://kit.fontawesome.com/b1e072721a.js" crossorigin="anonymous"></script>
</head>
<style>
body {
            margin: 25px;
            font-family: "Inter", sans-serif;
            font-optical-sizing: auto;
            font-weight: 900;
            font-style: italic;
        }

        nav {
            background-color: black;
            padding: 10px;
            margin: 20px;
            border-radius: 10px;
        }

        ul {
            display: flex;
            flex-direction: row;
            gap: 40px;
            margin-top: -50px;
            margin-right: 15px;
            justify-content: end;
        }

        li {
            font-size: 20px;
            list-style: none;
        }

        a {
            text-decoration: none;
        }

        .ab{
            color: white;
        }

        .ac{
            color: black;
        }

        .logo {
            border-radius: 50px;
            margin: 10px;
            height: 40px;
            width: 40px;
        }

        .ic{
            margin-right: 5px;
        }

        .to{
            margin-top: 8px;
        }
        
        .sen {
            display: flex;
            justify-content: center;
        }

        table {
            text-align: left;
            border-collapse: collapse;
            background-color: black;
            color: white;
            width: 50%;
        }

        th,
        td {
            padding: 15px;
            margin: 10px;
        }
        
        .back{
        	margin: 30px;
        }
        
        .ac{
            color: black;
        }
        
</style>
<body>
    <nav>
    <img src="./images/logo.png" class="logo" alt="">
        <ul>
            <li class="to"><a href="login.jsp" class="ab" ><i class="fa-solid fa-right-from-bracket ic"></i> Log-out</a></li>
            <li class="to"><a href="profile.jsp" class="ab" ><i class="fa-solid fa-user ic"></i> Profile</a></li>
        </ul>
    </nav>
        <div class="back">
            <a href="admin.jsp" class="ac"><i class="fa-solid fa-arrow-left"></i>  Back</a>
        </div>
    <div class="sen">
        <table border="1%">
            <tr>
                <th>Name</th>
                <th>Mobile</th>
                <th>Email</th>
            </tr>
            
                <%
    			try {
   				 	Class.forName("com.mysql.jdbc.Driver");
 			        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommrce","root","Saro@1234");
       			    Statement st=con.createStatement();
        			ResultSet rs=st.executeQuery("select * from userdetails where username not like '%admin%'");
					while(rs.next()){
					{%>
					<tr>
						<td><%=rs.getString("username") %></td>
						<td><%=rs.getString("mobile") %></td>
						<td><%=rs.getString("emailid") %></td>
					</tr>
					<%}
	   				}
    			}
    			catch( Exception e){
    				    out.println(e);
    			}	   
    			%>
            
        </table>
    </div>   
</body>
</html>