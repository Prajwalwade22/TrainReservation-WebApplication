<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Trains</title>

<link rel="stylesheet" href="UserHome.css">
</head>
<body>
	<header>
		<h1 class="hd">SEARCH THE TRAIN</h1>
		<div class="home">
			<p class="menu">
				<a href="AdminHome.jsp">Home</a>
			</p>
		</div>

		<div>
			<div class="home">
				<p class="menu">
					<a href="userviewtrainfwd">View Trains</a>
				</p>
			</div>
			<div class="home">
				<p class="menu">
					<a href="AdminSearchTrain.jsp">Search Train</a>
				</p>
			</div>
			<div class="home">
				<p class="menu">
					<a href="AddTrain.jsp">Add Train</a>
				</p>
			</div>
			<div class="home">
				<p class="menu">
					<a href="fareenqfwd">Update Schedule</a>
				</p>
			</div>
			<div class="home">
				<p class="menu">
					<a href="AdminLogin.jsp">LogOut</a>
				</p>
			</div>
		</div>

		<div class='tab'>
			<p class='menu'>Hey, Admin ! Welcome to our Website</p>
		</div>
		<div class="main">
			<p class="menu">Search Trains</p>
		</div>
		<form action="adminsearchtrain" class="tab red" method="post">
			<br /> TrainNumber: <input type="text" name="trainnumber"><br />
			<br /> <input type="submit" value=" SEARCH TRAIN "><br />
		</form>
		<br />
</body>
</html>