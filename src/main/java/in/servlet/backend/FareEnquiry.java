package in.servlet.backend;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.sql.*;

@WebServlet("/fare")
public class FareEnquiry extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String source = request.getParameter("src");
        String destination = request.getParameter("dest");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Train", "root", "123456");

            PreparedStatement ps = conn.prepareStatement("SELECT * FROM ADDTRAIN WHERE fstation=? AND tostation=?");
            ps.setString(1, source);
            ps.setString(2, destination);
            ResultSet rs = ps.executeQuery();

            out.println("<html>");
            out.println("<head>");
            out.println("<title>FARE ENQUIRY</title>");
            out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
            out.println("<style>");
            out.println(".highlight { font-size: 1.2em; background-color: #FFD700; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class=\"container\">");
            out.println("<h4 class=\"text-center\">FARE DETAILS</h4>");
            out.println("<table class=\"table\">");
            out.println("<thead class=\"thead-dark\">");
            out.println("<tr>");
            out.println("<th scope=\"col\">Train Number</th>");
            out.println("<th scope=\"col\">Train Name</th>");
            out.println("<th scope=\"col\">From Station</th>");
            out.println("<th scope=\"col\">To Station</th>");
            out.println("<th scope=\"col\">Available Seats</th>");
            out.println("<th scope=\"col\">Fare</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");

            if (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString("number") + "</td>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td>" + rs.getString("fstation") + "</td>");
                out.println("<td>" + rs.getString("tostation") + "</td>");
                out.println("<td>" + rs.getString("avail") + "</td>");
                out.println("<td class=\"highlight\"><b>" + rs.getString("paise") + "</b></td>");
                out.println("</tr>");
            } else {
                out.println("<tr><td colspan=\"6\" class=\"text-center\"><b>No train between these stations</b></td></tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
            out.println("<a href=\"UserHome.jsp\" class=\"btn btn-primary\">Go to User Home</a><br/><br/>");
            out.println("<a href=\"FareEnquiry.jsp\" class=\"btn btn-secondary\">Go to Fare Enquiry</a>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");

        } catch (Exception e) {
            response.setContentType("text/html");
            out.print("<h3 style='color:red'>" + e.getMessage() + "</h3>");

            RequestDispatcher rd = request.getRequestDispatcher("/FareEnquiry.jsp");
            rd.include(request, response);
        }
    }
}
