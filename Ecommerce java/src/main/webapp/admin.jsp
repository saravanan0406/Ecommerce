<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
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

        .option{
            display: grid;
            grid-template-columns: 30% 30% 30%;
            row-gap: 50px;
            margin: 10px;
        }
        
        .options{
            margin-left: 200px;
            margin-top: 20px;
        }

        .opt{
            height: 100px;
            width: 100px;
        }

    </style>
</head>

<body>
    <nav>
    <img src="./images/logo.png" class="logo" alt="">
        <ul>
            <li class="to"><a href="login.jsp" class="ab" ><i class="fa-solid fa-right-from-bracket ic"></i> Log-out</a></li>
            <li class="to"><a href="profile.jsp" class="ab" ><i class="fa-solid fa-user ic"></i> Profile</a></li>
        </ul>
    </nav>
        <div class="option">	
            <div class="options">
                <img src="./images/add.png" class="opt" alt="">
                 <h3><a href="addproduct.jsp" class="ac">Add-Product</a></h3>
            </div>
            <div class="options">
                <img src="./images/edit.png" class="opt" alt="">
                 <h3><a href="editproduct.jsp" class="ac">Edit-Product</a></h3>
            </div>
            <div class="options">
                <img src="./images/delete.png" class="opt" alt="">
                 <h3><a href="#" class="ac">Delete-Product</a></h3>
            </div>
            <div class="options">
                <img src="./images/view.png" class="opt" alt="">
                 <h3><a href="viewproducts.jsp" class="ac">View-Products</a></h3>
            </div>
            <div class="options">
                <img src="./images/details.png" class="opt" alt="">
                 <h3><a href="userdetails.jsp" class="ac">User-Details</a></h3>
            </div>
            <div class="options">
                <img src="./images/password.png" class="opt" alt="">
                 <h3><a href="updatepassword.jsp" class="ac">Update-Password</a></h3>
            </div>
        </div>
</body>

</html>

 