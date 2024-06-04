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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebServlet("/Loginform")
public class Login extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
	PrintWriter out=response.getWriter();
	
	String myname=request.getParameter("email");
	String mypass=request.getParameter("pass1");


	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Train","root","123456");
		
		PreparedStatement ps=con.prepareStatement("select * from register where email=? and password=?");//email and password are name of column
	    ps.setString(1, myname);
		ps.setString(2, mypass);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			//to print name on profile page
		HttpSession session=request.getSession();
		
		session.setAttribute("session_name", rs.getString("name"));//name is column name
		session.setAttribute("session_email", rs.getString("email"));
		session.setAttribute("session_password", rs.getString("password"));
		session.setAttribute("session_gender", rs.getString("gender"));
		session.setAttribute("session_pno", rs.getString("pno"));
		session.setAttribute("session_city", rs.getString("city"));
		
		session.setMaxInactiveInterval(1*60);//for session timeout
			
		RequestDispatcher rd=request.getRequestDispatcher("/UserHome.jsp");
		rd.include(request, response);
		
		
		
		//date and time is used to store at what time user logins.
		    java.util.Date date = new java.util.Date();
		    String date2=date.toString();
		 
			
			ps=con.prepareStatement("insert into Login values(?,?,?)");
			ps.setString(1,myname);
			ps.setString(2,mypass);
			ps.setString(3, date2);
			
			
		    int count=ps.executeUpdate();
			
		}
		else
		{
			response.setContentType("text/html");
			out.print("<h3 style='color:red'>EMAIL ID AND PASSWORD DIDN'T MATCHED</h3>");
			
			RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
			rd.include(request, response);
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		
		response.setContentType("text/html");
		out.print("<h3 style='color:red'>"+e.getMessage()+"</h3>");
		
		RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
		rd.include(request, response);
	}
	}

}
