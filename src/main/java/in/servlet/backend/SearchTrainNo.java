package in.servlet.backend;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.annotation.*;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/SearchTrain")
public class SearchTrainNo extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String trainno = request.getParameter("tno");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Train", "root", "123456");

            PreparedStatement ps = con.prepareStatement("select * from addtrain where number=?");
            ps.setString(1, trainno);

            ResultSet rs = ps.executeQuery();

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset='UTF-8'>");
            out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
            out.println("<title>Search Train</title>");
            out.println("<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' rel='stylesheet'>");
            out.println("</head>");
            out.println("<body>");

            out.println("<div class='container mt-5'>");
            out.println("<div class='row justify-content-center'>");
            out.println("<div class='col-md-8'>");

            out.println("<div class='card'>");
            out.println("<div class='card-header'>");
            out.println("<h2 class='text-center'>Train Details</h2>");
            out.println("</div>");
            out.println("<div class='card-body'>");
            out.println("<div class='table-responsive'>");
            out.println("<table class='table table-bordered'>");
            out.println("<thead class='thead-dark'>");
            out.println("<tr>");
            out.println("<th>Train Number</th>");
            out.println("<th>Train Name</th>");
            out.println("<th>From Station</th>");
            out.println("<th>Departure Time</th>");
            out.println("<th>To Station</th>");
            out.println("<th>Arrival Time</th>");
            out.println("<th>Available Seats</th>");
            out.println("<th>Fare</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");

            if (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString("number") + "</td>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td>" + rs.getString("fstation") + "</td>");
                out.println("<td>" + rs.getString("Dtime") + "</td>");
                out.println("<td>" + rs.getString("tostation") + "</td>");
                out.println("<td>" + rs.getString("Atime") + "</td>");
                out.println("<td>" + rs.getString("avail") + "</td>");
                out.println("<td>" + rs.getString("paise") + "</td>");
                out.println("</tr>");
            } else {
                out.println("<tr>");
                out.println("<td colspan='8' class='text-center text-danger'>INVALID TRAIN NUMBER</td>");
                out.println("</tr>");
            }

            out.println("</tbody>");
            out.println("</table>");
            out.println("</div>");
            out.println("</div>");
            out.println("</div>");

            out.println("<div class='row justify-content-center mt-3'>");
            out.println("<div class='col-md-6 text-center'>");
            out.println("<a href='UserHome.jsp' class='btn btn-primary'>Go to UserHome Page</a>");
            out.println("</div>");
            out.println("</div>");

            out.println("</div>");
            out.println("</div>");

            out.println("</body>");
            out.println("</html>");

        } catch (Exception e) {
            e.printStackTrace();

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset='UTF-8'>");
            out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
            out.println("<title>Error</title>");
            out.println("<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' rel='stylesheet'>");
            out.println("</head>");
            out.println("<body>");

            out.println("<div class='container mt-5'>");
            out.println("<div class='row justify-content-center'>");
            out.println("<div class='col-md-8'>");

            out.println("<div class='alert alert-danger' role='alert'>");
            out.println(e.getMessage());
            out.println("</div>");

            out.println("</div>");
            out.println("</div>");
            out.println("</div>");

            out.println("</body>");
            out.println("</html>");
        }
    }
}
