package in.servlet.backend;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/editdetails")
public class Editdetails extends HttpServlet
{
	
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("session_email");
		
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("text1");
		//String email=request.getParameter("text2");
		String password=request.getParameter("text3");
		String gender=request.getParameter("text4");
		String pno=request.getParameter("text5");
		String city=request.getParameter("text6");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Train","root","123456");
			
			
			
			PreparedStatement ps=con.prepareStatement("update register set name=?,password=?,gender=?,pno=?,city=? where email=?");//email and password are name of column
			
			ps.setString(1, name);
			ps.setString(2, password);
			ps.setString(3, gender);
			ps.setString(4, pno);
			ps.setString(5, city);
			ps.setString(6, email);
			  
		
			int count=ps.executeUpdate();
			if(count>0)
			{
			response.setContentType("text/html");
			
			out.print("<h3 style='color:green'>USER UPDATED SUCCESSFULLY</h3>");
			RequestDispatcher rd=request.getRequestDispatcher("/UserProfile.jsp");
			rd.include(request, response);
			}
			else
			{
				response.setContentType("text/html");
				out.print("<h3 style='color:red'>USER NOT Updated SUCCESSFULLY</h3>");
				RequestDispatcher rd=request.getRequestDispatcher("/UserHome.jsp");
				rd.include(request, response);
			}
				
			}catch(Exception e)
			{
				e.printStackTrace();
				
				response.setContentType("text/html");
				out.print("<h3 style='color:red'>Exception Occured:"+e.getMessage()+"</h3>");
				RequestDispatcher rd=request.getRequestDispatcher("/UserHome.jsp");
				rd.include(request, response);
			}
		  }
			
		}
