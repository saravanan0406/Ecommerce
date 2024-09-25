<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-commerce</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b1e072721a.js" crossorigin="anonymous"></script>
    
<style>
	   body{
            font-family: "Inter", sans-serif;
            font-optical-sizing: auto;
            font-weight: 900;
            font-style: italic;
            color: white;
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
            animation: slide 2s 1 ease-in;
        }

        input{
            padding: 10px 20px 10px 20px;
            margin: 5px;
            border-radius: 5px;
            animation: slide1 2s 1 ease-in;
        }

        button {
            margin: 10px;
            padding: 10px;
            width: 100px;
            border-radius: 7px;
            margin-left: 80px;
            transition: 1s;
            animation: slide2 2s 1 ease-in;
        }

        button:hover {
            transform: scale(0.8);
        }


        h1, h4 {
            text-align: center;
        }
        
		a{
            text-decoration: none;
            color: white;
		}

        input:focus {
            outline-style: none;
        }
        

        @keyframes slide {
            0%{
                transform: translateX(200px);
            }
            100%{
                transform: translateX(0px);
            }
        }

        @keyframes slide1 {
            0%{
                transform: translatey(1000px);
            }
            100%{
                transform: translatey(0px);
            }
        }
        
        @keyframes slide2 {
            0%{
                transform: translatey(-800px);
            }
            100%{
                transform: translatey(0px);
            }
        }
        
    </style>
</head>

<body>

        <form action="Create" method="post">
            <h1>Sign-Up</h1>
            <label for="name"><i class="fa-regular fa-user ic"></i> Name</label>
            <input type="text" name="name" class="inp" required>
            <label for="email"><i class="fa-solid fa-envelope ic"></i> Email</label>
            <input type="email" name="email" class="inp"required>
            <label for="mobile"><i class="fa-solid fa-phone ic"></i> Mobile</label>
            <input type="text" name="mobile" class="inp2" required>
            <label for="password"><i class="fa-solid fa-key ic"></i> Password</label>
            <input type="password" name="password" required>
            <button type="submit">Sign-up</button>
            <h4>Already have an account ? <a href="login.jsp"> Sign-in</a></h4>
        </form>

</body>
</html>

 