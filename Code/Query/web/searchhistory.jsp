<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->
<title> Search History</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" /></head>
<body>

<div  style="width:610px;">
  <!-- end of forever header -->
  <div id="tooplate_main">
      <div style="width:560px;">
       	  <div class="post_box">
            	
                <table width="560" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:0px 10px 10px 0px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr>
 						<td   width="100" valign="baseline" height="0" style="color: #2c83b0; width:40px;"><div align="center"><strong>Username</strong></div></td>
  						<td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Keyword</strong></div></td>
 				
						<td  width="150" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Date &amp; Time </strong></div></td>
					</tr>
					<%
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from search"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								
						%>
							
					<tr>
						<td  width="100" valign="baseline" height="0" style="color:#FFFFFF;">&nbsp;&nbsp;<% out.println(s2); %> </td>	
						<td  width="100" valign="baseline" height="0" style="color:#FFFFFF;">&nbsp;&nbsp;<%out.println(s3);%></td>
					
						<td  width="150" valign="baseline" height="0" style="color:#FFFFFF;">&nbsp;&nbsp;<%out.println(s4);%></td>
					</tr>
					

					<tr>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						
						
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
					</tr>
				</table>
				
       	  </div>
      </div>    	

    	<div class="cleaner"></div>
    </div> <!-- end of main -->
    <div id="tooplate_main_bottom"></div>

</div> <!-- wrapper -->


</body>
</html>