package in.servlet.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterationForm")
public class Register extends HttpServlet
{
  public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
  {
	  PrintWriter out=response.getWriter();
	  
	String name = request.getParameter("name1");
	String email = request.getParameter("emailid");
	String password = request.getParameter("password");
	String gender = request.getParameter("gender1");
	String pno=request.getParameter("pno1");
	String city=request.getParameter("city1");
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Train","root","123456");
		
		PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,password);
		ps.setString(4,gender);
		ps.setString(5,pno);
		ps.setString(6,city);
		
	int count=ps.executeUpdate();
	if(count>0)
	{
	response.setContentType("text/html");
	out.print("<h3 style='color:green'>USER REGISTERED SUCCESSFULLY</h3>");
	RequestDispatcher rd=request.getRequestDispatcher("/register.jsp");
	rd.include(request, response);
	}
	else
	{
		response.setContentType("text/html");
		out.print("<h3 style='color:red'>USER NOT REGISTERED SUCCESSFULLY</h3>");
		RequestDispatcher rd=request.getRequestDispatcher("/register.jsp");
		rd.include(request, response);
	}
		
	}catch(Exception e)
	{
		e.printStackTrace();
		
		response.setContentType("text/html");
		out.print("<h3 style='color:red'>Exception Occured:"+e.getMessage()+"</h3>");
		RequestDispatcher rd=request.getRequestDispatcher("/register.jsp");
		rd.include(request, response);
	}
  }
	
}
