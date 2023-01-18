<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>
<%
 String aname=(String)application.getAttribute("aname");    
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");
String s4=request.getParameter("t4");
String s5=request.getParameter("t5");


String s7=request.getParameter("file");
String s8=request.getParameter("textarea");
String smsg=null;
int i=0;
		
		try
		{

 Statement st=connection.createStatement();

int n=st.executeUpdate("insert into  document(dtitle,ddesc,dauthor,dlaunchedby,ddt,fname,doc,count) values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s7+"','"+s8+"',"+i+")" );
if(n>0){
smsg ="DOCUMENT ADDED SUCCESSFULLY";
		}else{
		smsg="Failure";
		}
		request.setAttribute("message",smsg);
		%><jsp:forward page="adddocument.jsp"></jsp:forward>

</body>
</html>

	<% 	}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
           
           
           
           
           
           
           
           
           
           
       