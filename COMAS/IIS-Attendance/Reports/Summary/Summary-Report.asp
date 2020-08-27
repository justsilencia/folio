<!-- #Include File="Connection.asp" -->
<!-- #MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->

<html>
<body>

<%
	dim strClass
	dim strComp
	If Session("Class") = "Y1" Then

		strClass = "Y1"
		strComp = "18+Ac"

	End If

	If Session("Class") = "Y2" Then

		strClass = "Y2"
		strComp = "18+Ac"

	End If

	If Session("Class") = "Y3" Then

		strClass = "Y3"
		strComp = "18+Ac"

	End If

	If Session("Class") = "Y4" Then

		strClass = "Y4"
		strComp = "17-Ac"

	End If

	If Session("Class") = "Y5" Then

		strClass = "Y5"
		strComp = "17-Ac"

	End If
	
	If Session("Class") = "Horticulture" Then

		strClass = "Horticulture"
		strComp = "17-Ac"

	End If

	If Session("Class") = "S1" Then

		strClass = "S1"
		strComp = "Adult"

	End If

	If Session("Class") = "S2" Then

		strClass = "S2"
		strComp = "Adult"

	End If

	If Session("Class") = "S3" Then

		strClass = "S3"
		strComp = "Adult"

	End If

	If Session("Class") = "S4" Then

		strClass = "S4"
		strComp = "Adult"

	End If

	If Session("Class") = "Youth-Masonry" Then

		strClass = "yMasonry"
		strComp = "18+Ac"

	End If

	If Session("Class") = "Masonry" Then

		strClass = "Masonry"
		strComp = "Adult"

	End If

	If Session("Class") = "Marine-Tech" Then

		strClass = "auto"
		strComp = "Adult"

	End If

	If Session("Class") = "Energy-Tech" Then

		strClass = "Elec"
		strComp = "Adult"

	End If

	If Session("Class") = "Automotive" Then

		strClass = "auto"
		strComp = "Adult"

	End If


%>


