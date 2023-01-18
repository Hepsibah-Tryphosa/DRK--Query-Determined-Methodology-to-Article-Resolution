<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Author Main  Page</title>
<meta name="keywords" content="free css templates, speaker blog template, CSS, HTML" />
<meta name="description" content="Speaker Blog is a free website template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style7 {color: #FFFFFF}
-->
</style>

<script type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>

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
                <li><a href="#"  >User</a></li>
				<li><a href="#" class="current">Author</a></li>
                <li><a href="#">Register</a></li>
            </ul>  
        
        </div> <!-- end of templatemo_menu -->
        
        <div id="templatemo_content_wrapper">
        
            <div id="templatemo_sidebar">
            
                <div class="sidebar_box">
                    
                    <h2>Welcome to <span style="color:#006666;"> <%= application.getAttribute("aname")%></span> </h2>
                    <ul class="side_menu">
                        <li><a href="viewamy.jsp"  class="style22">View My Details</a></li>
                        <li><a href="searchp.jsp" class="style22"><strong>Upload Documents </strong></a></li>
                        <li><a href="request1.jsp"  class="style22">Request For Secret Key </a></li>
                        <li><a href="viewmydocuments.jsp" class="style22">View My Documents </a></li>
						<li><a href="index.html" class="style22">Logout</a></li>
                                           
                    </ul>
                
                </div>
            </div> <!-- end of sidebar -->
            
            <div id="templatemo_content">
            
            	<div class="post_section"><span class="top"></span><span class="bottom"></span>
        
                  <div class="#">
                     <p>
					 <%
						String msg = null;
						msg = (String )request.getAttribute("message");
						if(msg!=null){
						out.println(msg);
						}
						%>
					 </p>
                     	<p>
    <label>
     <div align="center">
       <input name="imageField" type="image" src="CADS.png" align="middle">
      </div>
    </label>
  </p>
                        <form action="adddocument1.jsp" method="post"  name="form1">
                        <table width="480" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					
					<%
						
						String aname=(String)application.getAttribute("aname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from author where aname='"+aname+"'"; 
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
 						<td  width="200" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;">Data  Set's Title</div></td>
						<td  width="250" valign="middle" height="40" style=""><input name="t1" type="text" size="30"></td>
					</tr>
					<tr>
 						<td  width="120" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;">Data  Set's Description</div></td>
						<td  width="250" valign="middle" height="40" style=""><textarea name="t2" cols="30"></textarea></td>
					</tr>
					<tr>
  						<td  width="100" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;">Data  Set's Author</div></td>
						<td  width="82" valign="middle" height="40"><input type="text" name="t3" size="30"></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;">Launched  By</div></td>
						<td  width="82" align="left" valign="middle" height="40"><input type="text" name="t4" size="30"></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " class="style7" style="margin-left:20px;">Launched  Date and Time</div></td>
						<td  width="82" align="left" valign="middle" height="40"><input type="text" name="t5" size="30"></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " class="style7" style="margin-left:20px;">Document</div></td>
						<td  width="82" align="left" valign="middle" height="40"><input name="file" type="file" id="file"  onChange="loadFileAsText()" size="29" ></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"></div></td>
						<td  width="82" align="left" valign="middle" height="40"><label>
        <textarea name="textarea" id="textarea" cols="40" rows="20"></textarea>
      </label></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;">&nbsp;</td>
						<td  width="82" align="left" valign="middle" height="40">&nbsp;</td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="40" style="color: #2c83b0;">&nbsp;</td>
						<td  width="100" align="left" valign="middle" height="40" style=""><label>
        <input type="submit" name="Submit" value="Submit">
        <input type="reset" name="Submit2" value="Reset">
      </label></td>
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
                    </form> 
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