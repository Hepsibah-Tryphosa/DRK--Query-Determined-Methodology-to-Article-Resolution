<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Main  Page</title>
<meta name="keywords" content="free css templates, speaker blog template, CSS, HTML" />
<meta name="description" content="Speaker Blog is a free website template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="templatemo_wrapper_outer">

	<div id="templatemo_wrapper_inner">
    
        <div id="templatemo_header">
            
            <div id="site_title" style="width:500px; height:100px; margin-left:5px;"> 
                <p style="color:#FF3366; font-size:28px; line-height:30px; ">Query Determined Methodology to Article Resolution</p>           
          </div> 
            <!-- end of site_title -->
        
        </div> <!-- end of templatemo_header -->
        
        <div id="templatemo_menu">
    
            <ul>
                <li><a href="#" >Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#"> Admin</a></li>
                <li><a href="#"  class="current">User</a></li>
				<li><a href="#" >Author</a></li>
                <li><a href="#">Register</a></li>
            </ul>  
        
        </div> <!-- end of templatemo_menu -->
        
        <div id="templatemo_content_wrapper">
        
            <div id="templatemo_sidebar">
            
                <div class="sidebar_box">
                    
                    <h2>Welcome to <span style="color:#006666;"> <%= application.getAttribute("uname")%></span> </h2>
                    <ul class="side_menu">
                        <li><a href="viewmy.jsp"  class="style22"><strong>View My Details</strong></a></li>
                        <li><a href="search.jsp"  class="style22">Search on Query's </a></li>
                        <li><a href="searchc.jsp"  class="style22">Search on Content </a></li>
                        <li><a href="request.jsp"  class="style22">Request For Secret Key </a></li>
						<li><a href="viewuhistory.jsp"  class="style22">View MY Search History </a></li>
                        <li><a href="index.html"  class="style22">Logout</a></li>
                                          
                    </ul>
                
                </div>
            </div> <!-- end of sidebar -->
            
            <div id="templatemo_content">
            
            	<div class="post_section"><span class="top"></span><span class="bottom"></span>
        
                  <div class="post_content">
                     
                     	<h2><a href="#">WELCOME TO USER </a></h2>
                        
                        <table width="480" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					
					<%
						
						String uname=(String)application.getAttribute("uname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where uname='"+uname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								s7=rs.getString(9);
								s8=rs.getString(10);
								s9=rs.getString(11);
					%>
					
					
					<tr>
 						<td  width="150" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b >Username</b></div></td>
						<td  width="300" valign="middle" height="40" style=""><div align="left" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
 						<td  width="120" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b>E-Mail</b></div></td>
						<td  width="72" valign="middle" height="40" style=""><div align="left" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
  						<td  width="100" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Mobile</strong></div></td>
						<td  width="82" valign="middle" height="40"><div align="left" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Location</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Date Of Birth</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Address</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px;"><%out.println(s6);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Gender</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px;"><%out.println(s7);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Pincode</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px;"><%out.println(s8);%></div></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Symmetric Key </strong></div></td>
						<td  width="100" align="left" valign="middle" height="40" style=""><div align="left"><div align="left" style="margin-left:20px;"><%out.println(s9);%></div></td>
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

					
				</table>
                            
                  </div>
        
                </div><div class="post_section_bottom"></div>
            </div> <!-- end of tempaltemo_content -->
        
        	<div class="cleaner"></div>
        </div> <!-- end of content_wrapper -->
    
    </div> <!-- end of templatemo_wrapper_inner -->
    
</div> <!-- templatemo_wrapper_outer -->

<div id="templatemo_footer_outer">
<div style="background-color:#333">&nbsp;<p>&nbsp; </p>
<p>&nbsp; </p></div>
<div id="templatemo_footer_inner"><!-- end of footer -->
</div> <!-- end of footer wrapper -->
</div>

<div align=center>This template  downloaded form <a href='#'>free website templates</a></div></body>
</html>