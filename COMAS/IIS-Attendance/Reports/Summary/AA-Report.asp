 <!-- #Include File="Connection.asp" -->
<!-- #MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->

<html>
<body>


<Table Border="0" align="Right">

<TR>
	<TD>Year:
	<TD>&nbsp;<U><%=Session("Year")%></U>
</TR>
<TR>
	<td>Month:
	<td>&nbsp;<U><%=Session("Month")%></u>
</TR>
</Table>
<BR><BR><BR>

<Center>
<H1><U>Average Monthly Attendance Report</U></H1>
<BR>
<%
	<!-- Script for Total Days in Session //-->

	dim rsInsession1
	dim rsInsession2
	dim strSQL1
	dim strSQL2
	
	
	strSQL1 = "SELECT COUNT(distinct class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND subject = 'Youth-Basic'" & _
                  "AND dept_job = 'Student' AND status_am <> 'X' AND status_am <> '' AND status_am <> 'H'" 
	strSQL2 = "SELECT COUNT(distinct class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND subject = 'Youth-Basic'" & _
                  "AND dept_job = 'Student' AND status_pm <> 'X' AND status_pm <> '' AND status_pm <> 'H'" 

	Set rsInsession1 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession2 = Server.CreateObject("ADODB.Recordset")

	rsInsession1.Open strSQL1, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession2.Open strSQL2, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText




%>
<%
	<!-- Script for Average Daily Membership //-->

	dim rsInsession3
	dim rsInsession4
	dim rsInsession5
	dim rsInsession6
	dim strSQL3
	dim strSQL4
	dim strSQL5
	dim strSQL6
	
	
	strSQL3 = "SELECT COUNT(class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'P'" & _

	          "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'A'" & _

		  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'X'" & _

		  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'H'"

	strSQL4 = "SELECT COUNT(distinct class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'  AND subject = 'Youth-Basic'" & _ 
                  "AND Dept_Job = 'Student'"




	strSQL5 = "SELECT COUNT(class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'P'" & _

	          "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'A'" & _

		  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'X'" & _

		  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'H'"


	strSQL6 = "SELECT COUNT(distinct class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" 









	Set rsInsession3 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession4 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession5 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession6 = Server.CreateObject("ADODB.Recordset")

	rsInsession3.Open strSQL3, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession4.Open strSQL4, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession5.Open strSQL5, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession6.Open strSQL6, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText

	If rsInsession3("") <> "0" Then 

	dim intLargeam
	dim intSmallam
	intLargeam = rsInsession3("")
	intSmallam = rsInsession4("")

	Dim intADMam
	Dim intADMamConvert

	intADMam = intLargeam/intSmallam
	intADMamConvert = Left(intADMam, 4)
	
	End If

	If rsInsession5("") <> "0" Then
	
	dim intLargepm
	dim intSmallpm

	intLargepm = rsInsession5("")
	intSmallpm = rsInsession6("")
	
	Dim intADMpm
	Dim intADMpmConvert
	
	
	intADMpm = intLargepm/intSmallpm
	intADMpmConvert = Left(intADMpm, 4)

	End If

