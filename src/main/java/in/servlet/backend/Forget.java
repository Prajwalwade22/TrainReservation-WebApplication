package in.servlet.backend;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

@WebServlet("/forget")
public class Forget extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("fg1");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Train","root","123456");
			
			PreparedStatement ps=conn.prepareStatement("select password from register where email=?");
			ps.setString(1,username);
			ResultSet rs=ps.executeQuery();
			 
		  if(rs.next())
		  {
			  out.print("<h1>"+"THE PASSWORD OF YOUR ACCOUNT IS:"+rs.getString("password")+"</h1>");
			  out.print("<a href=Login.jsp>GO TO LOGIN PAGE</a>");
		  }
		  else
			{
				response.setContentType("text/html");
				out.print("<h3 style='color:red'>EMAIL IS NOT REGISTERD</h3>");
				
				RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
				rd.include(request, response);
			}
		
		}
		catch(Exception e)
		{
			out.print("<h1>"+e.getMessage()+"</h1>");
		}
		
	}
}
