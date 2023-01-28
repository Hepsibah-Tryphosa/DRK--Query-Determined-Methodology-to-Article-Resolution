<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html>
<style type="text/css">
<!--
.style1 {font-size: 18px}
.style2 {color: #0000FF}
.style3 {
	font-size: 24px;
	font-weight: bold;
	color: #FF6600;
}
-->
</style>

<body bgcolor=#FFFFFF >
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


<p align="center" class="style3">DOCUMENT DETAILS </p>
<p>
  <%
  
 
  
  
  
 
  int mid = Integer.parseInt(request.getParameter("id"));
 
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
           
      		
      		
      		
      		
           String query="select * from document where id="+mid+" "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
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
<table width="838" border="0" align="center">
  
  
  <tr>
    <td width="179"><div align="left" class="style5 style1 style2"><strong>Document Type </strong></div></td>
    <td width="480"><%=s2%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Date</strong></div></td>
    <td><%=s3%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Location</strong></div></td>
    <td><%=s4%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Storm Name </strong></div></td>
    <td><%=s5%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Storm Category </strong></div></td>
    <td><%=s6%></td>
  </tr>
  
   <tr>
    <td><div align="left" class="style5 style1 style2"><strong>File Name </strong></div></td>
    <td><input id="inputFileNameToSaveAs" value="<%=s7%>"></input></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Document </strong></div></td>
    <td><textarea id="inputTextToSave" style="width:512px;height:256px" ><%=s8%></textarea></td>
    <td><button onClick="saveTextAsFile()">Download</button></td>
  </tr>
    <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Ranks</strong></div></td>
    <td><%=i%></td>
  </tr>
  
</table>


<p>&nbsp;</p>
<div align="center"><strong>
  <%

	   }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
  
  

</strong></div>
</body>
</html>