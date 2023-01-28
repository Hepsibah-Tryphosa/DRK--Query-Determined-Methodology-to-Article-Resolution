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
<title>PPI : List Users</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/swfobject.js"></script>
	<script type="text/javascript">
        var flashvars = {};
        flashvars.xml_file = "photo_list.xml";
        var params = {};
        params.wmode = "transparent";
        var attributes = {};
        attributes.id = "slider";
        swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "440", "220", "9.0.0", false, flashvars, params, attributes);
    </script></head>
<body>

<div  style="width:580px;">
  <!-- end of forever header -->
  <div id="tooplate_main">
      <div style="width:580px;">
       	  <div class="post_box">
            	
                <table  border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 0px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px; width:560px;">
					<tr style="color:#66CCCC;">
 						<td  width="80" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Author name</b></div></td>
  						<td  width="60" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Mobile</strong></div></td>
 						<td   width="80" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Status</strong></div></td>
						<td  width="80" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>View</b></div></td>
					</tr>
					<%
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from author"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								//s2=rs.getString(4);
								s3=rs.getString(5);
								//s4=rs.getString(6);
								//s5=rs.getString(7);
								//s6=rs.getString(8);
								//s7=rs.getString(9);
								s8=rs.getString(11);
					%>
					<tr>
						<td  width="72" valign="baseline" height="0" style="color:#FFFFFF;">&nbsp;&nbsp;<%out.println(s1);%></td>	
						<td  width="82" valign="baseline" height="0" style="color:#FFFFFF;">&nbsp;&nbsp;<%out.println(s3);%></td>
						<%
						if(s8.equalsIgnoreCase("Rejected"))
						{
						
						%>
						
						<td  width="80" valign="baseline" height="0" style="color:#FFFFFF;"align="center"><a href="generatekeyconfirm1.jsp?mid=<%=i%>">waiting&nbsp;</a></td>
						<%
						}
						else
						{
						%>
							<td  width="10" valign="baseline" height="0" style="color:#FFFFFF;"align="center"><%out.println(s8);%>&nbsp;</td>
						<%
						}
						%>
						<td  width="80" valign="baseline" height="0" style="color:#FFFFFF;"align="center"><a href="authormyprofile.jsp?mid=<%=i%>">more info..&nbsp;</a></td>
					</tr>
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

					<tr>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						
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