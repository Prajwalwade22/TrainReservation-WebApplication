<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>E-Trains</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <style>
        body {
            background-color: #3E4958;
            color: #fff;
        }

        .navbar {
            background-color: #343A40;
        }

        .navbar-brand {
            color: #fff;
            font-size: 1.5rem;
        }

        .navbar-nav .nav-link {
            color: #fff;
            font-size: 1.2rem;
            padding: 10px 20px;
        }

        .navbar-nav .nav-link:hover {
            color: #f8f9fa;
        }

        .header {
            padding: 30px;
            text-align: center;
        }

        .menu {
            font-size: 20px;
        }

        .menu a {
            color: #fff;
        }

        .menu a:hover {
            color: #f8f9fa;
            text-decoration: none;
        }

        .logo img {
            max-width: 200px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">E-Trains</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="AdminHome.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewTrainsAdmin.jsp">View Trains</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="SearchTrainAdmin.jsp">Search Train</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AddTrain.jsp">Add Train</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="UpdateSchedule.jsp">Update Schedule</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="UserDetails.jsp">User Login Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdminLogin.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="header">
        <div class="container">
            <h1 class="hd">Ticket Booking For Train</h1>
            <p class="lead">Hello Admin, good to see you here. Here you can check train details, schedules, fare enquiries, and more. Just explore the side menu links. Thank you for being connected with us!</p>
        
        <div class="logo">
    <img src="https://source.unsplash.com/800x400/?train" alt="E-Trains Logo" style="max-width: 250%; height: auto;">
</div>
        
           
        </div>
    </div>
    <!-- Bootstrap JS and jQuery (Optional) -->
    <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-EbO/P5eWyb5Tl/QQqcwAj5J46s8SxD0XlsFP/rzKORso25yf0CkGdjxevAfqtVlt" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-Z2Fap/Z5V5OCldy3GmDEf4ko8q0qk6Qcv/Y7JPIc9aJTIcV6aXjI2o+T2EW+Lma" crossorigin="anonymous"></script> -->
</body>
</html>
