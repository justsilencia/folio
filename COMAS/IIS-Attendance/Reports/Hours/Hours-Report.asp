<!--#Include File="Connection.asp"-->
<!--#METADATA TYPE="typelib"
	      FILE="H:\program files\common files\system\ado\msado15.dll"-->

<html>
<body>
<Font Size="-2">Institution: <U>Sumter C.I.</U></Font>
<Center>
<%
	dim strClass

	If Session("Class") = "Y1" Then

		strClass = "Y1"

	End If

	If Session("Class") = "Y2" Then

		strClass = "Y2"

	End If

	If Session("Class") = "Y3" Then

		strClass = "Y3"

	End If

	If Session("Class") = "Y4" Then

		strClass = "Y4"

	End If


	If Session("Class") = "S1" Then

		strClass = "S1"

	End If

	If Session("Class") = "S2" Then

		strClass = "S2"

	End If

	If Session("Class") = "S3" Then

		strClass = "S3"

	End If

	If Session("Class") = "S4" Then

		strClass = "S4"

	End If

	If Session("Class") = "Youth-Masonry" Then

		strClass = "yMasonry"

	End If

	If Session("Class") = "Masonry" Then

		strClass = "Masonry"

	End If


	dim intCounter
	dim intCounter2
	dim intDays
	dim intHours
	dim intHours2
	dim intTotal
	dim intTotaly
	dim strHours
	dim strHours2
	dim strStu

	dim rsHours
	dim rsHours2
	dim rsStu

	
	intCounter = "1"
	intTotaly = "0"


	strStu = "SELECT m.dc_number, First_Name, Last_Name FROM Master_Roster m INNER JOIN attend_am_"&strClass&" a ON m.dc_number = a.dc_number " & _
		 "WHERE class_date_am >= '1/1/"&Session("Year")&"' AND class_date_am <= '12/31/"&Session("Year")&"' AND status_am = 'P' " & _ 
		 "OR class_date_am >= '1/1/"&Session("Year")&"' AND class_date_am <= '12/31/"&Session("Year")&"' AND status_am = 'E' " & _ 

		 "UNION " & _

		 "SELECT m.dc_number, First_Name, Last_Name FROM Master_Roster m INNER JOIN attend_pm_"&strClass&" a ON m.dc_number = a.dc_number " & _
		 "WHERE class_date_pm >= '1/1/"&Session("Year")&"' AND class_date_pm <= '12/31/"&Session("Year")&"' AND status_pm = 'P' " & _
		 "OR class_date_pm >= '1/1/"&Session("Year")&"' AND class_date_pm <= '12/31/"&Session("Year")&"' AND status_pm = 'E' ORDER BY Last_Name"


	Set rsStu = Server.CreateObject("ADODB.Recordset")
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsHours2 = Server.CreateObject("ADODB.Recordset")

	rsStu.Open strStu, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	Response.Write _
	
		"<Table Border=""1"" CellSpacing=""0"" CellPadding=""2""><Caption><H2><U>"&Session("Class")&", "&Session("Year")&"<BR>Yearly Hours Report</U></H2></Caption><BR>" & _
		"<TR>" & _
		  "<TH>#" & _
		  "<TH>DC#" & _
		  "<TH>Name" & _
		  "<TH>Jan" & _
		  "<TH>Feb" & _
		  "<TH>Mar" & _
		  "<TH>Apr" & _	
		  "<TH>May" & _
		  "<TH>Jun" & _
		  "<TH>Jul" & _
		  "<TH>Aug" & _
		  "<TH>Sep" & _
		  "<TH>Oct" & _
		  "<TH>Nov" & _
		  "<TH>Dec" & _
		  "<TH>Total" & _
		"</TR>"

	Do While Not rsStu.EOF

	intTotal = "0"

	Response.Write _

		"<TR>" & _
		  "<TD>" & intCounter & _
		  "<TD>" & rsStu("dc_number") & _
		  "<TD>" & rsStu("Last_Name") & ", " & rsStu("First_Name")  

	
	For intCounter2 = 1 to 12

	Select Case intCounter2

		Case "1"

			intDays = "31"

		Case "2"

			intDays = "28"

		Case "3"

			intDays = "31"

		Case "4"

			intDays = "30"
	
		Case "5"

			intDays = "31"

		Case "6" 

			intDays = "30"

		Case "7" 

			intDays = "31"

		Case "8"

			intDays = "31"

		Case "9"

			intDays = "30"

		Case "10"

			intDays = "31"

		Case "11"

			intDays = "30"

		Case "12"
	
			intDays = "31"

	End Select			
	
	

	strHours = "SELECT COUNT(status_am) AS CountAM FROM Master_Roster m INNER JOIN attend_am_"&strClass&" a ON m.dc_number = a.dc_number " & _
		   "WHERE class_date_am >= '"&intCounter2&"/1/"&Session("Year")&"' AND class_date_am <= '"&intCounter2&"/"&intDays&"/"&Session("Year")&"' AND status_am = 'P' AND a.dc_number = '" & rsStu("dc_number") & "' " & _
		   "OR class_date_am >= '"&intCounter2&"/1/"&Session("Year")&"' AND class_date_am <= '"&intCounter2&"/"&intDays&"/"&Session("Year")&"' AND status_am = 'E' AND a.dc_number = '" & rsStu("dc_number") & "' "

	strHours2 = "SELECT COUNT(status_pm) AS CountPM FROM Master_Roster m INNER JOIN attend_pm_"&strClass&" a ON m.dc_number = a.dc_number " & _
		    "WHERE class_date_pm >= '"&intCounter2&"/1/"&Session("Year")&"' AND class_date_pm <= '"&intCounter2&"/"&intDays&"/"&Session("Year")&"' AND status_pm = 'P' AND a.dc_number = '" & rsStu("dc_number") & "' " & _
		    "OR class_date_pm >= '"&intCounter2&"/1/"&Session("Year")&"' AND class_date_pm <= '"&intCounter2&"/"&intDays&"/"&Session("Year")&"' AND status_pm = 'E' AND a.dc_number = '" & rsStu("dc_number") & "' "


	rsHours.Open strHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	rsHours2.Open strHours2, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


	intHours = "0"
	intHours2 = "0"

	intHours = rsHours("CountAM")

	intHours = intHours * 3
		    

	intHours2 = rsHours2("CountPM")

	intHours2 = intHours2 * 3
		    
	

	intHours = intHours + intHours2

	intTotal = intTotal + intHours

	Response.Write _

		"<TD>" & intHours


	rsHours.Close
	rsHours2.Close

	Next

	Response.Write "<TD>" & intTotal

	intTotaly = intTotaly + intTotal

	rsStu.MoveNext

	intCounter = intCounter + 1

	Loop

	Response.Write _

	"<TR>" & _
	  "<TD Colspan=""14""><Center><B>*** Total Hours for the Year ***</B></Center>" & _
	  "<TD Colspan=""2""><Center><B>" & intTotaly & "</B></Center>" & _
	"</TR>"

	rsStu.Close
	Set rsStu = Nothing

	Set rsHours = Nothing
	Set rsHours2 = Nothing
%>

</body>
</html>



































