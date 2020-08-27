<!--#Include File="Connection.asp"-->
<!-- #METADATA TYPE="typelib"
	       FILE="H:\program files\common files\system\ado\msado15.dll" -->

<html>
<body>
<%
	dim rsTeacher
	dim strSQL

	strSQL = "SELECT * FROM teachers_tbl WHERE class = '"&Session("Class")&"'"

	Set rsTeacher = Server.CreateObject("ADODB.Recordset")
	rsTeacher.Open strSQL, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
%>


<Center>
<Table Border="0">
<TR>
	<td>Department:
	<td>&nbsp;<U><%=rsTeacher("Class")%>
<%
	If Session("Number") <> "" Then
	

		Response.Write "(" & Session("Number") & ")"

	End If
%>
</U>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	<td>Instructor:
	<td>&nbsp;<U><%=rsTeacher("Teacher")%></U>
</TR>
<TR>
	<TD>Year:
	<TD>&nbsp;<U><%=Session("Year")%></U>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<td>Month:
	<td>&nbsp;<U><%=Session("Month")%></u>
</TR>
</Table>
<BR><BR>
<%
	rsTeacher.Close
	Set rsTeacher = Nothing
%>


<%
	dim rsMaster
	dim intDC
	dim intDC2
	dim strTotal
	dim strMonth
	dim strTotalPM
	dim strMonthPM
	dim rsTotal
	dim rsMonth
	dim rsTotalPM
	dim rsMonthPM
	dim intTotal
	dim intMonth
	dim intTotalPM
	dim intMonthPM
	dim int
	dim int2
	dim intPM
	dim intPM2
	dim intTotal2

	
	strMaster = "SELECT First_Name, LastName, m.dc_number, c.* FROM Master_roster_tbl  m INNER JOIN class_assignment_tbl c " & _
		    "ON m.dc_number = c.dc_number ORDER BY LastName"

	


	Set rsMaster = Server.CreateObject("ADODB.Recordset")
	rsMaster.Open strMaster, eduConn, adOpenStatic, adLockReadOnly, adCmdText


	Response.Write _
	
	"<Table Border = ""1""><Caption><H2><U>Sumter C.I.<BR>Student Hours Report</U></H2></Caption>" & _
	  "<TR>" & _
	    "<TH>DC#</TH>" & _
	    "<TH>Name</TH>" & _
	    "<TH>Monthly Hours</TH>" & _
	  "</TR>"

	Do While Not rsMaster.EOF


	  

		
		
		If rsMaster("dc_number") <> "" Then
		
		  intDC2 = rsMaster("dc_number")

		
		If Session("Class") <> "Bootcamp" Then


		 If rsMaster("shift") = "AM" Then

		  strMonth = "SELECT COUNT(Status_am) FROM attend_am_tbl WHERE dc_number LIKE '%" & intDC2 & "%' AND Status_am = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = '"&Session("Class")&"'"

		 Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		 rsMonth.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		int2 = rsMonth("") * 3


		 End If

		End If



		If Session("Class") <> "Bootcamp" Then		


		 If rsMaster("shift") = "PM" Then

		  strMonth = "SELECT COUNT(Status_pm) FROM attend_pm_tbl WHERE dc_number LIKE '%" & intDC2 & "%' AND Status_pm = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = '"&Session("Class")&"'"

		
		     Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		     rsMonth.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		int2 = rsMonth("") * 3

		 End If

		End If		


	
		If Session("Class") <> "Bootcamp" Then	

		  
		 If rsMaster("shift") = "Both" Then

		  strMonth = "SELECT COUNT(Status_pm) FROM attend_pm_tbl WHERE dc_number LIKE '%" & intDC2 & "%' AND Status_pm = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = '"&Session("Class")&"'"


		  strMonth2 = "SELECT COUNT(Status_am) FROM attend_am_tbl WHERE dc_number LIKE '%" & intDC2 & "%' AND Status_am = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = '"&Session("Class")&"'"

		
		     Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		     Set rsMonth2 = Server.CreateObject("ADODB.RecordSet")
		     rsMonth.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		     rsMonth2.Open strMonth2, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		 Int = rsMonth("") + rsMonth2("")
		 Int2 = int * 3.5
		

		 End If

		End If



		If Session("Class") = "Bootcamp" Then

		  strMonth = "SELECT COUNT(Status) FROM attend_bootcamp WHERE dc_number LIKE '%" & intDC2 & "%' AND Status = 'P'" & _
			     "AND class_number = '" & Session("Number") & "' AND class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" 

		
		     Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		     rsMonth.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		int2 = rsMonth("") * 3

		End If
		    
		  
		  
		  
		
		 


		  
		If int2 <> "0" Then
		
		Response.Write _

		"<TR>" & _
	    "<TD>" & rsMaster("dc_number") & "</TD>" & _
	    "<TD>&nbsp;&nbsp;" & rsMaster("LastName") &",&nbsp"& rsMaster("First_Name") & "</TD>" & _
	    "<TD><Center>" & int2 & "</Center></TD>"

		End If


		
		
		End If


		Response.Write _
	
	  "</TR>"
	
	rsMaster.MoveNext
	
	Loop

	Response.Write "</Table>"


	
	
	rsMaster.Close
	Set rsMaster = Nothing
	

%>
</Center>
</Body>
</html>