%>
<%
	<!-- Script for Average Daily Attendance //-->
	
	dim rsADA1
	dim rsADA2
	dim rsADA3
	dim rsADA4
	dim strQ1
	dim strQ2
	dim strQ3
	dim strQ4

	strQ1 = "SELECT COUNT(class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_am = 'p' AND subject = 'Youth-Basic'" & _
		"AND Dept_Job = 'Student'" & _
                
                "OR class_date_am >= '"&Session("Month3")&"/1/2013'  AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
                "AND status_am = 'E' AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" & _

                "OR class_date_am >= '"&Session("Month3")&"/1/2013' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
		"AND status_am = 'LP' AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" 

 

	strQ2 = "SELECT COUNT(DISTINCT class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_am = 'p' AND subject = 'Youth-Basic'" & _
		"AND Dept_Job = 'Student'"  & _
                "AND status_am <> 'X' AND status_am <> '' AND status_am <> 'H'" 

	strQ3 = "SELECT COUNT(class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_pm = 'p' AND subject = 'Youth-Basic'" & _
		"AND Dept_Job = 'Student'" & _
                
                "OR class_date_pm >= '"&Session("Month3")&"/1/2013'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
                "AND status_pm = 'E' AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" & _

                "OR class_date_pm >= '"&Session("Month3")&"/1/2013' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
		"AND status_pm = 'LP' AND subject = 'Youth-Basic' AND Dept_Job = 'Student'" 


	strQ4 = "SELECT COUNT(DISTINCT class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_pm = 'p' AND subject = 'Youth-Basic'" & _
		"AND Dept_Job = 'Student'"  


	Set rsADA1 = Server.CreateObject("ADODB.Recordset")
	Set rsADA2 = Server.CreateObject("ADODB.Recordset")
	Set rsADA3 = Server.CreateObject("ADODB.Recordset")
	Set rsADA4 = Server.CreateObject("ADODB.Recordset")
	
	rsADA1.Open strQ1, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA2.Open strQ2, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA3.Open strQ3, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA4.Open strQ4, conYb, adOpenForwardOnly, adLockReadOnly, adCmdText

	If rsADA2("") <> "0" Then

	dim intADAam1
	dim intADAam2
	dim intADAam3
	dim intADAconvertam

	intADAam1 = rsADA1("")
	intADAam2 = rsADA2("")
	intADAam3 = intADAam1/intADAam2
	intADAconvertam = Left(intADAam3, 4)

	End If

	If rsADA4("") <> "0" Then

	dim intADApm1
	dim intADApm2
	dim intADApm3
	dim intADAconvertpm
	
	intADApm1 = rsADA3("")
	intADApm2 = rsADA4("")
	intADApm3 = intADApm1/intADApm2
	intADAconvertpm = Left(intADApm3, 4)

	End If	

%>




<BR><BR><br>
<table border="0"><Caption><H2><U>Youth-Basic</U></H2></Caption>
<tr>
	<TH>&nbsp;</TH>
	<TH>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
	<TH><Center><U>AM</U></Center> </TH>
	<TH>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<TH><Center><U>PM</U></Center> </TH>
</tr>
<TR>
	<TD>&nbsp;
</TR>
<tr>
	<TD valign="center"> Total Days in Session 
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <Center><U><%=rsInsession1("")%></U> </Center>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <Center><U><%=rsInsession2("")%></U> </Center>
</TR>
<TR>
	<TD>&nbsp;
</TR>
<TR>
	<TD valign="center">Average Daily Membership
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <U><Center><%=intADMamConvert%></Center></U> 
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <U><Center><%=intADMpmConvert%></Center></U> 
</TR>
<TR>
	<TD>&nbsp;
</TR>
<TR>
	<TD valign="center">Average Daily Attendance
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <Center><U><%=intADAconvertam%></U> </Center>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <Center><U><%=intADAconvertpm%></U> </Center>
</TR>



</Table>
<BR><BR>




<%
								<!-- Script for Youth-Intermediate //-->


	

	 



	<!-- Script for Average Daily Membership //-->



	
	strSQL3 = "SELECT COUNT(class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'P'" & _

	          "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'A'" & _

		  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'X'" & _

		  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'H'"

	strSQL4 = "SELECT COUNT(distinct class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'  AND subject = 'Youth-Intermediate'" & _ 
                  "AND Dept_Job = 'Student'"




	strSQL5 = "SELECT COUNT(class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'P'" & _

	          "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'A'" & _

		  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'X'" & _

		  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'H'"


	strSQL6 = "SELECT COUNT(distinct class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" 









	Set rsInsession3 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession4 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession5 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession6 = Server.CreateObject("ADODB.Recordset")

	rsInsession3.Open strSQL3, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession4.Open strSQL4, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession5.Open strSQL5, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession6.Open strSQL6, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText

	If rsInsession3("") <> "0" Then 

	
	intLargeam = rsInsession3("")
	intSmallam = rsInsession4("")

	

	intADMam = intLargeam/intSmallam
	intADMamConvert = Left(intADMam, 4)
	
	End If

	If rsInsession5("") <> "0" Then
	
	

	intLargepm = rsInsession5("")
	intSmallpm = rsInsession6("")
	
	
	
	
	intADMpm = intLargepm/intSmallpm
	intADMpmConvert = Left(intADMpm, 4)

	End If