<%	
	dim rsTeacher
	dim strSQL

	strSQL = "SELECT * FROM teachers_tbl WHERE class = '"&Session("Class")&"'"

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
<%
	<!-- Script for Total Days in Session //-->

	dim rsInsession1
	dim rsInsession2
	dim strSQL1
	dim strSQL2
	
	
	strSQL1 = "SELECT COUNT(distinct class_date_am) FROM attend_am_"&strClass&" WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND subject = '"&Session("Class")&"'" & _
                  " AND status_am <> 'X' AND status_am <> '' AND status_am <> 'ENR' AND status_am <> 'RMV' AND status_am <> 'H' AND status_am <> 'CMP' AND status_am <> 'RSD' AND status_am <> 'ADC'" 
	strSQL2 = "SELECT COUNT(distinct class_date_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND subject = '"&Session("Class")&"'" & _
                  " AND status_pm <> 'X' AND status_pm <> 'ENR' AND status_pm <> 'RMV' AND status_pm <> '' AND status_pm <> 'H' AND status_pm <> 'CMP' AND status_pm <> 'RSD' AND status_pm <> 'ADC'" 

	Set rsInsession1 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession2 = Server.CreateObject("ADODB.Recordset")

	rsInsession1.Open strSQL1, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession2.Open strSQL2, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText




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
	
	
	strSQL3 = "SELECT COUNT(class_date_am) FROM attend_am_"&strClass&" WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = '"&Session("Class")&"' " & _
		  "AND status_am = 'P'" & _		
 
		  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = '"&Session("Class")&"' " & _
		  "AND status_am = 'A'" & _

		  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = '"&Session("Class")&"' " & _
		  "AND status_am = 'H'" & _

		  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = '"&Session("Class")&"' " & _
		  "AND status_am = 'E'" & _

		  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = '"&Session("Class")&"' " & _
		  "AND status_am = 'X'" 


	strSQL4 = "SELECT COUNT(distinct class_date_am) FROM attend_am_"&strClass&" WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'  AND subject = '"&Session("Class")&"'" & _ 
                  " AND status_am <> 'RSD' AND status_am <> 'NLH'" & _
		  "AND status_am <> 'CMP' AND status_am <> 'ATT' AND status_am <> 'WTD' AND status_am <> 'ADC'"




	strSQL5 = "SELECT COUNT(class_date_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = '"&Session("Class")&"' " & _
		  "AND status_pm = 'P'" & _

		  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = '"&Session("Class")&"' " & _
		  "AND status_pm = 'A'" & _


		  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = '"&Session("Class")&"' " & _
		  "AND status_pm = 'H'" & _

		  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = '"&Session("Class")&"' " & _
		  "AND status_pm = 'E'" & _	

		  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		  "AND subject = '"&Session("Class")&"' " & _
		  "AND status_pm = 'X'" 


	strSQL6 = "SELECT COUNT(distinct class_date_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
	 	  "AND Class_Date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                  "AND subject = '"&Session("Class")&"'  AND status_pm <> 'RSD' AND status_pm <> 'NLH'" & _
		  "AND status_pm <> 'CMP' AND status_pm <> 'ATT' AND status_pm <> 'WTD' AND status_pm <> 'ADC'"









	Set rsInsession3 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession4 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession5 = Server.CreateObject("ADODB.Recordset")
	Set rsInsession6 = Server.CreateObject("ADODB.Recordset")

	rsInsession3.Open strSQL3, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession4.Open strSQL4, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession5.Open strSQL5, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsInsession6.Open strSQL6, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

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

	strQ1 = "SELECT COUNT(status_am) FROM attend_am_"&strClass&" WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_am = 'P'" & _
		    "AND Subject LIKE '%" & Session("Class") & "%' "  & _
            "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
            "AND status_am = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
            "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
            "AND status_am = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

 

	strQ2 = "SELECT COUNT(DISTINCT class_date_am) FROM attend_am_"&strClass&" WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    " AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    " AND Subject LIKE '%" & Session("Class") & "%' AND status_am = 'E'" & _
            " Or class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    " AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    " AND Subject LIKE '%" & Session("Class") & "%' AND status_am = 'P'" & _
            " Or class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    " AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    " AND Subject LIKE '%" & Session("Class") & "%' AND status_am = 'A'" 

	strQ3 = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_pm = 'P'" & _
		    "AND Subject LIKE '%" & Session("Class") & "%' "  & _
            "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
            "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
            "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
            "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 


	strQ4 = "SELECT COUNT(DISTINCT class_date_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    " AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    " AND Subject LIKE '%" & Session("Class") & "%' AND status_pm = 'E'" & _
            " Or class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    " AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    " AND Subject LIKE '%" & Session("Class") & "%' AND status_pm = 'P'" & _
            " Or class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    " AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    " AND Subject LIKE '%" & Session("Class") & "%' AND status_pm = 'A'" 


	Set rsADA1 = Server.CreateObject("ADODB.Recordset")
	Set rsADA2 = Server.CreateObject("ADODB.Recordset")
	Set rsADA3 = Server.CreateObject("ADODB.Recordset")
	Set rsADA4 = Server.CreateObject("ADODB.Recordset")
	
	rsADA1.Open strQ1, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA2.Open strQ2, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA3.Open strQ3, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsADA4.Open strQ4, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

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


<%
	<!-- Script for Total Students Seated //-->

	dim rsTotalStudentsAM
	dim rsTotalStudentsPM
	dim strTotalStudentsAM
	dim strTotalStudentsPM
	dim stuTotalAM
	dim stuTotalPM
	dim stuTotal

	strTotalStudentsAM = "SELECT COUNT(class_date_am) FROM attend_am_"&strClass&" WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
			     "AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_am = 'P'" & _
			     " AND subject = '"&Session("Class")&"'"

	strTotalStudentsPM = "SELECT COUNT(class_date_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
			     "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_pm = 'P'" & _
			     " AND subject = '"&Session("Class")&"'"

	Set rsTotalStudentsAM = Server.CreateObject("ADODB.Recordset")
	Set rsTotalStudentsPM = Server.CreateObject("ADODB.Recordset")

	rsTotalStudentsAM.Open strTotalStudentsAM, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsTotalStudentsPM.Open strTotalStudentsPM, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	stuTotalAM = rsTotalStudentsAM("")
	stuTotalPM = rsTotalStudentsPM("")

	stuTotal = stuTotalAM + stuTotalPM
