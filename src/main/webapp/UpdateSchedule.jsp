<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Train Schedule</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<style>
    body {
        background-color: #f8f9fa;
    }
    .container {
        margin-top: 50px;
    }
    .form-label {
        background-color: #007bff;
        color: #fff;
        padding: 8px 12px;
        border-radius: 5px;
    }
    .btn-primary {
        background-color: #28a745; /* Green color for the submit button */
        border-color: #28a745;
    }
    .btn-primary:hover {
        background-color: #218838; /* Darker green color on hover */
        border-color: #1e7e34;
    }
</style>
</head>
<body>

<div class="container">
    <h2 class="text-center mb-4">Update Train Schedule</h2>
    <form action="UpdateScheduleForm" method="post">

        <div class="form-group">
            <label for="trainNo" class="form-label">Train No:</label>
            <input type="text" class="form-control" id="trainNo" name="no" placeholder="Enter Train Number" required>
        </div>

        <div class="form-group">
            <label for="trainName" class="form-label">Train Name:</label>
            <input type="text" class="form-control" id="trainName" name="name" placeholder="Enter Train Name" required>
        </div>

        <div class="form-group">
            <label for="fromStation" class="form-label">From Station:</label>
            <input type="text" class="form-control" id="fromStation" name="src" placeholder="Enter Source Station" required>
        </div>

        <div class="form-group">
            <label for="departureTime" class="form-label">Departure Time:</label>
            <input type="text" class="form-control" id="departureTime" name="dtime" placeholder="Enter Departure Time" required>
        </div>

        <div class="form-group">
            <label for="toStation" class="form-label">To Station:</label>
            <input type="text" class="form-control" id="toStation" name="dest" placeholder="Enter Destination Station" required>
        </div>

        <div class="form-group">
            <label for="arrivalTime" class="form-label">Arrival Time:</label>
            <input type="text" class="form-control" id="arrivalTime" name="atime" placeholder="Enter Arrival Time" required>
        </div>

        <div class="form-group">
            <label for="availability" class="form-label">Availability:</label>
            <input type="text" class="form-control" id="availability" name="seats" placeholder="Enter Available Seats" required>
        </div>

        <div class="form-group">
            <label for="fare" class="form-label">Fare:</label>
            <input type="tel" class="form-control" id="fare" name="fare" placeholder="Enter Fare" required>
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>

    </form>
</div>

</body>
</html>
