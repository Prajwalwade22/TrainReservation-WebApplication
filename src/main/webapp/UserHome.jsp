<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>E-Trains</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg, #2980b9, #6dd5fa);
            animation: gradientAnimation 10s ease infinite alternate;
        }

        @keyframes gradientAnimation {
            0% { background: linear-gradient(120deg, #2980b9, #6dd5fa); }
            50% { background: linear-gradient(120deg, #6dd5fa, #2980b9); }
            100% { background: linear-gradient(120deg, #2980b9, #6dd5fa); }
        }

        .header {
            text-align: center;
            padding: 20px;
            color: #fff;
        }

        .hd {
            font-size: 40px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .head {
            font-size: 18px;
            margin-bottom: 30px;
        }

        .menu-container {
            text-align: center;
            margin-top: 50px;
        }

        .menu-item {
            display: inline-block;
            margin: 10px;
            padding: 20px;
            border: 2px solid transparent;
            border-radius: 20px;
            background-color: #fff;
            color: #2980b9;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            transform-style: preserve-3d;
        }

        .menu-item:hover {
            background-color: #2980b9;
            color: #fff;
            border-color: #fff;
            transform: translateY(-5px) rotateX(20deg) rotateY(10deg);
        }

        .menu-item:active {
            transform: scale(0.95);
        }

        .menu-item:last-child {
            margin-right: 0;
        }

        .menu-item img {
            vertical-align: middle;
            margin-right: 5px;
        }

        .menu-item span {
            vertical-align: middle;
            position: relative;
            z-index: 1;
        }

        .menu-item::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background-color: rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            transition: all 0.5s;
            z-index: 0;
            transform: translate(-50%, -50%) scale(0);
        }

        .menu-item:hover::before {
            transform: translate(-50%, -50%) scale(1);
        }

        .general-info {
            text-align: center;
            margin-top: 50px;
            padding: 0 20px;
            color: #fff;
        }

        .general-info h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .general-info p {
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<header class="header">
    <h1 class="hd">Ticket Booking For Train</h1>
    <h3 class="head">Hello: ${session_name}! Good to see you here. Here you can check the train details, train schedule, fare enquiry, and many more information. Just go to the side menu links and explore the advantages. Thanks for being connected with us!</h3>
</header>

<div class="menu-container">
    <a href="UserHome.jsp" class="menu-item"><img src="https://img.icons8.com/material-outlined/24/home.png" alt="Home Icon"><span>Home</span></a>
    <a href="UserTrainProfile.jsp" class="menu-item"><img src="https://img.icons8.com/material-outlined/24/train.png" alt="Train Icon"><span>View Trains</span></a>
    <a href="UserBetweenStations.jsp" class="menu-item"><img src="https://img.icons8.com/material-outlined/24/train-station.png" alt="Stations Icon"><span>Trains Between Stations</span></a>
    <a href="bookingdetails" class="menu-item"><img src="https://img.icons8.com/material-outlined/24/clock.png" alt="History Icon"><span>Ticket Booking History</span></a>
    <a href="FareEnquiry.jsp" class="menu-item"><img src="https://img.icons8.com/material-outlined/24/ticket.png" alt="Fare Icon"><span>Fare Enquiry</span></a>
    <a href="SeatTrain.html" class="menu-item"><img src="https://img.icons8.com/material-outlined/24/empty-bed.png" alt="Seat Icon"><span>Seat Availability</span></a>
    <a href="SearchTrain.jsp" class="menu-item"><img src="https://img.icons8.com/material-outlined/24/search.png" alt="Search Icon"><span>Search By TrainNo</span></a>
    <a href="UserProfile.jsp" class="menu-item"><img src="https://img.icons8.com/material-outlined/24/user.png" alt="Profile Icon"><span>Profile</span></a>
    <a href="Login.jsp" class="menu-item"><img src="https://img.icons8.com/material-outlined/24/logout-rounded.png" alt="Logout Icon"><span>Logout</span></a>
</div>

<!-- General Train Information -->
<div class="general-info">
    <h2>General Train Information</h2>
    <p>
        A train is a form of rail transport consisting of a series of connected vehicles that generally run along a rail track to transport cargo or passengers. The word "train" comes from the Old French trahiner, derived from the Latin trahere, meaning "to pull" or "to draw".
    </p>
    <p>
        Trains have been a popular mode of transport since the 19th century and play a crucial role in transportation worldwide. They are known for their efficiency, safety, and environmental friendliness.
    </p>
    <p>
        Trains come in various types, including passenger trains, freight trains, high-speed trains. They offer a comfortable and convenient way to travel long distances, and they are an integral part of many countries' transportation networks.
    </p>
</div>
</body>
</html>
