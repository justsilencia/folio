<!--#Include File="Connection.asp"-->
<!-- #METADATA TYPE="typelib"
	       FILE="H:\program files\common files\system\ado\msado15.dll" -->

<html>
<body>

<%

	strListampm = "SELECT DISTINCT(dc_number) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		      "AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		      "UNION " & _
		      "SELECT DISTINCT(dc_number) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		      "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' ORDER BY dc_number"



	Set rsListampm = Server.CreateObject("ADODB.Recordset")
	rsListampm.Open strListampm, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write _
	
	"<Table Border = ""1"" CellPadding = ""2"" CellSpacing=""0""><Caption><H2><U>" & Session("Month") & ", " & Session("Year") & "<BR>Youth-Basic - Hours</U></H2></Caption>" & _
	  "<TR>" & _
	    "<TH>#</TH>" & _
	    "<TH>DC</TH>" & _
	    "<TH>Name</TH>" & _
	    "<TH>Class</TH>" & _
	    "<TH>Monthly Hours</TH>" & _
	  "</TR>"



	Counter = "1"	

	Do While Not rsListampm.EOF



	 strStudent = "SELECT first_name, LastName, c.* FROM master_roster_tbl m INNER JOIN class_assignment_tbl c ON m.dc_number = c.dc_number" & _
		      " WHERE m.dc_number = '"&rsListampm("dc_number")&"'"



	 Set rsStudent = Server.CreateObject("ADODB.Recordset")
	 rsStudent.Open strStudent, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText


	
  If Not rsStudent.EOF Then

	

		  strMonth = "SELECT COUNT(Status_am) FROM attend_am_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_am = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = 'Youth-Basic'"

		 Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		 rsMonth.Open strMonth, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText


	If rsMonth("") <> "0" Then

		intAM = rsMonth("") * 3

	Else

		intAM = 0
	
	End if

		

		
		  strMonth2 = "SELECT COUNT(Status_pm) FROM attend_pm_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_pm = 'P'" & _
			      "AND Dept_Job = 'Student' AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			      "AND subject = 'Youth-Basic'"

		
		  Set rsMonth2 = Server.CreateObject("ADODB.RecordSet")
		  rsMonth2.Open strMonth, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText

		
	If rsMonth2("") <> "0" Then

		intPM = rsMonth2("") * 3

	Else

		intPM = 0

	End If
		 
	
	int2 = intAM + intPM
		

    

		



		If int2 <> "0" Then
		
		Response.Write _

		"<TR>" & _
			"<TD><Center><Font Size=""-2"">" & Counter & "</Font></Center></TD>" & _
	    		"<TD>&nbsp;" & rsStudent("dc_number") & "</TD>" & _
	    		"<TD>&nbsp;&nbsp;" & rsStudent("LastName") &",&nbsp"& rsStudent("First_Name") & "</TD>" & _
			"<TD>Youth-Basic</TD>" & _
	    		"<TD><Center>" & int2 & "</Center></TD>" & _
		"</TR>"


		Counter = Counter + 1

		End If

			

		End If



		rsListampm.MoveNext

		Loop

		Response.Write "</Table><BR><BR>"




	<!-- Script for Youth-Intermediate //-->




	Set rsListampm = Server.CreateObject("ADODB.Recordset")
	rsListampm.Open strListampm, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write _
	
	"<Table Border = ""1"" CellPadding = ""2"" CellSpacing=""0""><Caption><H2><U>" & Session("Month") & ", " & Session("Year") & "<BR>Youth-Intermediate - Hours</U></H2></Caption>" & _
	  "<TR>" & _
	    "<TH>#</TH>" & _
	    "<TH>DC</TH>" & _
	    "<TH>Name</TH>" & _
	    "<TH>Class</TH>" & _
	    "<TH>Monthly Hours</TH>" & _
	  "</TR>"



	Counter = "1"	

	Do While Not rsListampm.EOF



	 strStudent = "SELECT first_name, LastName, c.* FROM master_roster_tbl m INNER JOIN class_assignment_tbl c ON m.dc_number = c.dc_number" & _
		      " WHERE m.dc_number = '"&rsListampm("dc_number")&"'"



	 Set rsStudent = Server.CreateObject("ADODB.Recordset")
	 rsStudent.Open strStudent, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText


	
  If Not rsStudent.EOF Then

	

		  strMonth = "SELECT COUNT(Status_am) FROM attend_am_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_am = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = 'Youth-Intermediate'"

		 Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		 rsMonth.Open strMonth, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText


	If rsMonth("") <> "0" Then

		intAM = rsMonth("") * 3

	Else

		intAM = 0
	
	End if

		

		
		  strMonth2 = "SELECT COUNT(Status_pm) FROM attend_pm_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_pm = 'P'" & _
			      "AND Dept_Job = 'Student' AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			      "AND subject = 'Youth-Intermediate'"

		
		  Set rsMonth2 = Server.CreateObject("ADODB.RecordSet")
		  rsMonth2.Open strMonth, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText

		
	If rsMonth2("") <> "0" Then

		intPM = rsMonth2("") * 3

	Else

		intPM = 0

	End If
		 
	
	int2 = intAM + intPM
		

    

		



		If int2 <> "0" Then
		
		Response.Write _

		"<TR>" & _
			"<TD><Center><Font Size=""-2"">" & Counter & "</Font></Center></TD>" & _
	    		"<TD>&nbsp;" & rsStudent("dc_number") & "</TD>" & _
	    		"<TD>&nbsp;&nbsp;" & rsStudent("LastName") &",&nbsp"& rsStudent("First_Name") & "</TD>" & _
			"<TD>Youth-Intermediate</TD>" & _
	    		"<TD><Center>" & int2 & "</Center></TD>" & _
		"</TR>"


			Counter = Counter + 1

		End If

		

		End If



		rsListampm.MoveNext

		Loop

		Response.Write "</Table><BR><BR>"




		<!-- Script for Youth-GED //-->




	Set rsListampm = Server.CreateObject("ADODB.Recordset")
	rsListampm.Open strListampm, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write _
	
	"<Table Border = ""1"" CellPadding = ""2"" CellSpacing=""0""><Caption><H2><U>" & Session("Month") & ", " & Session("Year") & "<BR>Youth-GED - Hours</U></H2></Caption>" & _
	  "<TR>" & _
	    "<TH>#</TH>" & _
	    "<TH>DC</TH>" & _
	    "<TH>Name</TH>" & _
	    "<TH>Class</TH>" & _
	    "<TH>Monthly Hours</TH>" & _
	  "</TR>"



	Counter = "1"	

	Do While Not rsListampm.EOF



	 strStudent = "SELECT first_name, LastName, c.* FROM master_roster_tbl m INNER JOIN class_assignment_tbl c ON m.dc_number = c.dc_number" & _
		      " WHERE m.dc_number = '"&rsListampm("dc_number")&"'"



	 Set rsStudent = Server.CreateObject("ADODB.Recordset")
	 rsStudent.Open strStudent, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText


	
  If Not rsStudent.EOF Then

	

		  strMonth = "SELECT COUNT(Status_am) FROM attend_am_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_am = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = 'Youth-GED'"

		 Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		 rsMonth.Open strMonth, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText


	If rsMonth("") <> "0" Then

		intAM = rsMonth("") * 3

	Else

		intAM = 0
	
	End if

		

		
		  strMonth2 = "SELECT COUNT(Status_pm) FROM attend_pm_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_pm = 'P'" & _
			      "AND Dept_Job = 'Student' AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			      "AND subject = 'Youth-GED'"

		
		  Set rsMonth2 = Server.CreateObject("ADODB.RecordSet")
		  rsMonth2.Open strMonth, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText

		
	If rsMonth2("") <> "0" Then

		intPM = rsMonth2("") * 3

	Else

		intPM = 0

	End If
		 
	
	int2 = intAM + intPM
		

    

		



		If int2 <> "0" Then
		
		Response.Write _

		"<TR>" & _
			"<TD><Center><Font Size=""-2"">" & Counter & "</Font></Center></TD>" & _
	    		"<TD>&nbsp;" & rsStudent("dc_number") & "</TD>" & _
	    		"<TD>&nbsp;&nbsp;" & rsStudent("LastName") &",&nbsp"& rsStudent("First_Name") & "</TD>" & _
			"<TD>Youth-GED</TD>" & _
	    		"<TD><Center>" & int2 & "</Center></TD>" & _
		"</TR>"


			Counter = Counter + 1

		End If


		End If



		rsListampm.MoveNext

		Loop

		Response.Write "</Table><BR><BR>"



		<!-- Script for Masonry //-->




	Set rsListampm = Server.CreateObject("ADODB.Recordset")
	rsListampm.Open strListampm, conMas, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write _
	
	"<Table Border = ""1"" CellPadding = ""2"" CellSpacing=""0""><Caption><H2><U>" & Session("Month") & ", " & Session("Year") & "<BR>Masonry - Hours</U></H2></Caption>" & _
	  "<TR>" & _
	    "<TH>#</TH>" & _
	    "<TH>DC</TH>" & _
	    "<TH>Name</TH>" & _
	    "<TH>Class</TH>" & _
	    "<TH>Monthly Hours</TH>" & _
	  "</TR>"



	Counter = "1"	

	Do While Not rsListampm.EOF



	 strStudent = "SELECT first_name, LastName, c.* FROM master_roster_tbl m INNER JOIN class_assignment_tbl c ON m.dc_number = c.dc_number" & _
		      " WHERE m.dc_number = '"&rsListampm("dc_number")&"'"



	 Set rsStudent = Server.CreateObject("ADODB.Recordset")
	 rsStudent.Open strStudent, conMas, adOpenForwardOnly, adLockReadOnly, adCmdText


	
  If Not rsStudent.EOF Then

	

		  strMonth = "SELECT COUNT(Status_am) FROM attend_am_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_am = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = 'Masonry'"

		 Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		 rsMonth.Open strMonth, conMas, adOpenForwardOnly, adLockReadOnly, adCmdText


	If rsMonth("") <> "0" Then

		intAM = rsMonth("") * 3

	Else

		intAM = 0
	
	End if

		

		
		  strMonth2 = "SELECT COUNT(Status_pm) FROM attend_pm_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_pm = 'P'" & _
			      "AND Dept_Job = 'Student' AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			      "AND subject = 'Masonry'"

		
		  Set rsMonth2 = Server.CreateObject("ADODB.RecordSet")
		  rsMonth2.Open strMonth, conMas, adOpenForwardOnly, adLockReadOnly, adCmdText

		
	If rsMonth2("") <> "0" Then

		intPM = rsMonth2("") * 3

	Else

		intPM = 0

	End If
		 
	
	int2 = intAM + intPM
		

    

		



		If int2 <> "0" Then
		
		Response.Write _

		"<TR>" & _
			"<TD><Center><Font Size=""-2"">" & Counter & "</Font></Center></TD>" & _
	    		"<TD>&nbsp;" & rsStudent("dc_number") & "</TD>" & _
	    		"<TD>&nbsp;&nbsp;" & rsStudent("LastName") &",&nbsp"& rsStudent("First_Name") & "</TD>" & _
			"<TD>Masonry</TD>" & _
	    		"<TD><Center>" & int2 & "</Center></TD>" & _
		"</TR>"


			Counter = Counter + 1

		End If


		End If



		rsListampm.MoveNext

		Loop

		Response.Write "</Table><BR><BR>"



		<!-- Script for S-1 //-->




	Set rsListampm = Server.CreateObject("ADODB.Recordset")
	rsListampm.Open strListampm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write _
	
	"<Table Border = ""1"" CellPadding = ""2"" CellSpacing=""0""><Caption><H2><U>" & Session("Month") & ", " & Session("Year") & "<BR>S1 - Hours</U></H2></Caption>" & _
	  "<TR>" & _
	    "<TH>#</TH>" & _
	    "<TH>DC</TH>" & _
	    "<TH>Name</TH>" & _
	    "<TH>Class</TH>" & _
	    "<TH>Monthly Hours</TH>" & _
	  "</TR>"



	Counter = "1"	

	Do While Not rsListampm.EOF



	 strStudent = "SELECT first_name, LastName, c.* FROM master_roster_tbl m INNER JOIN class_assignment_tbl c ON m.dc_number = c.dc_number" & _
		      " WHERE m.dc_number = '"&rsListampm("dc_number")&"'"



	 Set rsStudent = Server.CreateObject("ADODB.Recordset")
	 rsStudent.Open strStudent, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	
  If Not rsStudent.EOF Then

	

		  strMonth = "SELECT COUNT(Status_am) FROM attend_am_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_am = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = 'S1'"

		 Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		 rsMonth.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	If rsMonth("") <> "0" Then

		intAM = rsMonth("") * 3

	Else

		intAM = 0
	
	End if

		

		
		  strMonth2 = "SELECT COUNT(Status_pm) FROM attend_pm_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_pm = 'P'" & _
			      "AND Dept_Job = 'Student' AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			      "AND subject = 'S1'"

		
		  Set rsMonth2 = Server.CreateObject("ADODB.RecordSet")
		  rsMonth2.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		
	If rsMonth2("") <> "0" Then

		intPM = rsMonth2("") * 3

	Else

		intPM = 0

	End If
		 
	
	int2 = intAM + intPM
		

    

		



		If int2 <> "0" Then
		
		Response.Write _

		"<TR>" & _
			"<TD><Center><Font Size=""-2"">" & Counter & "</Font></Center></TD>" & _
	    		"<TD>&nbsp;" & rsStudent("dc_number") & "</TD>" & _
	    		"<TD>&nbsp;&nbsp;" & rsStudent("LastName") &",&nbsp"& rsStudent("First_Name") & "</TD>" & _
			"<TD>S1</TD>" & _
	    		"<TD><Center>" & int2 & "</Center></TD>" & _
		"</TR>"


			Counter = Counter + 1

		End If


		End If



		rsListampm.MoveNext

		Loop

		Response.Write "</Table><BR><BR>"



		<!-- Script for S-2 //-->




	Set rsListampm = Server.CreateObject("ADODB.Recordset")
	rsListampm.Open strListampm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write _
	
	"<Table Border = ""1"" CellPadding = ""2"" CellSpacing=""0""><Caption><H2><U>" & Session("Month") & ", " & Session("Year") & "<BR>S2 - Hours</U></H2></Caption>" & _
	  "<TR>" & _
	    "<TH>#</TH>" & _
	    "<TH>DC</TH>" & _
	    "<TH>Name</TH>" & _
	    "<TH>Class</TH>" & _
	    "<TH>Monthly Hours</TH>" & _
	  "</TR>"



	Counter = "1"	

	Do While Not rsListampm.EOF



	 strStudent = "SELECT first_name, LastName, c.* FROM master_roster_tbl m INNER JOIN class_assignment_tbl c ON m.dc_number = c.dc_number" & _
		      " WHERE m.dc_number = '"&rsListampm("dc_number")&"'"



	 Set rsStudent = Server.CreateObject("ADODB.Recordset")
	 rsStudent.Open strStudent, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	
  If Not rsStudent.EOF Then

	

		  strMonth = "SELECT COUNT(Status_am) FROM attend_am_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_am = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = 'S2'"

		 Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		 rsMonth.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	If rsMonth("") <> "0" Then

		intAM = rsMonth("") * 3

	Else

		intAM = 0
	
	End if

		

		
		  strMonth2 = "SELECT COUNT(Status_pm) FROM attend_pm_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_pm = 'P'" & _
			      "AND Dept_Job = 'Student' AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			      "AND subject = 'S2'"

		
		  Set rsMonth2 = Server.CreateObject("ADODB.RecordSet")
		  rsMonth2.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		
	If rsMonth2("") <> "0" Then

		intPM = rsMonth2("") * 3

	Else

		intPM = 0

	End If
		 
	
	int2 = intAM + intPM
		

    

		



		If int2 <> "0" Then
		
		Response.Write _

		"<TR>" & _
			"<TD><Center><Font Size=""-2"">" & Counter & "</Font></Center></TD>" & _
	    		"<TD>&nbsp;" & rsStudent("dc_number") & "</TD>" & _
	    		"<TD>&nbsp;&nbsp;" & rsStudent("LastName") &",&nbsp"& rsStudent("First_Name") & "</TD>" & _
			"<TD>S2</TD>" & _
	    		"<TD><Center>" & int2 & "</Center></TD>" & _
		"</TR>"


			Counter = Counter + 1

		End If


		End If



		rsListampm.MoveNext

		Loop

		Response.Write "</Table><BR><BR>"



		<!-- Script for S-3 //-->




	Set rsListampm = Server.CreateObject("ADODB.Recordset")
	rsListampm.Open strListampm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write _
	
	"<Table Border = ""1"" CellPadding = ""2"" CellSpacing=""0""><Caption><H2><U>" & Session("Month") & ", " & Session("Year") & "<BR>S3 - Hours</U></H2></Caption>" & _
	  "<TR>" & _
	    "<TH>#</TH>" & _
	    "<TH>DC</TH>" & _
	    "<TH>Name</TH>" & _
	    "<TH>Class</TH>" & _
	    "<TH>Monthly Hours</TH>" & _
	  "</TR>"



	Counter = "1"	

	Do While Not rsListampm.EOF



	 strStudent = "SELECT first_name, LastName, c.* FROM master_roster_tbl m INNER JOIN class_assignment_tbl c ON m.dc_number = c.dc_number" & _
		      " WHERE m.dc_number = '"&rsListampm("dc_number")&"'"



	 Set rsStudent = Server.CreateObject("ADODB.Recordset")
	 rsStudent.Open strStudent, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	
  If Not rsStudent.EOF Then

	

		  strMonth = "SELECT COUNT(Status_am) FROM attend_am_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_am = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = 'S3'"

		 Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		 rsMonth.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	If rsMonth("") <> "0" Then

		intAM = rsMonth("") * 3

	Else

		intAM = 0
	
	End if

		

		
		  strMonth2 = "SELECT COUNT(Status_pm) FROM attend_pm_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_pm = 'P'" & _
			      "AND Dept_Job = 'Student' AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			      "AND subject = 'S3'"

		
		  Set rsMonth2 = Server.CreateObject("ADODB.RecordSet")
		  rsMonth2.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		
	If rsMonth2("") <> "0" Then

		intPM = rsMonth2("") * 3

	Else

		intPM = 0

	End If
		 
	
	int2 = intAM + intPM
		

    

		



		If int2 <> "0" Then
		
		Response.Write _

		"<TR>" & _
			"<TD><Center><Font Size=""-2"">" & Counter & "</Font></Center></TD>" & _
	    		"<TD>&nbsp;" & rsStudent("dc_number") & "</TD>" & _
	    		"<TD>&nbsp;&nbsp;" & rsStudent("LastName") &",&nbsp"& rsStudent("First_Name") & "</TD>" & _
			"<TD>S3</TD>" & _
	    		"<TD><Center>" & int2 & "</Center></TD>" & _
		"</TR>"


			Counter = Counter + 1

		End If


		End If



		rsListampm.MoveNext

		Loop

		Response.Write "</Table><BR><BR>"



		<!-- Script for S-4 //-->




	Set rsListampm = Server.CreateObject("ADODB.Recordset")
	rsListampm.Open strListampm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write _
	
	"<Table Border = ""1"" CellPadding = ""2"" CellSpacing=""0""><Caption><H2><U>" & Session("Month") & ", " & Session("Year") & "<BR>S4 - Hours</U></H2></Caption>" & _
	  "<TR>" & _
	    "<TH>#</TH>" & _
	    "<TH>DC</TH>" & _
	    "<TH>Name</TH>" & _
	    "<TH>Class</TH>" & _
	    "<TH>Monthly Hours</TH>" & _
	  "</TR>"



	Counter = "1"	

	Do While Not rsListampm.EOF



	 strStudent = "SELECT first_name, LastName, c.* FROM master_roster_tbl m INNER JOIN class_assignment_tbl c ON m.dc_number = c.dc_number" & _
		      " WHERE m.dc_number = '"&rsListampm("dc_number")&"'"



	 Set rsStudent = Server.CreateObject("ADODB.Recordset")
	 rsStudent.Open strStudent, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	
  If Not rsStudent.EOF Then

	

		  strMonth = "SELECT COUNT(Status_am) FROM attend_am_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_am = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND subject = 'S4'"

		 Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		 rsMonth.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	If rsMonth("") <> "0" Then

		intAM = rsMonth("") * 3

	Else

		intAM = 0
	
	End if

		

		
		  strMonth2 = "SELECT COUNT(Status_pm) FROM attend_pm_tbl WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status_pm = 'P'" & _
			      "AND Dept_Job = 'Student' AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			      "AND subject = 'S4'"

		
		  Set rsMonth2 = Server.CreateObject("ADODB.RecordSet")
		  rsMonth2.Open strMonth, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		
	If rsMonth2("") <> "0" Then

		intPM = rsMonth2("") * 3

	Else

		intPM = 0

	End If
		 
	
	int2 = intAM + intPM
		

    

		



		If int2 <> "0" Then
		
		Response.Write _

		"<TR>" & _
			"<TD><Center><Font Size=""-2"">" & Counter & "</Font></Center></TD>" & _
	    		"<TD>&nbsp;" & rsStudent("dc_number") & "</TD>" & _
	    		"<TD>&nbsp;&nbsp;" & rsStudent("LastName") &",&nbsp"& rsStudent("First_Name") & "</TD>" & _
			"<TD>S4</TD>" & _
	    		"<TD><Center>" & int2 & "</Center></TD>" & _
		"</TR>"


			Counter = Counter + 1

		End If


		End If



		rsListampm.MoveNext

		Loop

		Response.Write "</Table><BR><BR>"


		
		<!-- Script for Boot-Camp //-->



	strList = "SELECT DISTINCT(dc_number) FROM Attend_Bootcamp WHERE class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  "AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'"


	Set rsListampm = Server.CreateObject("ADODB.Recordset")
	rsListampm.Open strList, conBc, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write _
	
	"<Table Border = ""1"" CellPadding = ""2"" CellSpacing=""0""><Caption><H2><U>" & Session("Month") & ", " & Session("Year") & "<BR>Bootcamp - Hours</U></H2></Caption>" & _
	  "<TR>" & _
	    "<TH>#</TH>" & _
	    "<TH>DC</TH>" & _
	    "<TH>Name</TH>" & _
	    "<TH>Class</TH>" & _
	    "<TH>Monthly Hours</TH>" & _
	  "</TR>"



	Counter = "1"	

	Do While Not rsListampm.EOF



	 strStudent = "SELECT first_name, LastName, c.* FROM master_roster_tbl m INNER JOIN class_assignment_tbl c ON m.dc_number = c.dc_number" & _
		      " WHERE m.dc_number = '"&rsListampm("dc_number")&"'"



	 Set rsStudent = Server.CreateObject("ADODB.Recordset")
	 rsStudent.Open strStudent, conBc, adOpenForwardOnly, adLockReadOnly, adCmdText


	
  If Not rsStudent.EOF Then

	

		  strMonth = "SELECT COUNT(Status) FROM attend_bootcamp WHERE dc_number = '" & rsStudent("dc_number") & "' AND Status = 'P'" & _
			     "AND Dept_Job = 'Student' AND class_date >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'"

		 Set rsMonth = Server.CreateObject("ADODB.RecordSet")
		 rsMonth.Open strMonth, conBc, adOpenForwardOnly, adLockReadOnly, adCmdText


	If rsMonth("") <> "0" Then

		int2 = rsMonth("") * 3

	Else

		int2 = 0
	
	End if
		



		If int2 <> "0" Then
		
		Response.Write _

		"<TR>" & _
			"<TD><Center><Font Size=""-2"">" & Counter & "</Font></Center></TD>" & _
	    		"<TD>&nbsp;" & rsStudent("dc_number") & "</TD>" & _
	    		"<TD>&nbsp;&nbsp;" & rsStudent("LastName") &",&nbsp"& rsStudent("First_Name") & "</TD>" & _
			"<TD>Bootcamp</TD>" & _
	    		"<TD><Center>" & int2 & "</Center></TD>" & _
		"</TR>"


			Counter = Counter + 1

		End If


		End If



		rsListampm.MoveNext

		Loop

		Response.Write "</Table><BR><BR>"


	rsMonth.Close
	rsStudent.Close
	rsListampm.Close
	Set rsStudent = Nothing
	Set rsListampm = Nothing
	Set rsMonth = Nothing
%>







</Body>
</html>