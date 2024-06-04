<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fare Enquiry</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS for additional creativity -->
<style>
    body {
        background-color: #f8f9fa;
    }
    .container {
        margin-top: 100px;
    }
    .form-group label {
        font-weight: bold;
    }
    .form-control {
        border-radius: 0.5rem;
    }
    .btn-custom {
        background-color: #007bff;
        color: white;
        border-radius: 0.5rem;
    }
    .btn-custom:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-body">
				<h2 class="text-center text-primary mb-4">Fare Enquiry</h2>
				<form action="fare" method="post">
					<div class="form-group">
						<label for="src">Enter Source Station</label>
						<input type="text" class="form-control" id="src" name="src" placeholder="Source Station" required>
					</div>
					<div class="form-group">
						<label for="dest">Enter Destination Station</label>
						<input type="text" class="form-control" id="dest" name="dest" placeholder="Destination Station" required>
					</div>
					<button type="submit" class="btn btn-custom btn-block">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
