<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New User Register</title>
    <style>
        body {
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        
        #form {
            background-color: rgba(255, 255, 255, 0.7);
            width: 50%;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.2);
        }
        
        #form label {
            font-weight: bold;
        }
        
        #form input[type="text"],
        #form input[type="password"],
        #form input[type="tel"],
        #form select {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        #form input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        #form input[type="submit"]:hover {
            background-color: #45a049;
        }
        
        #form a {
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }
        
        #form a:hover {
            color: #45a049;
        }

        #password-strength {
            width: 100%;
            height: 10px;
            margin-top: 5px;
            border-radius: 4px;
        }

        #strength-bar {
            height: 100%;
            border-radius: 4px;
            transition: width 0.3s;
        }

        #strength-text {
            margin-top: 5px;
            font-weight: bold;
        }
    </style>
    <script>
        function validateForm() {
            var name = document.getElementById("yName").value;
            var password = document.getElementById("yPass").value;
            var email = document.getElementById("eMail").value;
            var gender = document.querySelector('input[name="gender1"]:checked');
            var phone = document.getElementById("pno1").value;
            var city = document.getElementById("city").value;

            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            var phonePattern = /^[0-9]{10}$/;
            var passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

            if (name == "") {
                alert("Name must be filled out");
                return false;
            }
            if (password == "") {
                alert("Password must be filled out");
                return false;
            }
            if (!passwordPattern.test(password)) {
                alert("Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, one number, and one special character");
                return false;
            }
            if (email == "") {
                alert("Email must be filled out");
                return false;
            }
            if (!emailPattern.test(email)) {
                alert("Invalid email format");
                return false;
            }
            if (gender == null) {
                alert("Gender must be selected");
                return false;
            }
            if (phone == "") {
                alert("Phone number must be filled out");
                return false;
            }
            if (!phonePattern.test(phone)) {
                alert("Invalid phone number format. It should be 10 digits");
                return false;
            }
            if (city == "") {
                alert("City must be selected");
                return false;
            }
            return true;
        }

        function updatePasswordStrength() {
            var password = document.getElementById("yPass").value;
            var strengthBar = document.getElementById("strength-bar");
            var strengthText = document.getElementById("strength-text");
            var strength = 0;

            if (password.length >= 8) strength += 1;
            if (/[A-Z]/.test(password)) strength += 1;
            if (/[a-z]/.test(password)) strength += 1;
            if (/[0-9]/.test(password)) strength += 1;
            if (/[@$!%*?&]/.test(password)) strength += 1;

            switch (strength) {
                case 0:
                    strengthBar.style.width = "0%";
                    strengthBar.style.backgroundColor = "";
                    strengthText.textContent = "";
                    break;
                case 1:
                    strengthBar.style.width = "20%";
                    strengthBar.style.backgroundColor = "red";
                    strengthText.textContent = "Very Weak";
                    break;
                case 2:
                    strengthBar.style.width = "40%";
                    strengthBar.style.backgroundColor = "orange";
                    strengthText.textContent = "Weak";
                    break;
                case 3:
                    strengthBar.style.width = "60%";
                    strengthBar.style.backgroundColor = "yellow";
                    strengthText.textContent = "Medium";
                    break;
                case 4:
                    strengthBar.style.width = "80%";
                    strengthBar.style.backgroundColor = "blue";
                    strengthText.textContent = "Strong";
                    break;
                case 5:
                    strengthBar.style.width = "100%";
                    strengthBar.style.backgroundColor = "green";
                    strengthText.textContent = "Very Strong";
                    break;
            }
        }
    </script>
</head>
<body>
    <div>
        <form action="RegisterationForm" id="form" method="post" onsubmit="return validateForm()">
            <label for="yName">Name:</label>
            <input type="text" id="yName" name="name1" placeholder="Enter Your Name" /><br><br>
            <label for="yPass">Password:</label>
            <input type="password" id="yPass" name="password" placeholder="Create Your Password" oninput="updatePasswordStrength()" /><br>
            <div id="password-strength">
                <div id="strength-bar"></div>
            </div>
            <div id="strength-text"></div><br>
            <label for="eMail">E-Mail:</label>
            <input type="text" id="eMail" name="emailid" placeholder="Enter Your E-mail" /><br><br>
            <label for="gender">Gender:</label>
            <input type="radio" name="gender1" value="Male" /><b>Male</b>
            <input type="radio" name="gender1" value="FeMale"><b>Female</b><br><br>
            <label for="pno1">Phone Number:</label>
            <input type="tel" id="pno1" name="pno1" maxlength="10"><br><br>
            <label for="city">City:</label>
            <select name="city1" id="city">
                <option value="">Select City</option>
                <option>Mumbai</option>
                <option>Jaipur</option>
                <option>Pune</option>
                <option>Punjab</option>
                <option>Delhi</option>
                <option>Bangalore</option>
            </select><br><br>
            <input type="submit" value="Register" /><br><br>
            <a href="Login.jsp">Go To Login Page</a>
        </form>
    </div>
</body>
</html>
