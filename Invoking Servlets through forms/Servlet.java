import java.io.*; 
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
 
@WebServlet("/MyServlet") 
public class MyServlet extends HttpServlet 
{  
  private static final long serialVersionUID = 1L;   
  public MyServlet() 
  {     
     super();        
    // TODO Auto-generated constructor stub     
  } 
 
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
  {   
     response.setContentType("text/html"); 
     PrintWriter out = response.getWriter();   
     String fname = request.getParameter("First Name");
     String sname = request.getParameter("Last Name");
     String email = request.getParameter("Email");
     String contact = request.getParameter("Contact no.");
     out.println("h3>First Name " + name + "</h3>"); 
     out.println("h3>Second Name " + name + "</h3>");  
     out.println("<h3>Email " + email + "</h3>");   
     out.println("<h3>Contact no. " + pass + "</h3></center>"); 
  } 
 
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
 {   
    // TODO Auto-generated method stub   
     doGet(request, response);  
 } 
 
}