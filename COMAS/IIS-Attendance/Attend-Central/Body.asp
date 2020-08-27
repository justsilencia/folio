<!--#Include File="../Global-Functions/Attend-Functions.asp"-->
<!--#MetaData Type="TypeLib"
	      File="H:\Program Files\Common Files\system\ado\msado15.dll"-->

<BASEFONT FACE="Microsoft Sans Serif">
<html>
<body link="Green" Vlink="Green">

- <a href="http://COMAS" Target="_top">Home</a>

<BR>
<%
	
	If Request.Form("SaveAdult") <> "" Then
	
		If Request.Form("AdultShift") = "AM" Then
			shift = "AM"
			Session("Shift") = "AM"
		Else
			shift = "PM"
			Session("Shift") = "PM"
		End If
		If Request.Form("AdultDate") <> "" Then
		Session("Date") = Request.Form("AdultDate")
			strQry = "SELECT * FROM Class"&shift&"_Hours WHERE Date = '"& Request.Form("AdultDate") &"' AND Class = 'Adult'"
			Set rsHours = Server.CreateObject("ADODB.Recordset")
			rsHours.Open strQry, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText
			If Not rsHours.EOF Then
				rsHours("Hours") = Request.Form("AdultHours")
				rsHours("Date") = Request.Form("AdultDate")
				rsHours.Update
			Else
				rsHours.AddNew
				rsHours("Class") = "Adult"
				rsHours("Hours") = Request.Form("AdultHours")
				rsHours("Date") = Request.Form("AdultDate")
				rsHours.Update
			End If
			rsHours.Close
			Set rsHours = Nothing
			AdultSave = true
			Else
				noAdultDate = true
			End If
			
	End If

	If Request.Form("SaveYO") <> "" Then
		myClass = Request.Form("YOClass")
		Session("Class") = myClass
		If Request.Form("YOShift") = "AM" Then
			shift = "AM"
			Session("Shift") = "AM"
		Else
			shift = "PM"
			Session("Shift") = "PM"
		End If
		If Request.Form("YODate") <> "" Then
		Session("Date") = Request.Form("YODate")
			strQry = "SELECT * FROM Class"&shift&"_Hours WHERE Date = '"& Request.Form("YODate") &"' AND Class = '"&myClass&"'"
			Set rsHours = Server.CreateObject("ADODB.Recordset")
			rsHours.Open strQry, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText
			If Not rsHours.EOF Then
				rsHours("Hours") = Request.Form("YOHours")
				rsHours("Date") = Request.Form("YODate")
				rsHours.Update
			Else
				rsHours.AddNew
				rsHours("Class") = myClass
				rsHours("Hours") = Request.Form("YOHours")
				rsHours("Date") = Request.Form("YODate")
				rsHours.Update
			End If
			rsHours.Close
			Set rsHours = Nothing
			YOSave = true
			Else
				noYODate = true
			End If

	End If

	
%>
<Form Action="Body.asp" Name="ClassHours" Method="Post">
<center>
<table border="0">
<tr>
<td>

<Table Border="1" cellpadding="0" cellspacing="0"><caption><h3><u>
<%
	If AdultSave = true Then Response.Write "<b><Font Color=""Green"">Successfully Saved</Font></b><br>" end if
	If noAdultDate = true Then Response.Write "<b><Font Color=""Red"">Please Enter a Date</Font></b><br>" end if
%>
Adult Class Hours</u></h3></caption>
<tr>
	<th>Date</th>
	<th>Shift</th>
	<th>Hours</th>
</tr>
<tr>
	<td><Input Type="Text" Name="AdultDate" value="<%=Session("Date")%>" MaxLength="10" Size="10"></td>
	<td><Select Name="AdultShift">
		<Option Value="<%=Session("Shift")%>"><%=Session("Shift")%></Option>
		<Option Value="AM">AM</Option>
		<Option Value="PM">PM</Option>
	    </Select>
	</td>
	<td><Input Type="Text" Name="AdultHours" MaxLength="4" Size="4"></td>
</tr>
<tr>
	<td colspan="3" align="center"><Input Type="Submit" Name="SaveAdult" Value="Save Adult Hours">
</tr>
</table>

</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td>

<Table Border="1" cellpadding="0" cellspacing="0"><caption><h3><u>
<%
	If YOSave = true Then Response.Write "<b><Font Color=""Green"">Successfully Saved</Font></b><br>" end if
	If noYODate = true Then Response.Write "<b><Font Color=""Red"">Please Enter a Date</Font></b><br>" end if
%>
Y/O Class Hours</u></h3></caption>
<tr>
	<th>Date</th>
	<th>Class</th>
	<th>Shift</th>
	<th>Hours</th>
</tr>
<tr>
	<td><Input Type="Text" Name="YODate" value="<%=Session("Date")%>" MaxLength="10" Size="10"></td>
	<td><Select Name="YOClass" ID=Select1>
		<Option Value="<%=Session("Class")%>"><%=Session("Class")%></Option>
		<Option Value="17-Ac">17-Ac</Option>
		<Option Value="18+Ac">18+Ac</Option>
		<Option Value="BTU">Bootcamp</Option>
	    </Select>
	</td>
	<td><Select Name="YOShift">
		<Option Value="<%=Session("Shift")%>"><%=Session("Shift")%></Option>
		<Option Value="AM">AM</Option>
		<Option Value="PM">PM</Option>
	    </Select>
	</td>
	<td><Input Type="Text" Name="YOHours" MaxLength="4" Size="4"></td>
