<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap"
        rel="stylesheet">
    <script src="https://kit.fontawesome.com/b1e072721a.js" crossorigin="anonymous"></script>
    <style>
        body {

            font-family: "Inter", sans-serif;
            font-optical-sizing: auto;
            font-weight: 900;
            font-style: italic;
            color: white;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 5px;
            width: fit-content;
            border: 1px solid black;
            padding: 20px 50px 20px 50px;
            margin: auto;
            border-radius: 5px;
            background-color: black;
            margin-top: 100px;
        }

        input {
            padding: 10px 20px 10px 20px;
            margin: 5px;
            border-radius: 5px;
            animation: slide1 3s 1 ease-in;
        }

        button {
            cursor: pointer;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
            transition: 1s;
            width: 150px;
            margin-left: 35px;
            animation: slide1 4s 1 ease-in;
        }

        button:hover {
            transform: scale(0.8);
        }

        h4 {
            text-align: center;
        }

        input:focus {
            outline-style: none;
        }
    </style>
</head>

<body>
    <form action="Updatepassword" method="post">
        <h2>Change Password</h2>
        <label for="currentpassword"><i class="fa-solid fa-key"></i> Current-password</label>
        <input type="text" name="currentpassword">
        <label for="newpassword"><i class="fa-solid fa-lock"></i> New-password</label>
        <input type="text" name="newpassword">
        <button type="submit">Update Password</button>
    </form>
</body>

</html>