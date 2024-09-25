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
			margin-top: 100px;'         
        }

        input{
            padding: 10px 20px 10px 20px;
            margin: 5px;
            border-radius: 5px;
            animation: slide1 3s 1 ease-in;
        }
        
        button{
            cursor: pointer;
            padding: 10px;
            border-radius: 5px;
            margin-top: 19px;
            transition: 1s;
            width: 150px;
            margin-left: 50px;
            animation: slide1 4s 1 ease-in;
        }

        button:hover {
            transform: scale(0.8);
       }


        h1,h4 {
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
                transform: translateX(-800px);
            }
            100%{
                transform: translateX(0px);
            }
        }

        @keyframes slide1 {
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

        <form action="Login" method="post">
            <h1>Sign-In</h1>
            <label for="name"><i class="fa-regular fa-user"></i> UserName</label>
            <input type="text" name="name" required>
            <label for="password"><i class="fa-solid fa-key"></i> Password</label>
            <input type="password" name="password" required>
            <button type="submit">Sign In</button>
             <h4>Don't have an account ? <a href="register.jsp"> Sign-up </a></h4>
        </form>

</body>
</html>

 