</tr>
<tr>
	<td colspan="4" align="center"><Input Type="Submit" Name="SaveYO" Value="Save Y/O Hours">
</tr>
</table>

</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>

</tr>
</table>
</center>
</Form>

<Table Border = "5" bgcolor="#fffafa" Cellspacing = "1" Cellpadding="5" Width="60%" link="Green" alink="Green" vlink="Green" align="center">

<BR>
  	<TR>
		<TD Width="30%"><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=S1" Target="_top" >
        	S1</a>&nbsp;
        
		<TD Width="30%"><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Y1" Target="_top" >
        	Y1</a>&nbsp;&nbsp;
	
   	</TR>	
   		<TR>
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=S2" Target="_top">
         	S2</a>&nbsp;
		
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Y2" Target="_top" >
        	Y2</a>&nbsp;&nbsp;

	</TR>
	<TR>
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=S3" Target="_top" >
        	S3</a>&nbsp;
        
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Y3" Target="_top" >
        	Y3</a>&nbsp;&nbsp;

	</TR>
	<TR>
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=S4" Target="_top">
        	S4</a>&nbsp;
		
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Y4" Target="_top" >
        	Y4</a>&nbsp;&nbsp;

   	</TR>
    <TR>
		<TD><H2>&nbsp;

		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Y5" Target="_top" >
        	Y5</a>&nbsp;&nbsp;

	</TR>
	<TR>

	    <TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Masonry" Target="_top" >
         	Masonry (Defunct)</a>&nbsp;&nbsp;
          		
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Youth-Masonry" Target="_top">
        	Youth-Masonry</a>&nbsp;&nbsp;
		
   	</TR>
  	<TR>
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Energy-Tech" Target="_top" >
        	Energy-Tech</a>&nbsp;

		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Horticulture" Target="_top">Horticulture</a>

	</TR>

	<TR>
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Marine-Tech" Target="_top" >
        	Marine-Tech</a>&nbsp;

		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Admin-Off-Spec" Target="_top" >
        	Admin-Office-Spec</a>&nbsp;&nbsp;
	
    </TR>
	<TR>
		<TD colspan="2">&nbsp;
	</TR>

   	<TR>
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/BTU-Att/Comas-Bootcamp-Start.htm" Target="_top" >
        	Boot Camp</a>&nbsp;
    
		<TD><H2><LI><a href="http://COMAS/Attendance/Root/Hybrid/Start.asp?Class=Hybrid" Target="_top">Compass Hybrid</a>
   </TR>

   <TR>
		<TD colspan="2">&nbsp;
	</TR>

   	<TR>
       <TD colspan="2"><H2><Center>** <a href="http://comas/Reports">Report-Generator</a> **
   	</tr>
</Table> 
<BR>

<!-- This is the previous table, kept for refernece.
<Table Border = "10" bgcolor="#fffafa" Cellspacing = "1" Cellpadding="5" Width="60%" link="Green" alink="Green" vlink="Green" align="center">

<BR>
  <TR>
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=S1" Target="_top" >
        S1</a>&nbsp;&nbsp;<BR>
        
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=S2" Target="_top">
         S2</a>&nbsp;&nbsp;
   </TR>	
   <TR>
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=S3" Target="_top" >
        S3</a>&nbsp;&nbsp;<BR>
        
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=S4" Target="_top">
         S4</a>&nbsp;&nbsp;
   </TR>
    <TR>

        <TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Masonry" Target="_top" >
         Masonry</a>&nbsp;&nbsp;
          		
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Energy-Tech" Target="_top" >
        Energy-Tech</a>&nbsp;&nbsp;
   </TR>

  <TR>
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Marine-Tech" Target="_top" >
        Marine-Tech</a>&nbsp;&nbsp;
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Y1" Target="_top" >
        Y1</a>&nbsp;&nbsp;
    </TR>
   
    <TR>
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Y2" Target="_top" >
        Y2</a>&nbsp;&nbsp;
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Y3" Target="_top" >
        Y3</a>&nbsp;&nbsp;
    </TR>

  <TR>
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Y4" Target="_top" >
        Y4</a>&nbsp;&nbsp;
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Y5" Target="_top" >
        Y5</a>&nbsp;&nbsp;
   </TR>

   <TR>
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Youth-Masonry" Target="_top">
        Youth-Masonry</a>&nbsp;&nbsp;
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/BTU-Att/Comas-Bootcamp-Start.htm" Target="_top" >
         Boot Camp</a>&nbsp;&nbsp;
   </TR>
   <TR>
    <TD><H2><LI><a href="http://COMAS/Attendance/Root/Att/Start.asp?Class=Horticulture" Target="_top">Horticulture</a>
	<TD><H2><LI><a href="http://COMAS/Attendance/Root/Hybrid/Start.asp?Class=Hybrid" Target="_top">Compass Hybrid</a>
   </TR>
   <tr>
       <TD colspan="2"><H2><Center>** <a href="http://comas/Reports">Report-Generator</a> **
   </tr>
 </Table>
-->


</UL>
</body>
</html>

