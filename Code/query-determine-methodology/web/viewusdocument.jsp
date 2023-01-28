<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>RRN : Admin Main Page</title>
<meta name="keywords" content="free css templates, speaker blog template, CSS, HTML" />
<meta name="description" content="Speaker Blog is a free website template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("inputTextToSave").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = document.getElementById("inputFileNameToSaveAs").value;

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}

function loadFileAsText()
{
	var fileToLoad = document.getElementById("fileToLoad").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("inputTextToSave").value = textFromFileLoaded;
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
                <p style="color:#FF3366; font-size:28px; line-height:30px; ">Reverse Nearest Neighbors in Unsupervised
Distance-Based<br /> Outlier Detection</p>           
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
  
  
  
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
           
      		
      		
      		 int mid = Integer.parseInt(request.getParameter("id"));
      		
           String query="select * from document where id='"+mid+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   if ( rs.next() )
	   {
		j=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		
		i=rs.getInt(9);
	
		
		
		
%>
</p>
<table border="3" align="center" style="margin-top:50px; width:550px;">
  
  <tr>
    <td style="width:200px;"><div align="left" ><span style="margin-left:20px;">Data  Set Title</span></div></td>
    <td style="width:200px;"><%=s2%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">Data  Set Description</span></div></td>
    <td><%=s3%></td>
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
    <td><input id="inputFileNameToSaveAs" value="<%=s7%>"></input></td>
  </tr>
    <tr>
    <td><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">Ranks</span></div></td>
    <td><%=i%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><span style="margin-left:20px;">View Document</span></div></td>
    <td><textarea id="inputTextToSave" style="width:300px;height:256px" ><%=s8%></textarea></td>
	
  </tr>
  <tr><td colspan="2" align="center"><button onClick="saveTextAsFile()">Download</button></td></tr>
</table>


<p>&nbsp;</p>
<div align="center"><strong>
  <%
out.println("------------------------------------------------------------------------------------------------------------");
	   }

           connection.close();
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