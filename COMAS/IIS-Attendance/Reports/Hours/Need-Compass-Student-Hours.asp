
<!--#Include File="Connection.asp"-->
<!--#Include File="GetCompassHours-Function.asp"-->
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->
	    

<html>
<head>
</head>
<body>
<font size="2"><b><u>pg.1 Students Needing Compass Hours</u></b></font>
<font style="text-align: right;"></font> 
<%
    Server.ScriptTimeout = 90
	Dim strCompound, dateFrom, dateTo, strCompType
			
Select Case Session("Group")
	Case 1
		strCompType = "Live"
		strCompound = "307 YO"
        strQry = "Select Distinct m.dc_number, m.first_name, m.last_name, c.subject_AM, c.Subject_PM from master_roster m inner join class_assignment c " & _
                 "on m.dc_number = c.dc_number where subject_am = 'Y1'" & _
                 "or subject_am = 'Y2	' " & _
                 "or subject_pm = 'Horticulture' " & _
                 "or subject_pm = 'Y1' " & _
                 "or subject_pm = 'Y2' "
                
	Case 2
		strCompType = "Live"
		strCompound = "305 YO"
        strQry = "Select Distinct m.dc_number, m.first_name, m.last_name, c.subject_AM, c.Subject_PM from master_roster m inner join class_assignment c " & _
                 "on m.dc_number = c.dc_number where Facility = '305' " & _
                 "order by last_name"
	Case 3
		strCompType = "Live"
		strCompound = "308 Bootcamp Compass Hybrid"
		strGroup = "BTU"
		strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_btu_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' " & _
                 "order by last_name"
	Case 4
		strCompType = "Hybrid"
		strCompound = "305 Compass Hybrid Hours"
        strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_hybrid_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '305' " & _
                 "or class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '305' " & _
                 "order by last_name"
    Case 5
		strCompType = "Hybrid"
		strCompound = "307 Compass Hybrid Hours"
        strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_hybrid_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '307' " & _
                 "or class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '307' " & _
                 "order by last_name" 
    Case 6
' This is defunct - BTU Compass Live hours are reported as Hybrid
		strCompType = "Hybrid"
		strCompound = "308 Compass Hybrid Hours"
		strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_hybrid_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '308' " & _
                 "or class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '308' " & _
                 "order by last_name" 
    Case 7
		strCompType = "Hybrid"
		strCompound = "365 Compass Hybrid Hours"
		strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_hybrid_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '365' " & _
                 "or class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '365' " & _
                 "order by last_name" 
	
	End Select
%>

<center>
<table border="1" cellpadding="3" cellspacing="0"><caption><h2><u><%=strCompound%> Needing Compass Hours</u></h2></caption>
	<tr>
		<th>#</th>
		<th>Name</th>
		<th>DC#</th>
		<th>AM</th>
		<th>PM</th>
<%

If Session("Group") < 3 then
	Response.Write "<th>Total Edu Hours</th>" & _
		"<th>Total Voc Hours</th>"
Else
	If Session("Group") = 3 then
		Response.Write "<th>Total Hours</th>"
	Else
		Response.Write "<th>Total Hybrid Hours</th>"
	End if
End if

Response.Write "</tr>"

	Dim strName, strDc, rsHours, rsGet, strGet, tableCheck
	

	Set rsHours = Server.CreateObject("ADODB.Recordset")
	rsHours.Open strQry, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
	rowCount = 0
	tableCheck = 0
	hourCheck = 0
	
Do While Not rsHours.EOF

	If rowCount <= 35 Then
	
			If strDc <> rsHours("dc_number") Then
				strDc = rsHours("dc_number")
				If strCompound <> "308 Bootcamp Compass Hybrid" Then
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
				Else
				strName = rsHours("last_name") & ", " & rsHours("First_Name")
				strName = UCase(strName)
				End If

			rowCount = rowCount + 1	
			End If

			If strCompType <> "Hybrid" Then	
		
				If strCompound <> "308 Bootcamp Compass Hybrid" Then
					totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
					totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
					totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
					totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
					totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
					totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date
					outputCheckBase = totalEduHourCount + totalVocHourCount			'Adds the two totals; any value less than 200 will output in the report.
				'	totalHourAmCount = getTotalAmHours(strDc)
				'	totalHourPmCount = getTotalPmHours(strDc)
				'	totalHourCount = totalHourAmCount + totalHourPmCount
				Else
					totalhourCount = getTotalBtuHours(strDc)
				End If
			Else
					totalhourCount = getHybridHours(strDC)
			End If			
	
