<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
    
        String sk=request.getParameter("t1");      
		String msg=null;
       
        String uname=(String)application.getAttribute("uname");

	    
try
{
	   String sql="SELECT * FROM user where uname='"+uname+"' and sk='"+sk+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    response.sendRedirect("searchquery.jsp");
           }
	    else
	    {
	    
	    
	 msg="Secret Key Mismatch....";
	   request.setAttribute("msg",msg);
		  %>
		  
		  <jsp:forward page="searchc.jsp"></jsp:forward>

		  </body>
		  </html>
		  <%
          }
}

catch(Exception e)
{out.print(e);}
%>

