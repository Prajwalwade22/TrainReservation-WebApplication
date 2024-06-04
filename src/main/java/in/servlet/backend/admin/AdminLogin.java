package in.servlet.backend.admin;



import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;

@WebServlet("/AdminLoginform")
public class AdminLogin extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		PrintWriter out=response.getWriter();
		
		String myname1=request.getParameter("email1");
		String mypass1=request.getParameter("pass01");
	
      if(myname1.contentEquals("Prajwal@123") && mypass1.equals("Prajwal123"))
      {
	RequestDispatcher rd=request.getRequestDispatcher("/AdminHome.jsp");
	rd.include(request, response);
      }
      else if(myname1.contentEquals("Vinay@123") && mypass1.equals("Vinay123"))
          {
	RequestDispatcher rd=request.getRequestDispatcher("/AdminHome.jsp");
	rd.include(request, response);
          }
    else
    {
	response.setContentType("text/html");
		out.print("<h3 style='color:red'>EMAIL ID AND PASSWORD DIDN'T MATCHED</h3>");
		
		RequestDispatcher rd=request.getRequestDispatcher("/AdminLogin.jsp");
		rd.include(request, response);
	}

}
}


