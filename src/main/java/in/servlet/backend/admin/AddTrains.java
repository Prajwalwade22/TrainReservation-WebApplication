package in.servlet.backend.admin;


import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/adminaddtrain")
public class AddTrains extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		PrintWriter out=response.getWriter();
		  
		String number = request.getParameter("trainno");
		String name= request.getParameter("trainname");
		String fstation = request.getParameter("fromstation");
		String Dtime=request.getParameter("dtime");
		String tostation = request.getParameter("tostation");
		String Atime=request.getParameter("dtime");
		String avail=request.getParameter("available");
		String paise=request.getParameter("ticketfare");
		
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Train","root","123456");
		
		PreparedStatement ps=con.prepareStatement("insert into addtrain values(?,?,?,?,?,?,?,?)");
		ps.setString(1,number);
		ps.setString(2,name);
		ps.setString(3,fstation);
		ps.setString(4,Dtime);
		ps.setString(5,tostation);
		ps.setString(6, Atime);
		ps.setString(7,avail);
		ps.setString(8,paise);
		
	int count=ps.executeUpdate();
	
	if(count>0)
	{
	response.setContentType("text/html");
	out.print("<h3 style='color:green'>Train Added SuccessFully</h3>");
	RequestDispatcher rd=request.getRequestDispatcher("/AdminHome.jsp");
	rd.include(request, response);
	}
	else
	{
		response.setContentType("text/html");
		out.print("<h3 style='color:red'>Train NOT Added SUCCESSFULLY</h3>");
		RequestDispatcher rd=request.getRequestDispatcher("/AddTrain.jsp");
		rd.include(request, response);
	}
}
	catch(Exception e)
	{
        e.printStackTrace();
		
		response.setContentType("text/html");
		out.print("<h3 style='color:red'>Exception Occured:"+e.getMessage()+"</h3>");
		RequestDispatcher rd=request.getRequestDispatcher("/AddTrain.jsp");
		rd.include(request, response);
		
	}
	}
}