'Determines the values to display based on facility, hour totals, and job assignments.	
		If Session("Group") < 3 Then
				If outputCheckBase < 200 then
					Response.Write "<tr>" & _
						"<td>&nbsp;" & rowCount & "&nbsp;" & _
						"<td>&nbsp;&nbsp;" & strName & _
						"<td>" & strDC & _
						"<td align=center>&nbsp;" & rsHours("subject_am") & _
						"<td align=center>&nbsp;" & rsHours("subject_pm")
						If rsHours("subject_am") <> "Unassigned" then
							Response.Write "<td align=center>" & totalEduHourCount
						Else
								Response.Write "<td align=center>-"
						End if

						If rsHours("subject_pm") <> "Unassigned" then
							Response.Write "<td align=center>" & totalVocHourCount
						Else
								Response.Write "<td align=center>-"
						End if
					Response.Write "</tr>" 
				End if

			End If


				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If
		End If
	

		If rowCount > 35 And rowCount <= 70 Then
	
			If tableCheck = 0 Then
	
				Response.Write "</table></Center><br><br><br>" &_
						"<font size=""2""><b><u>pg. 2 Students Needing Compass Hours</u></b></font>" & _
						"<br><center>" & _
						"<table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
						"<tr>" & _
						"<th>#</th>" & _
						"<th>Name</th>" & _
						"<th>DC#</th>" & _
						"<th>AM</th>" & _
						"<th>PM</th>"

				If Session("Group") < 3 then
					Response.Write "<th>Total Edu Hours</th>" & _
						"<th>Total Voc Hours</th>"
				Else
					If Session("Group") = 3 then
						Response.Write "<th>Total Hours</th>"
					Else
						Response.Write "<th>Total Hybrid Hours</th>"
					End if
				End if


				tableCheck = 1
			End If
		
		
			If strDc <> rsHours("dc_number") Then
			
					strDc = rsHours("dc_number")
					If strCompound <> "308 Bootcamp Compass Hybrid" Then
					strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
					Else
					strName = rsHours("last_name") & ", " & rsHours("First_Name")
					strName = UCase(strName)
					End If
				rowCount = rowCount + 1	
			End If
		
			If strCompType <> "Hybrid" Then
				
				If strCompound <> "308 Bootcamp Compass Hybrid" Then
					totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
					totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
					totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
					totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
					totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
					totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date
					outputCheckBase = totalEduHourCount + totalVocHourCount			'Adds the two totals; any value less than 200 will output in the report.
				Else
					totalhourCount = getTotalBtuHours(strDc)
				End If
		
		Else
				totalhourCount = getHybridHours(strDC)
		End If		

'Determines the values to display based on facility, hour totals, and job assignments.	
		If Session("Group") < 3 Then
				If outputCheckBase < 200 then
					Response.Write "<tr>" & _
						"<td>&nbsp;" & rowCount & "&nbsp;" & _
						"<td>&nbsp;&nbsp;" & strName & _
						"<td>" & strDC & _
						"<td align=center>&nbsp;" & rsHours("subject_am") & _
						"<td align=center>&nbsp;" & rsHours("subject_pm")
						If rsHours("subject_am") <> "Unassigned" then
							Response.Write "<td align=center>" & totalEduHourCount
						Else
								Response.Write "<td align=center>-"
						End if

						If rsHours("subject_pm") <> "Unassigned" then
							Response.Write "<td align=center>" & totalVocHourCount
						Else
								Response.Write "<td align=center>-"
						End if
					Response.Write "</tr>" 
				End if

		End If

		If Not rsHours.EOF Then
			rsHours.MoveNext
		End If
	
	End If
	 
	If rowCount > 70 And rowCount <= 105 Then
		
	 	If tableCheck = 1 Then
	
			Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 3 Students Needing Compass Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
						"<tr>" & _
						"<th>#</th>" & _
						"<th>Name</th>" & _
						"<th>DC#</th>" & _
						"<th>AM</th>" & _
						"<th>PM</th>"

				If Session("Group") < 3 then
					Response.Write "<th>Total Edu Hours</th>" & _
						"<th>Total Voc Hours</th>"
				Else
					If Session("Group") = 3 then
						Response.Write "<th>Total Hours</th>"
					Else
						Response.Write "<th>Total Hybrid Hours</th>"
					End if
				End if
		
			tableCheck = 2
		
	  	End If
		
		If strDc <> rsHours("dc_number") Then
			strDc = rsHours("dc_number")
	
			If strCompound <> "308 Bootcamp Compass Hybrid" Then
			strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			Else
			strName = rsHours("last_name") & ", " & rsHours("First_Name")
			strName = UCase(strName)
			End If
	
			rowCount = rowCount + 1	
		
		End If
	
		If strCompType <> "Hybrid" Then	
			If strCompound <> "308 Bootcamp Compass Hybrid" Then
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date
				outputCheckBase = totalEduHourCount + totalVocHourCount			'Adds the two totals; any value less than 200 will output in the report.
			Else
				totalhourCount = getTotalBtuHours(strDc)
			End If
		Else
				totalhourCount = getHybridHours(strDC)
		End If	