%>

<%
	<!-- Script for New Student Enrollment //-->

	dim rsNewstuam
	dim rsNewstupm
	dim strNewam
	dim strNewpm

	strNewam = "SELECT COUNT(status_am) FROM attend_am_"&strClass&" WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_am = 'E'" & _
                   "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		   "and class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		   "AND Subject = '"&Session("Class")&"'" & _
		   " AND status_am = 'ENR'"
	strNewpm = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_pm = 'E'" & _
                   "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		   "and class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		   "AND Subject = '"&Session("Class")&"'" & _
		   " AND status_pm = 'ENR'"                
                   
		   
		   


	Set rsNewstuam = Server.CreateObject("ADODB.Recordset")
	Set rsNewstupm = Server.CreateObject("ADODB.Recordset")

	rsNewstuam.Open strNewam, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsNewstupm.Open strNewpm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	intNewstuam = rsNewstuam("")
	intNewstupm = rsNewstupm("")
%>


<%
	<!-- Script for Students Withdrawn //-->

	dim rsOldstuam
	dim rsOldstupm
	dim strOldam
	dim strOldpm

	strOldam = "SELECT COUNT(status_am) FROM attend_am_"&strClass&" WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_am = 'ADC'" & _

                   "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_am = 'ATT'" & _

		   "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_am = 'WTD'" & _

	           "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_am = 'CMP'" & _

		   "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_am = 'CXS'"  & _

		   "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_am = 'RSD'" & _

		   "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_am = 'NLH'" & _

		   "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_am = 'REF'" & _

		   "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_am = 'RMV'"




                   

	strOldpm = "SELECT COUNT(status_PM) FROM attend_PM_"&strClass&" WHERE class_date_PM >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_PM <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_PM = 'ADC'" & _

                   "OR class_date_PM >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_PM <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_PM = 'ATT'" & _

		   "OR class_date_PM >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_PM <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_PM = 'WTD'" & _

	           "OR class_date_PM >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_PM <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_PM = 'CMP'" & _

		   "OR class_date_PM >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_PM <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_PM = 'CXS'"  & _

		   "OR class_date_PM >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_PM <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_PM = 'RSD'" & _

		   "OR class_date_PM >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_PM <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_PM = 'NLH'" & _

		   "OR class_date_PM >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_PM <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_PM = 'REF'" & _

		   "OR class_date_PM >= '"&Session("Month3")&"/1/"&Session("Year")&"'AND class_date_PM <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                   "AND  Subject = '"&Session("Class")&"' AND status_PM = 'RMV'"

	Set rsOldstuam = Server.CreateObject("ADODB.Recordset")
	Set rsOldstupm = Server.CreateObject("ADODB.Recordset")

	rsOldstuam.Open strOldam, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsOldstupm.Open strOldpm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	intOldstuam = rsOldstuam("")
	intOldstupm = rsOldstupm("")
