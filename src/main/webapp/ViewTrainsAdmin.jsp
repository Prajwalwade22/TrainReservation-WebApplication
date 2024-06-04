<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VIEW ALL TRAINS</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "Train";
String userId = "root";
String password = "123456";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

	<div class="container mt-5">
		<h2 class="text-center text-primary mb-4"><strong>VIEW TRAINS</strong></h2>
		<table class="table table-bordered table-hover">
			<thead class="thead-dark">
				<tr>
					<th>Number</th>
					<th>Name</th>
					<th>Fstation</th>
					<th>Departure Time</th>
					<th>ToStation</th>
					<th>Arrival Time</th>
					<th>Avail</th>
					<th>Fare</th>
				</tr>
			</thead>
			<tbody>
				<%
				try {
				connection = DriverManager.getConnection(
				connectionUrl + dbName, userId, password);
				statement = connection.createStatement();
				String sql = "SELECT * FROM addtrain";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) 
				{
				%>
				<tr>
					<td><%=resultSet.getString("number")%></td>
					<td><%=resultSet.getString("name")%></td>
					<td><%=resultSet.getString("fstation")%></td>
					<td><%=resultSet.getString("Dtime")%></td>
					<td><%=resultSet.getString("tostation")%></td>
					<td><%=resultSet.getString("Atime")%></td>
					<td><%=resultSet.getString("avail")%></td>
					<td><%=resultSet.getString("paise")%></td>
				</tr>
				<%
				}

				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</tbody>
		</table>
		<div class="text-center mt-4">
			<a href="AdminHome.jsp" class="btn btn-primary">GO TO ADMIN HOME PAGE</a>
		</div>
	</div>



</body>
</html>
