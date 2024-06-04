<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update details</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    .container {
        margin-top: 50px;
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
    }

    h3 {
        text-align: center;
        margin-bottom: 30px;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Welcome: ${session_name}</h2>

    <h3>EDITING DETAILS</h3>
    <form action="editdetails" method="post">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <table class="table table-bordered">

                    <thead class="thead-dark">
                    <tr>
                        <th>Fields</th>
                        <th>Description</th>
                    </tr>
                    </thead>

                    <tbody style='color: black'>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" class="form-control" name="text1" required /></td>
                    </tr>

                    <!-- <tr>
                        <td>Email Id</td>
                        <td><input type="text" class="form-control" name="text2"/> </td>
                    </tr> -->

                    <tr>
                        <td>Password</td>
                        <td><input type="password" class="form-control" name="text3" required /></td>
                    </tr>

                    <tr>
                        <td>Gender</td>
                        <td>
                            <select class="form-control" name="text4" required>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>Phone No</td>
                        <td><input type="tel" class="form-control" name="text5" maxlength="10" required/></td>
                    </tr>

                    <tr>
                        <td>City</td>
                        <td><input type="text" class="form-control" name="text6" required /></td>
                    </tr>
                    </tbody>
                </table>
                <div class="text-center">
                    <input class="btn btn-primary" type="submit" value="EDIT" />
                    <br>
                    <br>
                    <a href="UserHome.jsp" class="btn btn-link">Go to User Home</a>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
