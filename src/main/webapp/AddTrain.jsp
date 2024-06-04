<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>E-Trains - Add New Train</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        header {
            background-color: #4CAF50;
            padding: 20px;
            text-align: center;
            color: white;
        }
        .container {
            display: flex;
            max-width: 800px;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .menu {
            flex: 1;
            background-color: #f2f2f2;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .menu a {
            display: block;
            text-decoration: none;
            color: black;
            padding: 10px 0;
        }
        .menu a:hover {
            background-color: #ddd;
        }
        .form-container {
            flex: 2;
            padding: 20px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }
        .form-container input[type=text], .form-container input[type=submit] {
            width: calc(100% - 170px);
            padding: 10px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-container input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        .form-container input[type=submit]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<header>
    <h1 class="hd">ADD TRAINS</h1>
</header>

<div class="container">
    <div class="menu">
        <a href="AdminHome.jsp">Home</a>
        <a href="ViewTrainsAdmin.jsp">View Trains</a>
        <a href="SearchTrainAdmin.jsp">Search Train</a>
        <a href="AddTrain.jsp">Add Train</a>
        <a href="UpdateSchedule.jsp">Update Schedule</a>
        <a href="AdminLogin.jsp">LogOut</a>
    </div>
    <form action="adminaddtrain" method="post" class="form-container">
        <h2 class="head">Add New Train</h2>
        <label for="tno">Train No:</label>
        <input type="text" id="tno" name="trainno" placeholder="Enter Train no" maxlength="5" required><br>

        <label for="tname">Train Name:</label>
        <input type="text" id="tname" name="trainname" placeholder="Enter Train Name" required><br>

        <label for="fstation">From Station:</label>
        <input type="text" id="fstation" name="fromstation" placeholder="Enter Source Station" required><br>

        <label for="dtime">Departure Time:</label>
        <input type="text" id="dtime" name="dtime" placeholder="Enter Departure Time" required><br>

        <label for="tostation">To Station:</label>
        <input type="text" id="tostation" name="tostation" placeholder="Enter destination Station" required><br>

        <label for="Atime">Arrival Time:</label>
        <input type="text" id="Atime" name="Atime" placeholder="Enter Arrival Time" required><br>

        <label for="avail">Available:</label>
        <input type="text" id="avail" name="available" placeholder="Enter Available Seats" required><br>

        <label for="fare">Fare:</label>
        <input type="text" id="fare" name="ticketfare" placeholder="Enter Fare"required><br>

        <input type="submit" value="ADD TRAIN">
    </form>
</div>
</body>
</html>
