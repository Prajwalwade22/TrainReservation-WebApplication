<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Train</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
	<div class="row justify-content-center">
		<div class="col-md-6">
			<div class="card">
				<div class="card-header">
					<h2 class="text-center">Search Train</h2>
				</div>
				<div class="card-body">
					<form action="SearchTrain" method="post">
						<div class="form-group">
							<label for="tno">Train Number</label>
							<input type="text" class="form-control" id="tno" name="tno" placeholder="Enter Train Number" required>
						</div>
						<button type="submit" class="btn btn-primary btn-block">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="row justify-content-center mt-3">
		<div class="col-md-6 text-center">
			<a href="UserHome.jsp" class="btn btn-link">Go to UserHome Page</a>
		</div>
	</div>
</div>



</body>
</html>
