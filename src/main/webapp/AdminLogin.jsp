<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login page</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

    .container {
        position: relative;
        width: 100%;
        height: 100vh;
        background: url('https://images.unsplash.com/photo-1525879000488-bff75aadd1e5') no-repeat center center;
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-form {
        background: rgba(255, 255, 255, 0.7);
        padding: 30px;
        border-radius: 10px;
        text-align: center;
    }

    .login-form input[type="text"],
    .login-form input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        box-sizing: border-box;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .login-form button {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .login-form button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="container">
    <form class="login-form" action="AdminLoginform" method="post">
        <h3>Login For Admin</h3>
        <label for="username">Admin Username</label>
        <input type="text" placeholder="Email or Phone" name="email1" required>
        <label for="password">Admin Password</label>
        <input type="password" placeholder="Password" name="pass01" required>
        <button>Log In</button>
        <br><br>
        <a href="Welcome.html">GO TO WELCOME PAGE</a>
    </form>
</div>

</body>
</html>