%>
<%
	<!-- Script for Total Class Hours //-->

	dim rsTotalHoursam
	dim rsTotalHourspm
	dim strTotalHoursam
	dim strTotalHourspm
	
	strTotalHoursam = "SELECT class_date_am FROM attend_am_"&strClass&" WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    "AND Subject = '"&Session("Class")&"' " & _
                    "AND status_am <> 'X'" & _
                    "AND status_am <> '' AND status_am <> 'H' AND status_am <> 'CMP' AND status_am <> 'RSD' AND status_am <> 'A' AND status_am <> 'NLH' AND status_am <> 'ADC'"
	strTotalHourspm = "SELECT class_date_pm FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    "AND Subject = '"&Session("Class")&"' " & _
                    "AND status_pm <> 'X'" & _
                    "AND status_pm <> '' AND status_pm <> 'H' AND status_pm <> 'CMP' AND status_pm <> 'RSD' AND status_pm <> 'A' AND status_pm <> 'NLH' AND status_pm <> 'ADC'"

	Set rsTotalHoursam = Server.CreateObject("ADODB.Recordset")
	Set rsTotalHourspm = Server.CreateObject("ADODB.Recordset")

	rsTotalHoursam.Open strTotalHoursam, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsTotalHourspm.Open strTotalHourspm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	dim intTotalam 
	dim intTotalpm 
	dim intTotalamCalc
	dim intTotalpmCalc
	dim intTotalampmCalc
	dim getAmHours
	dim getPmHours
	dim rsAm
	dim rsPm
	intTotalam = 0
	intTotalpm = 0
	Set rsAm = Server.CreateObject("ADODB.Recordset")
	Set rsPm = Server.CreateObject("ADODB.Recordset")
	Do While Not rsTotalHoursam.EOF
	
		getAmHours = "Select Date, Hours From Classam_Hours Where date = '" & rsTotalHoursam("class_date_am") & "' And class = '" & strComp & "'"
		rsAm.Open getAmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		
		If Not rsAm.EOF Then
			intTotalam = intTotalam + rsAm("Hours")
		Else
			intTotalam = intTotalam + 3
		End If

	rsAm.Close
	rsTotalHoursam.MoveNext
	Loop
	
	Do While Not rsTotalHourspm.EOF
	
		getPmHours = "Select Date, Hours From Classpm_Hours Where date = '" & rsTotalHourspm("class_date_pm") & "' And class = '" & strComp & "'"
		rsPm.Open getPmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		
		If Not rsPm.EOF Then
			intTotalpm = intTotalpm + rsPm("Hours")
		Else
			intTotalpm = intTotalpm + 3
		End If
	rsPm.Close
	rsTotalHourspm.MoveNext
	Loop

	intTotalampmCalc = intTotalam + intTotalpm
%>

<BR><BR><br>
<table border="0"><Caption><H2><U>Sumter C.I. Monthly Attendance<BR>Summary Report</U></H2></Caption>
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
<TR>
	<TD>&nbsp;
</TR>
<TR>
	<TD valign="center">New Student Enrollment
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <Center><U><%=intNewstuam%></U> </Center>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <Center><U><%=intNewstupm%></U> </Center>
</TR>
<TR>
	<TD>&nbsp;
</TR>
<TR>
	<TD valign="center">Students Withdrawn
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <Center><U><%=intOldstuam%></U> </Center>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <Center><U><%=intOldstupm%></U> </Center>
</TR>
<TR>
	<TD>&nbsp;
</TR>
<TR>
	<TD valign="center">Total Class Hours
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <Center><U><%=FormatNumber(intTotalam, 2, vbtrue, vbfalse, vbtrue)%></U> </Center>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<TD valign="center"> <Center><U><%=FormatNumber(intTotalpm, 2, vbtrue, vbfalse, vbtrue)%></U></Center>
</TR>
<TR>
	<TD>&nbsp;
</TR>
<TR>
	<TD>&nbsp;
</TR>



<TR>
	<TD valign="center">Total AM & PM Class Hours
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	<TD valign="center"> <Center><U><%=Left(intTotalampmCalc, 7) %></U> </Center>
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
	rsNewstuam.Close
	rsNewstupm.Close
	rsOldstuam.Close
	rsOldstupm.Close
	rsTotalHoursam.Close
	rsTotalHourspm.Close
	Set rsInsession1 = Nothing
	Set rsInsession2 = Nothing
	Set rsInsession3 = Nothing
	Set rsInsession4 = Nothing
	Set rsInsession5 = Nothing
	Set rsInsession6 = Nothing
	Set rsADA1 = Nothing
	Set rsADA2 = Nothing
	Set rsNewstuam = Nothing
	Set rsNewstupm = Nothing
	Set rsOldstuam = Nothing
	Set rsOldstupm = Nothing
	Set rsTotalHoursam = Nothing
	Set rsTotalHourspm = Nothing


	
	
%>



</body>
</html>
	