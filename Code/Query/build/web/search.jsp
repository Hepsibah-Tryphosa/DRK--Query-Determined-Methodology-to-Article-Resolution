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
                        <li><a href="viewmy.jsp"  class="style22">View My Details</a></li>
                        <li><a href="search.jsp"  class="style22"><strong>Search on Query's </strong></a></li>
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
                    <h2><a href="#"><span class="style1">SEARCH DOCUMENT BASED ON QUERY </span></a></h2>
                    <form action="search1.jsp" method="post" name="form1" id="form1">
                      <p>
                        <%
  
  String msg = (String)request.getAttribute("msg");
  if(msg!=null){
  out.println(msg);
  }
  %>
                      </p>
                      <table width="480" border="1" align="center">
                        <tr>
                          <td><span class="style2">Enter the Secret Key to Search </span></td>
                          <td><label>
                            <input name="t1" type="text" size="40" />
                          </label></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><label>
                            <input type="submit" name="Submit" value="Submit" />
                          </label></td>
                        </tr>
                      </table>
                    </form>
                  </div>
              </div>
              <div class="post_section_bottom"></div>
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