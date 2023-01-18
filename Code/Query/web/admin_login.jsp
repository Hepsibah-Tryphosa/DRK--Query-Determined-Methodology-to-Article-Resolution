<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
    
        String username=request.getParameter("uname");      

        String Password=request.getParameter("pass");
        
	    
try
{
	   String sql="SELECT * FROM Admin where username='"+username+"' and password='"+Password+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    response.sendRedirect("adminmenu.jsp");
           }
	    else
	    {
	    response.sendRedirect("wronglogin.html");
          }
}

catch(Exception e)
{out.print(e);}
%>

