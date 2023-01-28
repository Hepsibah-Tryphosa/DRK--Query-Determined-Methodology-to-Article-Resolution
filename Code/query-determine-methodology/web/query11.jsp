<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> User Main  Page</title>
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
                    
                    <h2>Welcome to <span style="color:#00CC00;"> <%= application.getAttribute("uname")%></span> </h2>
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
        
                  <div style="margin 0 0 0 0; background: url(images/templatemo_post_header.jpg) top left no-repeat;">
                     
                     	<h2 align="center"><a href="#">DOCUMENT DETAILS  </a></h2>
                        
                        <p align="center" class="style3">&nbsp;</p>
<p>
  <%
  
  	SimpleDateFormat sdfDate = new SimpleDateFormat(
			"dd/MM/yyyy");
	SimpleDateFormat sdfTime = new SimpleDateFormat(
			"HH:mm:ss");

	Date now = new Date();

	String strDate = sdfDate.format(now);
	String strTime = sdfTime.format(now);
	String dt = strDate + "   " + strTime;
  
			   String uname=(String )application.getAttribute("uname");
  String keyword = request.getParameter("t1");
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
	int i=0,j=0;
 double count=0,count1=0,ratio=0;
      	try 
	{
            String query9="select * from document"; 
           Statement st9=connection.createStatement();
           ResultSet rs9=st9.executeQuery(query9);
	   while ( rs9.next() )
	   {
	   count++;
	   }
      		
      		
      		Statement st3 = connection.createStatement();
			   String query3 ="insert into search(uname,keyword,dt) values('"+uname+"','"+keyword+"','"+dt+"')";
			   st3.executeUpdate (query3);
      		
           String query="select * from document where dtitle LIKE '%"+keyword+"%'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
	   count1++;
		j=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		
		i=rs.getInt(9);
	
		i=i+1;
		
		Statement st1=connection.createStatement();

		st1.executeUpdate("update document set count="+i+" where id="+j+" " );

		
%>
</p>
<table width="570" border="3" align="center" style="margin-top:50px;">
  
  <tr>
    <td width="130"><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">Data  Set Title</span></div></td>
    <td width="280"><%=s2%></td>
  </tr>
  <tr>
    <td width="130"><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">Data  Set Description</span></div></td>
    <td width="280"><%=s3%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">Data  Set Author</span></div></td>
    <td><%=s4%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">Launched  By</span></div></td>
    <td><%=s5%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">Launched  Date and Time</span></div></td>
    <td><%=s6%></td>
  </tr>
   <tr>
    <td><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">File Name </span></div></td>
    <td><%=s7%></td>
  </tr>
    <tr>
    <td><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">Ranks</span></div></td>
    <td><%=i%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">View Document</span></div></td>
    <td><a href="viewusdocument.jsp?id=<%=j%>"> View  &nbsp;</a></td>
  </tr>
</table>


<p>&nbsp;</p>
<div align="center"><strong>
  <%
out.println("------------------------------------------------------------------------------------------------------------");
	 
	}
	double matched_data = ((count1/count)*100);
	double unmatched_data=100.0000-matched_data;
		Statement st5=connection.createStatement();

		st5.executeUpdate("insert into ratio(search_on,keyword,total,available ,matched_data,unmatched_data) values('Title','"+keyword+"','"+count+"','"+count1+"','"+matched_data+"','"+unmatched_data+"')" );   
		   connection.close();
          	%>
		   		<p style="color:#99FF00; font-size:22px">  In Preserving triple Search ratio : <%= keyword%> <br /> Ratio is :&nbsp; <span style="color:#FFCC33;"><%= matched_data%>&nbsp; % </p>
				<p style="color:#99FF00; font-size:22px">Out preserving triple data :<%=unmatched_data %> %</p>
		    <%
		  }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
  
  

</strong></div>
<p><a href="searchquery.jsp">BACK</a></p>
                            
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