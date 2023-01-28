<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
    
        String username=request.getParameter("uname");      

        String Password=request.getParameter("pass");
        application.setAttribute("uname",username);


	    
try
{
	   String sql="SELECT * FROM user where uname='"+username+"' and password='"+Password+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    response.sendRedirect("usermenu.jsp");
           }
	    else
	    {
	    response.sendRedirect("wronglogin.html");
          }
}

catch(Exception e)
{out.print(e);}
%>

