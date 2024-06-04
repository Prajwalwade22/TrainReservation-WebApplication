<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>

<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
  }

  h2 {
    margin-left: 600px;
    margin-top: 20px;
    color: #333;
    text-transform: uppercase;
  }

  h3 {
    margin-left: 50px;
    margin-top: 30px;
    color: #333;
  }

  table {
    margin: 0 auto;
    margin-top: 20px;
    border-collapse: collapse;
    width: 80%;
    max-width: 600px;
    background-color: #fff;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  }

  th, td {
    padding: 15px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  th {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #f5f5f5;
  }

  input[type="text"] {
    width: calc(100% - 20px);
    padding: 8px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }

  button {
    margin-left: -20px;
    margin-top: 20px;
    padding: 10px 20px;
    color: white;
    border: none;
    cursor: pointer;
    border-radius: 4px;
    text-transform: uppercase;
  }

  button a {
    text-decoration: none;
    color: white;
  }

  button:hover {
    background-color: #333;
  }

  a {
    display: inline-block;
    margin-left: 50px;
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #337ab7;
    color: white;
    text-decoration: none;
    border-radius: 4px;
    text-transform: uppercase;
  }

  a:hover {
    background-color: #286090;
  }
</style>


</head>
<body>
	<h2>Welcome: ${session_name}</h2>

	<h3>User Profile</h3>
	<button>
		<a href="editdetails.jsp">Edit user Details</a>
	</button>

	<table border="1">
		<th>Fields</th>
		<th>Description</th>
		<tbody style='color: black'>
			<tr>
				<td>User Name</td>
				<td><input type="text" value="${session_name}" name="text" /></td>
			</tr>
			<tr>
				<td>Email Id</td>
				<td><input type="text" value="${session_email}" name="text" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" value="${session_password}" name="text" /></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="text" value="${session_gender}" name="text" /></td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td><input type="text" value="${session_pno}" name="text" /></td>
			</tr>
			<tr>
				<td>City</td>
				<td><input type="text" value="${session_city}" name="text" /></td>
			</tr>
		</tbody>
	</table>

	<a href="UserHome.jsp">Go to User Home</a>
</body>
</html>