%>
<%
	<!-- Script for Average Daily Attendance //-->
	

	strQ1 = "SELECT COUNT(class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_am = 'p' AND subject = 'Youth-Intermediate'" & _
		"AND Dept_Job = 'Student'" & _
                
                "OR class_date_am >= '"&Session("Month3")&"/1/2013'  AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
                "AND status_am = 'E' AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" & _

                "OR class_date_am >= '"&Session("Month3")&"/1/2013' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
		"AND status_am = 'LP' AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" 

 

	strQ2 = "SELECT COUNT(DISTINCT class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_am = 'p' AND subject = 'Youth-Intermediate'" & _
		"AND Dept_Job = 'Student'"  & _
                "AND status_am <> 'X' AND status_am <> '' AND status_am <> 'H'" 

	strQ3 = "SELECT COUNT(class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_pm = 'p' AND subject = 'Youth-Intermediate'" & _
		"AND Dept_Job = 'Student'" & _
                
                "OR class_date_pm >= '"&Session("Month3")&"/1/2013'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
                "AND status_pm = 'E' AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" & _

                "OR class_date_pm >= '"&Session("Month3")&"/1/2013' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
		"AND status_pm = 'LP' AND subject = 'Youth-Intermediate' AND Dept_Job = 'Student'" 


	strQ4 = "SELECT COUNT(DISTINCT class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_pm = 'p' AND subject = 'Youth-Intermediate'" & _
		"AND Dept_Job = 'Student'"  


	Set rsADA1 = Server.CreateObject("ADODB.Recordset")
	Set rsADA2 = Server.CreateObject("ADODB.Recordset")
	Set rsADA3 = Server.CreateObject("ADODB.Recordset")
	Set rsADA4 = Server.CreateObject("ADODB.Recordset")
	
	rsADA1.Open strQ1, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA2.Open strQ2, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA3.Open strQ3, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA4.Open strQ4, conYi, adOpenForwardOnly, adLockReadOnly, adCmdText

	If rsADA2("") <> "0" Then



	intADAam1 = rsADA1("")
	intADAam2 = rsADA2("")
	intADAam3 = intADAam1/intADAam2
	intADAconvertam = Left(intADAam3, 4)

	End If

	If rsADA4("") <> "0" Then


	
	intADApm1 = rsADA3("")
	intADApm2 = rsADA4("")
	intADApm3 = intADApm1/intADApm2
	intADAconvertpm = Left(intADApm3, 4)

	End If	

%>




<BR><BR><br>
<table border="0"><Caption><H2><U>Youth-Intermediate</U></H2></Caption>
<tr>
	<TH>&nbsp;</TH>
	<TH>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
	<TH><Center><U>AM</U></Center> </TH>
	<TH>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<TH><Center><U>PM</U></Center> </TH>
</tr>
<TR>
	<TD>&nbsp;
</TR>
<tr>
	<TD valign="center"> Total Days in Session 
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <Center><U><%=rsInsession1("")%></U> </Center>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <Center><U><%=rsInsession2("")%></U> </Center>
</TR>
<TR>
	<TD>&nbsp;
</TR>

<TR>
	<TD valign="center">Average Daily Membership
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <U><Center><%=intADMamConvert%></Center></U> 
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <U><Center><%=intADMpmConvert%></Center></U> 
</TR>
<TR>
	<TD>&nbsp;
</TR>
<TR>
	<TD valign="center">Average Daily Attendance
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <Center><U><%=intADAconvertam%></U> </Center>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <Center><U><%=intADAconvertpm%></U> </Center>
</TR>



</Table>
<BR><BR>


<%
								<!-- Script for Youth-GED //-->


	<!-- Script for Average Daily Membership //-->

	
	
	
	strSQL3 = "SELECT COUNT(class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-GED' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'P'" & _

	          "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-GED' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'A'" & _

		  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-GED' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'X'" & _

		  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-GED' AND Dept_Job = 'Student'" & _
		  "AND status_am = 'H'"

	strSQL4 = "SELECT COUNT(distinct class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'  AND subject = 'Youth-GED'" & _ 
                  "AND Dept_Job = 'Student'"




	strSQL5 = "SELECT COUNT(class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-GED' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'P'" & _

	          "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-GED' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'A'" & _

		  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-GED' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'X'" & _

		  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = 'Youth-GED' AND Dept_Job = 'Student'" & _
		  "AND status_pm = 'H'"


	strSQL6 = "SELECT COUNT(distinct class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND subject = 'Youth-GED' AND Dept_Job = 'Student'" 









	Set rsInsession3 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession4 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession5 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession6 = Server.CreateObject("ADODB.Recordset")

	rsInsession3.Open strSQL3, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession4.Open strSQL4, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession5.Open strSQL5, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession6.Open strSQL6, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText

	If rsInsession3("") <> "0" Then 

	
	intLargeam = rsInsession3("")
	intSmallam = rsInsession4("")

	

	intADMam = intLargeam/intSmallam
	intADMamConvert = Left(intADMam, 4)
	
	End If

	If rsInsession5("") <> "0" Then
	
	

	intLargepm = rsInsession5("")
	intSmallpm = rsInsession6("")
	
	
	
	
	intADMpm = intLargepm/intSmallpm
	intADMpmConvert = Left(intADMpm, 4)

	End If

