package in.servlet.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/BETWEENSTATIONS")
public class Betweenstations extends HttpServlet 
{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        String fsource = request.getParameter("source");
        String todestination = request.getParameter("destination");
        
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Train", "root", "123456");
            
            PreparedStatement ps = con.prepareStatement("select * from addtrain where fstation=? and tostation=?");
            ps.setString(1, fsource);
            ps.setString(2, todestination);
            
            ResultSet rs = ps.executeQuery();
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset='UTF-8'>");
            out.println("<title>TRAINS BETWEEN STATIONS</title>");
            out.println("<!-- Bootstrap CSS -->");
            out.println("<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' rel='stylesheet'>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='container mt-5'>");
            out.println("<h4 class='text-center text-primary mb-4'><b>SOURCE TO DESTINATION (AVAILABLE TRAINS)</b></h4>");
            out.println("<table class='table table-bordered table-hover'>");
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
            
            // Displaying records
            while (rs.next())
            {
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
            }
            out.println("</tbody>");
            out.println("</table>");
            out.println("<div class='text-center mt-4'>");
            out.println("<a href='UserHome.jsp' class='btn btn-secondary'>GO TO USERHOME PAGE</a>");
            out.println("</div>");
            out.println("</div>");
            
            out.println("<!-- Bootstrap JS, Popper.js, and jQuery -->");
            out.println("<script src='https://code.jquery.com/jquery-3.5.1.slim.min.js'></script>");
            out.println("<script src='https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js'></script>");
            out.println("<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js'></script>");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
            response.setContentType("text/html");
            out.print("<h3 style='color:red'>" + e.getMessage() + "</h3>");
            
            RequestDispatcher rd = request.getRequestDispatcher("/UserBetweenStations.jsp");
            rd.include(request, response);
        }
    }
}
