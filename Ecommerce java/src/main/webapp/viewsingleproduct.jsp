<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
 <%@ page import="java.sql.*" %> 
 <%
 String a = request.getParameter("ids");
 String b = session.getAttribute("username").toString();
 %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
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

    .ab {
        color: white;
    }

    .ac {
        color: black;
    }

    .logo {
        border-radius: 50px;
        margin: 10px;
        height: 40px;
        width: 40px;
    }

    .ic {
        margin-right: 5px;
    }

    .to {
        margin-top: 8px;
    }

    .outer{
        display: grid;
        grid-template-columns: auto auto;
        gap: 20px;
        margin: 30px;
        background-color: black;
        color: white;
        padding: 50px;
        border-radius: 5px;
    }

    .inner{
        text-align: center;
        background-color: white;
        width: fit-content;
        height: fit-content;
        border-radius: 5px;
    }

    img{
        height: 200px;
        width: 200px;
    }

    input{
        width: 20px;
        margin-left: 10px;
        padding: 5px;
        border-radius: 5px;
    }

    input:focus{
        outline-style: none;
    }

    button{
        margin-top: 10px;
        margin-left: 10px;
        width: 200px;
        padding: 10px;
        border-radius: 5px;
        border-color: white;
        transition: 1s;
        background-color: black;
        color: white;
    }

    button:hover{
        background-color: white;
        color: black;
    }

    .size{
        display: flex;
        flex-direction: row;
        gap: 8px;
    }

    .siz{
        border: 0.5px solid black;
        border-radius: 50px;
        padding: 10px 13.5px 10px 13.5px;
        transition: 1s;
        background-color: white;
        color: black;
    }

    .siz:hover{
        background-color: black;
        color: white;
        cursor: pointer;
    }
    
    .ac{
        color: black;
    }
    
    .back{
       	margin: 30px;
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
	    <% if(b.equals("admin")){ %>
	        <div class="back">
	        <a href="viewproducts.jsp" class="ac"><i class="fa-solid fa-arrow-left ic"></i>Back</a>
	        </div>
	        <% }else { %>
	        <div class="back">
	        <a href="users.jsp" class="ac"><i class="fa-solid fa-arrow-left ic"></i>Back</a>
	        </div>
	        <%} %>
        <div class="outer">
            <div class="inner">
                <img src="./images/blank.png" alt="">
            </div>
            <%
            try {
            	Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommrce","root","Saro@1234");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from products where pid='"+a+"'");
        		if(rs.next()){
        			{%>
		            <div class="inner1">
			            <h3><%=rs.getString("pname")%></h3>
			            <h3><%=rs.getString("pdesc")%></h3>
			            <h3><%=rs.getString("price")%></h3>
		                Quantity <input type="text" name="qty" placeholder="0"> 
		                <br>
		                <div class="size">
		                    <h3 class="siz">S</h3>
		                    <h3 class="siz">M</h3>
		                    <h3 class="siz">L</h3>
		                    <h3 class="siz">Xl</h3>
		                </div>
		                <button>Add to cart</button>
		            </div>
        			<%}
        	   }
            }
            catch( Exception e){
            	out.println(e);
            }	   
            
            %>
        </div>
</body>

</html>