%>
<%
	<!-- Script for Average Daily Attendance //-->
	

	strQ1 = "SELECT COUNT(class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_am = 'p' AND subject = 'Youth-GED'" & _
		"AND Dept_Job = 'Student'" & _
                
                "OR class_date_am >= '"&Session("Month3")&"/1/2013'  AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
                "AND status_am = 'E' AND subject = 'Youth-GED' AND Dept_Job = 'Student'" & _

                "OR class_date_am >= '"&Session("Month3")&"/1/2013' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
		"AND status_am = 'LP' AND subject = 'Youth-GED' AND Dept_Job = 'Student'" 

 

	strQ2 = "SELECT COUNT(DISTINCT class_date_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_am = 'p' AND subject = 'Youth-GED'" & _
		"AND Dept_Job = 'Student'"  & _
                "AND status_am <> 'X' AND status_am <> '' AND status_am <> 'H'" 

	strQ3 = "SELECT COUNT(class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_pm = 'p' AND subject = 'Youth-GED'" & _
		"AND Dept_Job = 'Student'" & _
                
                "OR class_date_pm >= '"&Session("Month3")&"/1/2013'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
                "AND status_pm = 'E' AND subject = 'Youth-GED' AND Dept_Job = 'Student'" & _

                "OR class_date_pm >= '"&Session("Month3")&"/1/2013' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/2013'" & _
		"AND status_pm = 'LP' AND subject = 'Youth-GED' AND Dept_Job = 'Student'" 


	strQ4 = "SELECT COUNT(DISTINCT class_date_pm) FROM attend_pm_tbl WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		"AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_pm = 'p' AND subject = 'Youth-GED'" & _
		"AND Dept_Job = 'Student'"  


	Set rsADA1 = Server.CreateObject("ADODB.Recordset")
	Set rsADA2 = Server.CreateObject("ADODB.Recordset")
	Set rsADA3 = Server.CreateObject("ADODB.Recordset")
	Set rsADA4 = Server.CreateObject("ADODB.Recordset")
	
	rsADA1.Open strQ1, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA2.Open strQ2, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA3.Open strQ3, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA4.Open strQ4, conYg, adOpenForwardOnly, adLockReadOnly, adCmdText

	If rsADA2("") <> "0" Then



	intADAam1 = rsADA1("")
	intADAam2 = rsADA2("")
	intADAam3 = intADAam1/intADAam2
	intADAconvertam = Left(intADAam3, 4)

	End If

	If rsADA4("") <> "0" Then


	
	intADApm1 = rsADA3("")
	intADApm2 = rsADA4("")
	intADApm3 = intADApm1/intADApm2
	intADAconvertpm = Left(intADApm3, 4)

	End If	

%>




<BR><BR><br>
<table border="0"><Caption><H2><U>Youth-GED</U></H2></Caption>
<tr>
	<TH>&nbsp;</TH>
	<TH>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
	<TH><Center><U>AM</U></Center> </TH>
	<TH>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<TH><Center><U>PM</U></Center> </TH>
</tr>
<TR>
	<TD>&nbsp;
</TR>


<TR>
	<TD valign="center">Average Daily Membership
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <U><Center><%=intADMamConvert%></Center></U> 
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <U><Center><%=intADMpmConvert%></Center></U> 
</TR>
<TR>
	<TD>&nbsp;
</TR>
<TR>
	<TD valign="center">Average Daily Attendance
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <Center><U><%=intADAconvertam%></U> </Center>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <Center><U><%=intADAconvertpm%></U> </Center>
</TR>



</Table>






<%

	rsInsession1.Close
	rsInsession2.Close
	rsInsession3.Close
	rsInsession4.Close
	rsInsession5.Close
	rsInsession6.Close
	rsADA1.Close
	rsADA2.Close
	rsADA3.Close
	rsADA4.Close
	
	Set rsInsession1 = Nothing
	Set rsInsession2 = Nothing
	Set rsInsession3 = Nothing
	Set rsInsession4 = Nothing
	Set rsInsession5 = Nothing
	Set rsInsession6 = Nothing
	Set rsADA1 = Nothing
	Set rsADA2 = Nothing
	Set rsADA3 = Nothing
	Set rsADA4 = Nothing

	
%>
</body>
</html>
	