'Determines the values to display based on facility, hour totals, and job assignments.	
		If Session("Group") < 3 Then
				If outputCheckBase < 200 then
					Response.Write "<tr>" & _
						"<td>&nbsp;" & rowCount & "&nbsp;" & _
						"<td>&nbsp;&nbsp;" & strName & _
						"<td>" & strDC & _
						"<td align=center>&nbsp;" & rsHours("subject_am") & _
						"<td align=center>&nbsp;" & rsHours("subject_pm")
						If rsHours("subject_am") <> "Unassigned" then
							Response.Write "<td align=center>" & totalEduHourCount
						Else
								Response.Write "<td align=center>-"
						End if

						If rsHours("subject_pm") <> "Unassigned" then
							Response.Write "<td align=center>" & totalVocHourCount
						Else
								Response.Write "<td align=center>-"
						End if
					Response.Write "</tr>" 
				End if

		End If

		If Not rsHours.EOF Then
			rsHours.MoveNext
		End If 
   	  
	End If	
	
	
	If rowCount > 105 And rowCount <= 140 Then
		
		If tableCheck = 2 Then
	
			Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 4 Students Needing Compass Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
						"<tr>" & _
						"<th>#</th>" & _
						"<th>Name</th>" & _
						"<th>DC#</th>" & _
						"<th>AM</th>" & _
						"<th>PM</th>"

				If Session("Group") < 3 then
					Response.Write "<th>Total Edu Hours</th>" & _
						"<th>Total Voc Hours</th>"
				Else
					If Session("Group") = 3 then
						Response.Write "<th>Total Hours</th>"
					Else
						Response.Write "<th>Total Hybrid Hours</th>"
					End if
				End if

			tableCheck = 3
		
	  	End If
		
		If strDc <> rsHours("dc_number") Then
		
			strDc = rsHours("dc_number")
			strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			rowCount = rowCount + 1	
		End If
	
		If strCompType <> "Hybrid" Then	
			
			If strCompound <> "308 Bootcamp Compass Hybrid" Then
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date
				outputCheckBase = totalEduHourCount + totalVocHourCount			'Adds the two totals; any value less than 200 will output in the report.
			Else
				totalhourCount = getTotalBtuHours(strDc)
			End If
		Else
			totalhourCount = getHybridHours(strDC)
		End If	

'Determines the values to display based on facility, hour totals, and job assignments.	
		If Session("Group") < 3 Then
				If outputCheckBase < 200 then
					Response.Write "<tr>" & _
						"<td>&nbsp;" & rowCount & "&nbsp;" & _
						"<td>&nbsp;&nbsp;" & strName & _
						"<td>" & strDC & _
						"<td align=center>&nbsp;" & rsHours("subject_am") & _
						"<td align=center>&nbsp;" & rsHours("subject_pm")
						If rsHours("subject_am") <> "Unassigned" then
							Response.Write "<td align=center>" & totalEduHourCount
						Else
								Response.Write "<td align=center>-"
						End if

						If rsHours("subject_pm") <> "Unassigned" then
							Response.Write "<td align=center>" & totalVocHourCount
						Else
								Response.Write "<td align=center>-"
						End if
					Response.Write "</tr>" 
				End if

		End If

			If Not rsHours.EOF Then
				rsHours.MoveNext
			End If
		
	End If
	
	
	If rowCount > 140 And rowCount <= 175 Then
		
		If tableCheck = 3 Then
			Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 5 Students Needing Compass Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
						"<tr>" & _
						"<th>#</th>" & _
						"<th>Name</th>" & _
						"<th>DC#</th>" & _
						"<th>AM</th>" & _
						"<th>PM</th>"

				If Session("Group") < 3 then
					Response.Write "<th>Total Edu Hours</th>" & _
						"<th>Total Voc Hours</th>"
				Else
					If Session("Group") = 3 then
						Response.Write "<th>Total Hours</th>"
					Else
						Response.Write "<th>Total Hybrid Hours</th>"
					End if
				End if
		
		tableCheck = 4
		
		End If
		
		If strDc <> rsHours("dc_number") Then
				strDc = rsHours("dc_number")
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			rowCount = rowCount + 1	
		End If
	
		If strCompType <> "Hybrid" Then			
			If strCompound <> "308 Bootcamp Compass Hybrid" Then
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date
				outputCheckBase = totalEduHourCount + totalVocHourCount			'Adds the two totals; any value less than 200 will output in the report.
			Else
				totalhourCount = getTotalBtuHours(strDc)
			End If
		Else
				totalhourCount = getHybridHours(strDC)
		End If	

