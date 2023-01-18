<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Admin Main Page</title>
<meta name="keywords" content="free css templates, speaker blog template, CSS, HTML" />
<meta name="description" content="Speaker Blog is a free website template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style2 {color: #FF0000; font-weight: bold; }
-->
</style>
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
                <li><a href="#" class="current"> Admin</a></li>
                <li><a href="#"  >User</a></li>
				<li><a href="#" >Author</a></li>
                <li><a href="#">Register</a></li>
            </ul>  
        
        </div> <!-- end of templatemo_menu -->
        
        <div id="templatemo_content_wrapper">
        
            <div id="templatemo_sidebar">
            
                <div class="sidebar_box">
                    
                    <h2>Welcome to ADMIN </h2>
                    <ul class="side_menu">
                        <li><a href="viewalldocuments.jsp" class="style22">List All Documents </a></li>
                        <li><a href="listauthors.jsp"  class="style22">List Authors</a></li>
                        <li><a href="listusers.jsp"  class="style22">List Users </a></li>
                        <li><a href="viewshistory.jsp"  class="style22">List All Searched History </a></li>
						<li><a href="findoutlierdetection.jsp"  class="style22">Find Outlier Detection </a></li>
						<li><a href="index.html"  class="style22">Logout</a></li>
                        
                                          
                    </ul>
                
                </div>
            </div> <!-- end of sidebar -->
            
            <div id="templatemo_content">
            
            	<div class="post_section">
            	  <div style=" margin:0 0 0 0px;">
                     
                     	<div>
                     	  <h2 align="center" ><a href="#">Out Preserving Triple</a></h2>
                     	</div>
						<table  border="3"  cellpadding="0" cellspacing="0" bordercolor="#FF0000"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 0px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px; width:560px;">
					<tr  style="color:#66CCCC;">
 						<td  width="80" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style2">Search on </div></td>
  						<td  width="60" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style2">keyword</div></td>
 						<td   width="80" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style2">total</div></td>
						<td  width="80" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style2">Available</div></td>
						<td  width="80" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style2">In Preserving triple</div></td>
					  <td  width="80" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style2">Out preserving triple</div></td>
					</tr>
					<%
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from ratio"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								
					%>
					<tr>
						<td  width="72" valign="baseline" height="0" style="color:#FFFFFF;">&nbsp;&nbsp;<%out.println(s1);%></td>	
						<td  width="82" valign="baseline" height="0" style="color:#FFFFFF;">&nbsp;&nbsp;<%out.println(s2);%></td>
						
						<td  width="80" valign="baseline" height="0" style="color:#FFFFFF;"align="center">&nbsp;&nbsp;<%out.println(s3);%></td>
						
						<td  width="10" valign="baseline" height="0" style="color:#FFFFFF;"align="center">&nbsp;&nbsp;<%out.println(s4);%></td>
						<td  width="80" valign="baseline" height="0" style="color:#FFFFFF;"align="center">&nbsp;&nbsp;<%out.println(s5);%></td>
						<td  width="80" valign="baseline" height="0" style="color:#FFFFFF;"align="center">&nbsp;&nbsp;<%out.println(s6);%></td>
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
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
					</tr>
				</table>
                        <p>&nbsp;</p>
                            
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