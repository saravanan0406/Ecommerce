<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
        String a=session.getAttribute("username").toString();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= a%> Profile </title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b1e072721a.js" crossorigin="anonymous"></script>
</head>
 <style>
 
 	    body{
            font-family: "Inter", sans-serif;
            font-optical-sizing: auto;
            font-weight: 900;
            font-style: italic;
        }
        
        .outerlayer {
            background-color: black;
            color: white;
            margin: 30px;
            border-radius: 5px;
            height: 200px;
        }


        img{
            border-radius: 50%;
            width: 200px;
            height: 200px;
            position: absolute;
            top: 22%;
            left: 43%;
        }


        .innerlayer2{
            background-color: black;
            color: white;
            margin-top: -25px;
            margin-left: 150px;
            margin-right: 150px;
            border-radius: 25px;
            text-align: center;
            height: 200px;      
          }

        h2{
            position: absolute;
            top: 53%;
            left: 40%;
        }
        
        .ic{
            color: white;
            margin: 10px;
        }

        a{
            text-decoration: none;
            color: white;
        }
    </style>
</head>

<body>
    <div class="outerlayer">
    <% if(a.equals("admin")){ %>
        <div class="back">
        <a href="admin.jsp"><i class="fa-solid fa-arrow-left ic"></i>Back</a>
        </div>
        <% }else { %>
        <div class="back">
        <a href="users.jsp"><i class="fa-solid fa-arrow-left ic"></i>Back</a>
        </div>
        <%} %>
    </div>
    <div class="innerlayer">
        <img src="./images/profile.png" alt="">
    </div>
    <div class="innerlayer2">
        <h2>Welcome ! <%=a%></h2>
    </div>
</body>

</html>