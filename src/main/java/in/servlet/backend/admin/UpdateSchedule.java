package in.servlet.backend.admin;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.annotation.*;


@WebServlet("/UpdateScehduleForm")
public class UpdateSchedule extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
	PrintWriter out=response.getWriter();
		
	String number=request.getParameter("no");	
	String name=request.getParameter("name");
	String fstation=request.getParameter("src");
	String Dtime=request.getParameter("dtime");
	String tostation=request.getParameter("dest");
	String Atime=request.getParameter("atime");
	String avail=request.getParameter("seats");
	String paise=request.getParameter("fare");
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Train","root","123456");
		
		PreparedStatement ps=con.prepareStatement("Update addTrain set name=?,fstation=?,Dtime=?,tostation=?,Atime=?,avail=?,paise=? where number=?");
		
		ps.setString(1,name);
		ps.setString(2,fstation);
		ps.setString(3, Dtime);
		ps.setString(4, tostation);
		ps.setString(5, Atime);
		ps.setString(6, avail);
		ps.setString(7, paise);
		ps.setString(8, number);
		
	int count=ps.executeUpdate();
	if(count>0)
	{
	response.setContentType("text/html");
	out.print("<h3 style='color:green'>USER UPDATED SUCCESSFULLY</h3>");
	RequestDispatcher rd=request.getRequestDispatcher("/AdminHome.jsp");
	rd.include(request, response);
	}
	else
	{
		response.setContentType("text/html");
		out.print("<h3 style='color:red'>USER NOT Updated SUCCESSFULLY</h3>");
		RequestDispatcher rd=request.getRequestDispatcher("/AdminHome.jsp");
		rd.include(request, response);
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		
		response.setContentType("text/html");
		out.print("<h3 style='color:red'>Exception Occured:"+e.getMessage()+"</h3>");
		RequestDispatcher rd=request.getRequestDispatcher("/AdminHome.jsp");
		rd.include(request, response);
	}
	
	}

}
