<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <% 
    String a = request.getParameter("id");
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit-Product</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b1e072721a.js" crossorigin="anonymous"></script>
    <style>
         body {
            margin: 25px;
            font-family: "Inter", sans-serif;
            font-optical-sizing: auto;
            font-weight: 900;
            font-style: italic;
        }


        form{
            display: flex;
            flex-direction: column;
            gap: 5px;
            width: fit-content;
            border: 1px solid black;
            padding: 20px 50px 20px 50px;
            margin: auto;
            border-radius: 5px;
            background-color: black;
            color: white;
        }

        input, select{
            padding: 10px 20px 10px 20px;
            margin: 5px;
            border-radius: 5px;
        }

        button{
            cursor: pointer;
            padding: 10px;
            border-radius: 5px;
            margin: 5px;
            transition: 1s;
        }

        button:hover{
            transform: scalex(0.6);
        }

        input:focus{
            outline-style: none;
        }
        
        select:focus{
        outline-style: none;
        }

        h2{
            text-align: center;
        }
        
        .back{
        	margin: 30px
        }
        
        a{
        	text-decoration: none;
        }
        .ac{
            color: black;
        }
        
    </style>
</head>
<body>
        <div class="back">
            <a href="viewproducts.jsp" class="ac"><i class="fa-solid fa-arrow-left"></i>  Back</a>
        </div>
        <%
		    try {
		    	Class.forName("com.mysql.jdbc.Driver");
		        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommrce","root","Saro@1234");
		        Statement st=con.createStatement();
		        System.out.println(a);
		        ResultSet rs=st.executeQuery("select * from products where pid='"+a+"'");
				if(rs.next()){
					{%>
				        <form action="Editproduct" method="post">
				            <h2>Edit-Product</h2>
		            		<input type="hidden" name="eid" readonly value=<%= rs.getString("pid") %>>				            
            				<label for="ename">Product-Name</label>
		            		<input type="text" name="ename" required value=<%= rs.getString("pname") %>>
		            		<label for="eprice">Product-price</label>
		            		<input type="text" name="eprice" required value=<%= rs.getString("price") %>>        
		            		<label for="estock">Product-Stock</label>
		            		<input type="text" name="estock" required value=<%= rs.getString("pstock") %>>
		            		<button type="submit">Update</button>
                       </form>
					<%}
			   }
		    }
		    catch( Exception e){
		    	out.println(e);
		    }	   
		    %>
                

              

</body>
</html>