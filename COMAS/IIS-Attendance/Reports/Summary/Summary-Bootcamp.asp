<!--#Include File="../../Global-Functions/Attend-Functions.asp"-->
<!-- #MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->

<html>
<body>
<%
	dim rsTeacher
	dim strSQL

	strSQL = "SELECT * FROM teachers_tbl WHERE class = 'Bootcamp'"

	Set rsTeacher = Server.CreateObject("ADODB.Recordset")
	rsTeacher.Open strSQL, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
%>

<Table Border="0">
<TR>
	<td>Department:
	<td>&nbsp;<U><%=rsTeacher("Class")%></U>
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

<%
	rsTeacher.Close
	Set rsTeacher = Nothing
%>

<br><br><br>
<table border="0"><Caption><H2><U>Sumter C.I. Monthly Attendance<BR>Summary Report</U></H2><BR></Caption>

<%

	dim rsClasses, strClasses, counter, arrayLength
	dim classArray(5)
	Set rsInsession = Server.CreateObject("ADODB.Recordset")
	Set rsADM1 = Server.CreateObject("ADODB.Recordset")
	Set rsADM2 = Server.CreateObject("ADODB.Recordset")
	
	strClasses = "SELECT DISTINCT Class_Number FROM Attend_Bootcamp WHERE class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 			 "AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Dept_Job = 'Student' ORDER BY Class_Number"

	Set rsClasses = Server.CreateObject("ADODB.Recordset")
	rsClasses.Open strClasses, eduConn, adOpenStatic, adLockReadOnly, adCmdText 
	
	counter = 0
	do while not rsClasses.EOF
		classArray(counter) = rsClasses("Class_Number")
		counter = counter + 1	
		rsClasses.MoveNext
	loop
	arrayLength = counter - 1
	
	Response.Write "<tr><TH>&nbsp;</TH>"
	
	for i = 0 to arrayLength
		Response.Write "<TH>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>" & _
					   "<TH><Center><U>" & classArray(i) & "</U></Center> </TH>"
	next
	
	Response.Write "</tr><tr><td>&nbsp;</tr><tr><td valign=center> Total Days in Session "
	
	for i = 0 to arrayLength
	
		strSQL = "SELECT COUNT(distinct class_date) FROM Attend_Bootcamp WHERE Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND subject LIKE '%" & Session("Dept") & "%'" & _
		  "AND Class_Number = '" & classArray(i) & "' And status = 'P' " & _
          "OR Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND subject LIKE '%" & Session("Dept") & "%'" & _
		  "AND Class_Number = '" & classArray(i) & "' And status = 'E'"
	
		rsInsession.Open strSQL, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		
		Response.Write "<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
 					   "<TD valign=center><Center><U>" & rsInsession("") & "</U></Center>"
	
		rsInsession.Close
		
	next
	
	Response.Write "</tr><tr><td>&nbsp;</tr><tr><td valign=center> Average Daily Membership "
	
	for i = 0 to arrayLength
	
		strADM1 = "SELECT COUNT(Class_Date) FROM Attend_Bootcamp WHERE Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND subject LIKE '%" & Session("Dept") & "%' AND Dept_Job = 'Student'" & _
		  "AND Class_Number = '" & classArray(i) & "'"
		strADM2 = "SELECT COUNT(distinct Class_Date) FROM Attend_Bootcamp WHERE Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND subject LIKE '%" & Session("Dept") & "%' AND Dept_Job = 'Student'" & _
	      "AND Class_Number = '" & classArray(i) & "'"
	
		rsADM1.Open strADM1, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		rsADM2.Open strADM2, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		
			If rsADM1("") <> "0" Then 
			
				intLarge1 = rsADM1("")
				intSmall1 = rsADM2("")

				intADM1 = intLarge1/intSmall1
				intADM2 = Left(intADM1, 4)
			
				Response.Write "<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
 							   "<TD valign=center><Center><U>" & intADM2 & "</U></Center>"
			
			End If
		
		rsADM1.Close
		rsADM2.Close
		
	next
	
	Response.Write "</tr><tr><td>&nbsp;</tr><tr><td valign=center> Average Daily Attendance "
	
	Set rsADA1 = Server.CreateObject("ADODB.Recordset")
	Set rsADA2 = Server.CreateObject("ADODB.Recordset")
	for i = 0 to arrayLength
	
		  strQ1 = "SELECT COUNT(Class_Date) FROM Attend_Bootcamp WHERE Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Status = 'p' AND subject LIKE '%" & Session("Dept") & "%'" & _
		"AND Dept_Job = 'Student' AND Class_Number = '" & classArray(i) & "'" & _
		"OR Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		"AND Status = 'E' AND subject LIKE '%" & Session("Dept") & "%'" & _
		"AND Dept_Job = 'Student' AND Class_Number = '" & classArray(i) & "'"

		  strQ2 = "SELECT COUNT(DISTINCT Class_Date) FROM Attend_Bootcamp WHERE Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Status = 'P' AND subject LIKE '%" & Session("Dept") & "%'" & _
		"AND Dept_Job = 'Student' AND Class_Number = '" & classArray(i) & "'" & _
		"OR Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		"AND Status = 'E' AND subject LIKE '%" & Session("Dept") & "%'" & _
		"AND Dept_Job = 'Student' AND Class_Number = '" & classArray(i) & "'"
		
		rsADA1.Open strQ1, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		rsADA2.Open strQ2, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
		  intADA1 = rsADA1("")
		  intADA2 = rsADA2("")
		  intADA3 = intADA1/intADA2
		  intADAc = Left(intADA3, 4)
	
		  Response.Write "<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
					     "<TD valign=center><Center><U>" & intADAc & "</U></Center>"
	
		  rsADA1.Close
		  rsADA2.Close
	next
	
	Response.Write "</tr><tr><td>&nbsp;</tr><tr><td valign=center> New Student Enrollment "
	
	Set rsNewstu = Server.CreateObject("ADODB.Recordset")
	
	for i = 0 to arrayLength
	
		  strNew = "SELECT COUNT(Status) FROM Attend_Bootcamp WHERE Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  "AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Dept_Job = 'Student'" & _
		  "AND Class_Number = '" & classArray(i) & "' AND Status = 'E'" & _
		  "OR Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  "AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
	      "AND Dept_Job = 'Student' AND Class_Number = '" & classArray(i) & "' AND Status = 'ENR'"
	
		  rsNewstu.Open strNew, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		  intNewstu = rsNewstu("")
		  Response.Write "<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
					     "<TD valign=center><Center><U>" & intNewstu & "</U></Center>"
		  rsNewstu.Close
	next
	
	Response.Write "</tr><tr><td>&nbsp;</tr><tr><td valign=center> Students Withdrawn "
	
	Set rsOldstu = Server.CreateObject("ADODB.Recordset")
	
	for i = 0 to arrayLength
	
		  strOld = "SELECT COUNT(status) FROM Attend_Bootcamp WHERE class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND  Subject LIKE '"&Session("Class")&"'AND dept_job = 'Student' AND status = 'ADC' AND Class_Number = '" & classArray(i) & "'" & _

                  "OR class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND  Subject LIKE '"&Session("Class")&"'AND dept_job = 'Student' AND status = 'ATT' AND Class_Number = '" & classArray(i) & "'" & _

					"OR class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND  Subject LIKE '"&Session("Class")&"'AND dept_job = 'Student' AND status = 'WTD' AND Class_Number = '" & classArray(i) & "'" & _

					"OR class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND  Subject LIKE '"&Session("Class")&"'AND dept_job = 'Student' AND status = 'CMP' AND Class_Number = '" & classArray(i) & "'" & _

					"OR class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND  Subject LIKE '"&Session("Class")&"'AND dept_job = 'Student' AND status = 'CXS' AND Class_Number = '" & classArray(i) & "'" & _

					"OR class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND  Subject LIKE '"&Session("Class")&"'AND dept_job = 'Student' AND status = 'RSD' AND Class_Number = '" & classArray(i) & "'" & _

					"OR class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND  Subject LIKE '"&Session("Class")&"'AND dept_job = 'Student' AND status = 'NLH' AND Class_Number = '" & classArray(i) & "'" & _

					"OR class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND  Subject LIKE '"&Session("Class")&"'AND dept_job = 'Student' AND status = 'REF' AND Class_Number = '" & classArray(i) & "'" & _

					"OR class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND  Subject LIKE '"&Session("Class")&"'AND dept_job = 'Student' AND status = 'RMV' AND Class_Number = '" & classArray(i) & "'" 
	
	rsOldstu.Open strOld, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
	intOldstu = rsOldstu("")
	
	Response.Write "<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
					"<TD valign=center><Center><U>" & intOldstu & "</U></Center>"
	
	rsOldstu.close
	next
	
	dim intHoursCumu 
	Response.Write "</tr><tr><td>&nbsp;</tr><tr><td valign=center> Class Hours "
    Set rsTotalHours = Server.CreateObject("ADODB.Recordset")
    for i = 0 to arrayLength
		  strTotalHours = "SELECT COUNT(Class_Number) FROM Attend_Bootcamp WHERE Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
			 " AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Status = 'P'" & _
			 " AND subject LIKE '%" & Session("Dept") & "%' AND Dept_Job = 'Student'" & _
		     " AND Class_Number = '" & classArray(i) & "' Or Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
			 " AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Status = 'E'" & _
			 " AND subject LIKE '%" & Session("Dept") & "%' AND Dept_Job = 'Student'" & _
			 " AND Class_Number = '" & classArray(i) & "'"
				 
		  rsTotalHours.Open strTotalHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		  intTotal = rsTotalHours("")
	      intTotalCalc = intTotal * 1.5
		  Response.Write "<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
					"<TD valign=center><Center><U>" & intTotalCalc & "</U></Center>"
					
		  intHoursCumu = intHoursCumu + intTotalCalc
		  rsTotalHours.Close
   next
   
   Response.Write "</tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</tr><tr><td valign=center> Total Students Seated "
   Set rsTotalStudents = Server.CreateObject("ADODB.Recordset")
   
   for i = 0 to arrayLength
   
		  strTotalStudents = "SELECT COUNT(Class_Date) FROM Attend_Bootcamp WHERE Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
			    "AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Status = 'P'" & _
			    "AND dept_job = 'Student' AND subject LIKE '%" & Session("Dept") & "%'" & _
			    "AND Class_Number = '" & classArray(i) & "' Or Class_Date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
				"AND Class_Date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Status = 'E'" & _
				"AND dept_job = 'Student' AND subject LIKE '%" & Session("Dept") & "%'" & _
			    "AND Class_Number = '" & classArray(i) & "'"
   
		  rsTotalStudents.Open strTotalStudents, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		  totalStu = totalStu + rsTotalStudents("")

		  rsTotalStudents.Close

    next
	Response.Write "<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
					"<TD valign=center><Center><U>" & totalStu & "</U></Center>"
		
    Response.Write "</tr><tr><td>&nbsp;</tr><tr><td valign=center> Total Class Hours " & _			
		           "<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
		           "<TD valign=center><Center><U>" & intHoursCumu & "</U></Center>"
%>