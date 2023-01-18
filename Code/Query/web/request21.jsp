<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>




<%


	try 
{
	
		
		
		String msg="";
		String uname=(String)application.getAttribute("uname");
	
		String field= request.getParameter("t1");	
		
		if(field.equalsIgnoreCase(""))
		{
			
		}
		else
		{
		 Statement stmt=connection.createStatement();
		    String strQuery = "select sk from user where uname='"+uname+"' and password='"+field+"' ";
		    ResultSet rs = stmt.executeQuery(strQuery);
		    if(rs.next()==true){
		    	
		    	String sk =rs.getString(1);
		    	 msg="Your Secret Key is->"+sk;
		    }
		    else
		    {
		    
		    
		    msg="Secret Key Mismatch....";
			  
	          }
		}
		request.setAttribute("msg",msg);
	


		 }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
	<jsp:forward page="request.jsp"></jsp:forward>