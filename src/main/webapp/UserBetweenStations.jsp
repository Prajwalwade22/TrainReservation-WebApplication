<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRAINS BETWEEN STATIONS</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<h2 class="text-center text-primary mb-4">TRAINS BETWEEN STATIONS</h2>
		<form action="BETWEENSTATIONS" method="post" class="w-50 mx-auto">
			<div class="form-group">
				<label for="source">FROM STATION</label>
				<input type="text" class="form-control" id="source" placeholder="From Station" name="source" required>
			</div>
			<div class="form-group">
				<label for="destination">TO STATION</label>
				<input type="text" class="form-control" id="destination" placeholder="To Destination" name="destination" required>
			</div>
			<button type="submit" class="btn btn-primary btn-block">Submit</button>
			<div class="text-center mt-4">
				<a href="UserHome.jsp" class="btn btn-secondary">GO TO USERHOME PAGE</a>
			</div>
		</form>
	</div>
<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
