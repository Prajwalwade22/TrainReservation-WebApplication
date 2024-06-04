package in.servlet.backend.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ST1")
public class SeatTrain extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
{
	
	String trainno=request.getParameter("tno");
	PrintWriter out=response.getWriter();
	
	try
	{

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Train","root","123456");
		
		PreparedStatement ps=conn.prepareStatement("SELECT * FROM ADDTRAIN WHERE number=?");
		ps.setString(1,trainno);
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
		response.setContentType("text/html");
		out.print("<h3 style='color:green'>TRAIN IS AVAILABLE</h3><br>");
		out.print("<h3 style='color:green'> TRAIN NUMBER:"+rs.getString("number")+"</h3>");
		out.print("<h3 style='color:green'> TRAIN NAME:"+rs.getString("name")+"</h3>");
		out.print("<h3 style='color:green'> FROM STATION:"+rs.getString("fstation")+"</h3>");
		out.print("<h3 style='color:green'> TO STATION:"+rs.getString("tostation")+"</h3>");
		out.print("<h3 style='color:green'> FARE:"+rs.getString("paise")+"</h3>");
		RequestDispatcher rd=request.getRequestDispatcher("/index.html");
		rd.include(request, response);
		}
		else
        {
       	 response.setContentType("text/html");
				out.print("<h3 style='color:red'>Invalid Train Number</h3>");
				
				RequestDispatcher rd=request.getRequestDispatcher("/SeatTrain.html");
				rd.include(request, response);
        }
			

	}
	catch(Exception e)
	{
		e.printStackTrace();
		
		response.setContentType("text/html");
		out.print("<h3 style='color:red'>Exception Occured:"+e.getMessage()+"</h3>");
		RequestDispatcher rd=request.getRequestDispatcher("/SeatTrain.html");
		rd.include(request, response);
	}
	
}
}
