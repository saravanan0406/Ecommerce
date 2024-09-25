<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add product</title>
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
        
        .ac{
            color: black;
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
        <div class="back">
            <a href="admin.jsp" class="ac"><i class="fa-solid fa-arrow-left"></i>  Back</a>
        </div>
        <form action="Addproduct" method="post">
            <h2>Add-Product</h2>
            <label for="pname">Product-Name</label>
            <input type="text" name="pname" required>
            <label for="pprice">Product-price</label>
            <input type="text" name="pprice" required>
            <label for="pdesc">Product-Desceiption</label>
            <input type="text" name="pdesc" required>            
            <label for="pcategory">Category</label>
            <select name="pcategory">
                <option value="--">-- select --</option>
                <option value="Mobiles">Mobile</option>
                <option value="Electronics">Electronics</option>
                <option value="HomeAppliances">HomeAppliances</option>
            </select>
            <label for="pstock">Product-Stock</label>
            <input type="text" name="pstock">
            <button type="submit">Add</button>
        </form>
</body>
</html>