<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
    body {
        background-color: #080710;
        font-family: 'Poppins', sans-serif;
        overflow: hidden;
    }

    .container {
        position: relative;
        width: 100%;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .bg-img {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        z-index: -1;
    }

    form {
        width: 400px;
        max-width: 80%;
        background-color: rgba(255, 255, 255, 0.13);
        border-radius: 10px;
        backdrop-filter: blur(10px);
        border: 2px solid rgba(255, 255, 255, 0.1);
        box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
        padding: 50px 35px;
    }

    form * {
        color: #ffffff;
        letter-spacing: 0.5px;
        outline: none;
        border: none;
        margin-top: 8px;
    }

    form h3 {
        font-size: 32px;
        font-weight: 500;
        line-height: 42px;
        text-align: center;
        color: rgb(255, 0, 128);
    }

    label {
        font-size: 16px;
        font-weight: 500;
    }

    input {
        height: 50px;
        width: 100%;
        background-color: rgba(255, 255, 255, 0.07);
        border-radius: 3px;
        padding: 0 10px;
        margin-top: 8px;
        font-size: 14px;
        font-weight: 300;
        color: #ffffff;
    }

    ::placeholder {
        color: #e5e5e5;
    }

    button {
        margin-top: 30px;
        width: 100%;
        background-color: #ffffff;
        color: #080710;
        padding: 12px;
        font-size: 18px;
        font-weight: 600;
        border-radius: 5px;
        cursor: pointer;
    }

    .signup-link {
        display: block;
        text-align: center;
        margin-top: 20px;
        color: #ffffff;
        text-decoration: none;
    }

    .forgot-password {
        display: block;
        text-align: center;
        margin-top: 10px;
        color: #ffffff;
        text-decoration: none;
    }
</style>
</head>
<body>

    <img class="bg-img"
        src="https://t3.ftcdn.net/jpg/06/28/46/86/240_F_628468662_h4vFGgwvvuULETwju8vCrv7DiPCj2unB.jpg"
        alt="Background image">

    <div class="container">
        <form action="Loginform" method="post">
            <h3>Login Here</h3>

            <div class="form-group">
                <label for="username">Username</label> 
                <input type="text" class="form-control" placeholder="Email or Phone" name="email" required> 
            </div>

            <div class="form-group">
                <label for="password">Password</label> 
                <input type="password" class="form-control" placeholder="Password" name="pass1" required>
            </div>

            <button type="submit" class="btn btn-primary">Log In</button>
            <a href="register.jsp" class="signup-link">Sign Up</a>
            <a href="Welcome.html" class="signup-link">Go to Welcome Page</a>
            <a href="Forget.html" class="forgot-password">Forgot Password?</a>
        </form>
    </div>

</body>
</html>