'Determines the values to display based on facility, hour totals, and job assignments.	
		If Session("Group") < 3 Then
				If outputCheckBase < 200 then
					Response.Write "<tr>" & _
						"<td>&nbsp;" & rowCount & "&nbsp;" & _
						"<td>&nbsp;&nbsp;" & strName & _
						"<td>" & strDC & _
						"<td align=center>&nbsp;" & rsHours("subject_am") & _
						"<td align=center>&nbsp;" & rsHours("subject_pm")
						If rsHours("subject_am") <> "Unassigned" then
							Response.Write "<td align=center>" & totalEduHourCount
						Else
								Response.Write "<td align=center>-"
						End if

						If rsHours("subject_pm") <> "Unassigned" then
							Response.Write "<td align=center>" & totalVocHourCount
						Else
								Response.Write "<td align=center>-"
						End if
					Response.Write "</tr>" 
				End if

		End If

				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	
	  
	End If	
    
    If rowCount > 175 And rowCount <= 210 Then
		
	  If tableCheck = 4 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 6 Students Needing Compass Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
						"<tr>" & _
						"<th>#</th>" & _
						"<th>Name</th>" & _
						"<th>DC#</th>" & _
						"<th>AM</th>" & _
						"<th>PM</th>"

				If Session("Group") < 3 then
					Response.Write "<th>Total Edu Hours</th>" & _
						"<th>Total Voc Hours</th>"
				Else
					If Session("Group") = 3 then
						Response.Write "<th>Total Hours</th>"
					Else
						Response.Write "<th>Total Hybrid Hours</th>"
					End if
				End if

		tableCheck = 5
		
	  End If
		
		If strDc <> rsHours("dc_number") Then
				strDc = rsHours("dc_number")
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			rowCount = rowCount + 1	
		End If
	
		If strCompType <> "Hybrid" Then		
			If strCompound <> "308 Bootcamp Compass Hybrid" Then
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date
				outputCheckBase = totalEduHourCount + totalVocHourCount			'Adds the two totals; any value less than 200 will output in the report.
			Else
				
				totalhourCount = getTotalBtuHours(strDc)
			End If
		Else
				
				totalhourCount = getHybridHours(strDC)
		End If	

'Determines the values to display based on facility, hour totals, and job assignments.	
		If Session("Group") < 3 Then
				If outputCheckBase < 200 then
					Response.Write "<tr>" & _
						"<td>&nbsp;" & rowCount & "&nbsp;" & _
						"<td>&nbsp;&nbsp;" & strName & _
						"<td>" & strDC & _
						"<td align=center>&nbsp;" & rsHours("subject_am") & _
						"<td align=center>&nbsp;" & rsHours("subject_pm")
						If rsHours("subject_am") <> "Unassigned" then
							Response.Write "<td align=center>" & totalEduHourCount
						Else
								Response.Write "<td align=center>-"
						End if

						If rsHours("subject_pm") <> "Unassigned" then
							Response.Write "<td align=center>" & totalVocHourCount
						Else
								Response.Write "<td align=center>-"
						End if
					Response.Write "</tr>" 
				End if

		End If

				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		  
	End If

    If rowCount > 210 And rowCount <= 245 Then
		
	  If tableCheck = 5 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 7 Students Needing Compass Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
						"<tr>" & _
						"<th>#</th>" & _
						"<th>Name</th>" & _
						"<th>DC#</th>" & _
						"<th>AM</th>" & _
						"<th>PM</th>"

				If Session("Group") < 3 then
					Response.Write "<th>Total Edu Hours</th>" & _
						"<th>Total Voc Hours</th>"
				Else
					If Session("Group") = 3 then
						Response.Write "<th>Total Hours</th>"
					Else
						Response.Write "<th>Total Hybrid Hours</th>"
					End if
				End if
		
		tableCheck = 6
		
	  End If
		
		If strDc <> rsHours("dc_number") Then
				strDc = rsHours("dc_number")
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			rowCount = rowCount + 1	
		End If
	
		If strCompType <> "Hybrid" Then				
			If strCompound <> "308 Bootcamp Compass Hybrid" Then
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date
				outputCheckBase = totalEduHourCount + totalVocHourCount			'Adds the two totals; any value less than 200 will output in the report.
			Else
			
				totalhourCount = getTotalBtuHours(strDc)
			End If
		Else
		
			totalhourCount = getHybridHours(strDC)
		End If		

'Determines the values to display based on facility, hour totals, and job assignments.	
		If Session("Group") < 3 Then
				If outputCheckBase < 200 then
					Response.Write "<tr>" & _
						"<td>&nbsp;" & rowCount & "&nbsp;" & _
						"<td>&nbsp;&nbsp;" & strName & _
						"<td>" & strDC & _
						"<td align=center>&nbsp;" & rsHours("subject_am") & _
						"<td align=center>&nbsp;" & rsHours("subject_pm")
						If rsHours("subject_am") <> "Unassigned" then
							Response.Write "<td align=center>" & totalEduHourCount
						Else
								Response.Write "<td align=center>-"
						End if

						If rsHours("subject_pm") <> "Unassigned" then
							Response.Write "<td align=center>" & totalVocHourCount
						Else
								Response.Write "<td align=center>-"
						End if
					Response.Write "</tr>" 
				End if

		End If

				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	  
	End If
    
    If rowCount > 245 And rowCount <= 275 Then
		
	  If tableCheck = 6 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 7 Students Needing Compass Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
						"<tr>" & _
						"<th>#</th>" & _
						"<th>Name</th>" & _
						"<th>DC#</th>" & _
						"<th>AM</th>" & _
						"<th>PM</th>"

				If Session("Group") < 3 then
					Response.Write "<th>Total Edu Hours</th>" & _
						"<th>Total Voc Hours</th>"
				Else
					If Session("Group") = 3 then
						Response.Write "<th>Total Hours</th>"
					Else
						Response.Write "<th>Total Hybrid Hours</th>"
					End if
				End if
		
		tableCheck = 7
		
	  End If
		
		If strDc <> rsHours("dc_number") Then
				strDc = rsHours("dc_number")
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			rowCount = rowCount + 1	
		End If

		If strCompType <> "Hybrid" Then				
			If strCompound <> "308 Bootcamp Compass Hybrid" Then
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date
				outputCheckBase = totalEduHourCount + totalVocHourCount			'Adds the two totals; any value less than 200 will output in the report.
			Else
				
				totalhourCount = getTotalBtuHours(strDc)
			End If
		Else
			
			totalhourCount = getHybridHours(strDC)
		End If			

'Determines the values to display based on facility, hour totals, and job assignments.	
		If Session("Group") < 3 Then
				If outputCheckBase < 200 then
					Response.Write "<tr>" & _
						"<td>&nbsp;" & rowCount & "&nbsp;" & _
						"<td>&nbsp;&nbsp;" & strName & _
						"<td>" & strDC & _
						"<td align=center>&nbsp;" & rsHours("subject_am") & _
						"<td align=center>&nbsp;" & rsHours("subject_pm")
						If rsHours("subject_am") <> "Unassigned" then
							Response.Write "<td align=center>" & totalEduHourCount
						Else
								Response.Write "<td align=center>-"
						End if

						If rsHours("subject_pm") <> "Unassigned" then
							Response.Write "<td align=center>" & totalVocHourCount
						Else
								Response.Write "<td align=center>-"
						End if
					Response.Write "</tr>" 
				End if

		End If
			   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	end If
	  

    	
	Loop
	
	
    rsHours.close
    set rsHours = nothing
    
%>

</table>

</body>
</html> 