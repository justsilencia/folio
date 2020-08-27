
<!--#Include File="Connection.asp"-->
<!--#Include File="GetCompassHours-Function.asp"-->
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->
	    

<html>
<head>
</head>
<body>
<font size="2"><b><u>pg.1 <%=Session("Month")%>, <%= Session("Year")%> Hours</u></b></font>
<font style="text-align: right;"></font> 
<%
    Server.ScriptTimeout = 90
	Dim strCompound, dateFrom, dateTo, strCompType
	
		fromDate = Session("Month3")&"/1/"&Session("Year")
		toDate = Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")
		
Select Case Session("Group")
	Case 1
		strCompType = "Live"
		strCompound = "305 Compass Hours"
        strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_pm_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y5' " & _
                 "or class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y4' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Horticulture' " & _
                 "order by last_name"
	Case 2
		strCompType = "Live"
		strCompound = "307 Compass Hours"
        strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y5' " & _
                 "or class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y4' " & _
				 "union " & _
				 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_pm_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Horticulture' " & _
                 "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Horticulture' " & _
				 "union " & _
				 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y1' " & _
                 "or class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y2' " & _
                 "or class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y3' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_pm_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y1' " & _
                 "or class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y2' " & _
                 "or class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y3' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Youth-Masonry' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_pm_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Youth-Masonry' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's1' " & _
                 "or class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's2' " & _
                 "or class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's3' " & _
                 "or class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's4' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_pm_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's1' " & _
                 "or class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's2' " & _
                 "or class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's3' " & _
                 "or class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's4' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Masonry' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_pm_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Masonry' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Marine-Tech' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_pm_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Marine-Tech' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Energy-Tech' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_pm_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Energy-Tech' " & _
                 "order by last_name"
	Case 3
		strCompType = "Live"
		strCompound = "308 Bootcamp Compass Hybrid"
		strGroup = "BTU"
		strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_btu_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' " & _
                 "union " & _
				 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_hybrid_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '308' " & _
                 "or class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '308' " & _
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
<table border="1" cellpadding="3" cellspacing="0"><caption><h2><u><%=strCompound%></u></h2></caption>
	<tr>
		<th>#</th>
		<th>Name</th>
		<th>DC#</th>
<%
If Session("Group") < 3 Then
		Response.Write "<th>Education</th>" & _
			"<th>Total Edu</th>" & _
			"<th>Vocation</th>" & _
			"<th>Total Voc</th>" & _
			"</tr>"
Else
	If Session("Group") = 3 then
		Response.Write "<th>Hours</th>" & _
			"<th>Total Hours</th>" & _
			"</tr>"
	Else
		Response.Write "<th>Hybrid Hours</th>" & _
			"<th>Total Hybrid Hours</th>" & _
			"</tr>"
	End if
End if

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
			
				hourEduAMCount = getEduAMHours(strDc, fromDate, toDate)
				hourEduPMCount = getEduPMHours(strDc, fromDate, toDate)
				hourVocAMCount = getVocAMHours(strDc, fromDate, toDate)
				hourVocPMCount = getVocPMHours(strDc, fromDate, toDate)
				hourEduTotal = hourEduAMCount + hourEduPMCount  				'Monthly total
				hourVocTotal = hourVocAMCount + hourVocPMCount					'Monthly total
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date

'				hourAmCount = getAmHours(strDc, fromDate, toDate)
'				hourPmCount = getPmHours(strDc, fromDate, toDate)
'				totalHourAmCount = getTotalAmHours(strDc)
'				totalHourPmCount = getTotalPmHours(strDc)
'				hourCount = hourAmCount + hourPmCount
'				totalHourCount = totalHourAmCount + totalHourPmCount
			Else
				hourCount = getBtuHours(strDc, fromDate, toDate)
				totalhourCount = getTotalBtuHours(strDc)
			End If
		Else
				hourCount = getMonthHybridHours(strDC, fromDate, toDate)
				totalhourCount = getHybridHours(strDC)
		End If			

		If Session("Group") < 3 Then
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"<td>&nbsp;&nbsp;" & hourVocTotal & _
					"<td>&nbsp;&nbsp;" & totalVocHourCount & _
					"</tr>"
		Else
			If Session("Group") = 3 then	
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
					"<td>&nbsp;&nbsp;" & totalHourCount & _
					"</tr>"
			Else		
				
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
					"<td>&nbsp;&nbsp;" & totalHourCount & _
					"</tr>"
			End if
		End if

	    If Not rsHours.EOF Then
			rsHours.MoveNext
		End If
		
	hourCount = 0
	
	End If
	
	If rowCount > 35 And rowCount <= 70 Then
	
	If tableCheck = 0 Then
	
		Response.Write "</table></Center><br><br><br>" &_
					   "<font size=""2""><b><u>pg. 2 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br>" & _
					   "<br><center>" & _
					   "<table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
					   "<tr>" & _
					   "<th>#</th>" & _
					   "<th>Name</th>" & _
					   "<th>DC#</th>"

					If Session("Group") < 3 Then
							Response.Write "<th>Education</th>" & _
								"<th>Total Edu</th>" & _
								"<th>Vocation</th>" & _
								"<th>Total Voc</th>" & _
								"</tr>"
					Else
						If Session("Group") = 3 then
							Response.Write "<th>Hours</th>" & _
								"<th>Total Hours</th>" & _
								"</tr>"
						Else
							Response.Write "<th>Hybrid Hours</th>" & _
								"<th>Total Hybrid Hours</th>" & _
								"</tr>"
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
				hourEduAMCount = getEduAMHours(strDc, fromDate, toDate)
				hourEduPMCount = getEduPMHours(strDc, fromDate, toDate)
				hourVocAMCount = getVocAMHours(strDc, fromDate, toDate)
				hourVocPMCount = getVocPMHours(strDc, fromDate, toDate)
				hourEduTotal = hourEduAMCount + hourEduPMCount  				'Monthly total
				hourVocTotal = hourVocAMCount + hourVocPMCount					'Monthly total
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date
			
			'	hourAmCount = getAmHours(strDc, fromDate, toDate)
			'	hourPmCount = getPmHours(strDc, fromDate, toDate)
            '	totalHourAmCount = getTotalAmHours(strDc)
            '	totalHourPmCount = getTotalPmHours(strDc)
			'	hourCount = hourAmCount + hourPmCount
            '	totalHourCount = totalHourAmCount + totalHourPmCount
		Else
				hourCount = getBtuHours(strDc, fromDate, toDate)
				totalhourCount = getTotalBtuHours(strDc)
		End If
	Else
			hourCount = getMonthHybridHours(strDC, fromDate, toDate)
			totalhourCount = getHybridHours(strDC)
	End If

	If Session("Group") < 3 Then
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"<td>&nbsp;&nbsp;" & hourVocTotal & _
					"<td>&nbsp;&nbsp;" & totalVocHourCount & _
					"</tr>"

		Else
			If Session("Group") = 3 then	
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"</tr>"
			Else		
			
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
					"<td>&nbsp;&nbsp;" & totalHourCount & _
					"</tr>"
			End if
		End if

				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If
		
	hourCount = 0
	
	  End If
	 
	  If rowCount > 70 And rowCount <= 106 Then
		
	  If tableCheck = 1 Then
	
		Response.Write "</table></Center><br><br><br>" &_
					   "<font size=""2""><b><u>pg. 2 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br>" & _
					   "<br><center>" & _
					   "<table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
					   "<tr>" & _
					   "<th>#</th>" & _
					   "<th>Name</th>" & _
					   "<th>DC#</th>"

		If Session("Group") < 3 Then
		Response.Write "<th>Education</th>" & _
			"<th>Total Edu</th>" & _
			"<th>Vocation</th>" & _
			"<th>Total Voc</th>" & _
			"</tr>"
		Else
			If Session("Group") = 3 then
				Response.Write "<th>Hours</th>" & _
					"<th>Total Hours</th>" & _
					"</tr>"
			Else
				Response.Write "<th>Hybrid Hours</th>" & _
					"<th>Total Hybrid Hours</th>" & _
					"</tr>"
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
			
				hourEduAMCount = getEduAMHours(strDc, fromDate, toDate)
				hourEduPMCount = getEduPMHours(strDc, fromDate, toDate)
				hourVocAMCount = getVocAMHours(strDc, fromDate, toDate)
				hourVocPMCount = getVocPMHours(strDc, fromDate, toDate)
				hourEduTotal = hourEduAMCount + hourEduPMCount  				'Monthly total
				hourVocTotal = hourVocAMCount + hourVocPMCount					'Monthly total
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date

'				hourAmCount = getAmHours(strDc, fromDate, toDate)
'				hourPmCount = getPmHours(strDc, fromDate, toDate)
'				totalHourAmCount = getTotalAmHours(strDc)
'				totalHourPmCount = getTotalPmHours(strDc)
'				hourCount = hourAmCount + hourPmCount
'				totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
			totalhourCount = getTotalBtuHours(strDc)
		End If
	Else
			hourCount = getMonthHybridHours(strDC, fromDate, toDate)
			totalhourCount = getHybridHours(strDC)
	End If	
			
		If Session("Group") < 3 Then
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"<td>&nbsp;&nbsp;" & hourVocTotal & _
					"<td>&nbsp;&nbsp;" & totalVocHourCount & _
					"</tr>"
		Else
			If Session("Group") = 3 then	
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"</tr>"
			Else		
				
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
					"<td>&nbsp;&nbsp;" & totalHourCount & _
					"</tr>"
			End if
		End if



				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	
	  
	End If	
	
	
	If rowCount > 107 And rowCount <= 143 Then
		
	  If tableCheck = 2 Then
	
		Response.Write "</table></Center><br><br><br>" &_
					   "<font size=""2""><b><u>pg. 2 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br>" & _
					   "<br><center>" & _
					   "<table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
					   "<tr>" & _
					   "<th>#</th>" & _
					   "<th>Name</th>" & _
					   "<th>DC#</th>"

			If Session("Group") < 3 Then
					Response.Write "<th>Education</th>" & _
						"<th>Total Edu</th>" & _
						"<th>Vocation</th>" & _
						"<th>Total Voc</th>" & _
						"</tr>"
			Else
				If Session("Group") = 3 then
					Response.Write "<th>Hours</th>" & _
						"<th>Total Hours</th>" & _
						"</tr>"
				Else
					Response.Write "<th>Hybrid Hours</th>" & _
						"<th>Total Hybrid Hours</th>" & _
						"</tr>"
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
			
				hourEduAMCount = getEduAMHours(strDc, fromDate, toDate)
				hourEduPMCount = getEduPMHours(strDc, fromDate, toDate)
				hourVocAMCount = getVocAMHours(strDc, fromDate, toDate)
				hourVocPMCount = getVocPMHours(strDc, fromDate, toDate)
				hourEduTotal = hourEduAMCount + hourEduPMCount  				'Monthly total
				hourVocTotal = hourVocAMCount + hourVocPMCount					'Monthly total
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date

'				hourAmCount = getAmHours(strDc, fromDate, toDate)
'				hourPmCount = getPmHours(strDc, fromDate, toDate)
'				totalHourAmCount = getTotalAmHours(strDc)
'				totalHourPmCount = getTotalPmHours(strDc)
'				hourCount = hourAmCount + hourPmCount
'				totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
			totalhourCount = getTotalBtuHours(strDc)
		End If
	Else
			hourCount = getMonthHybridHours(strDC, fromDate, toDate)
			totalhourCount = getHybridHours(strDC)
	End If	
			
	If Session("Group") < 3 Then
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"<td>&nbsp;&nbsp;" & hourVocTotal & _
					"<td>&nbsp;&nbsp;" & totalVocHourCount & _
					"</tr>"

		Else
			If Session("Group") = 3 then	
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"</tr>"
			Else		
			
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
					"<td>&nbsp;&nbsp;" & totalHourCount & _
					"</tr>"
			End if
		End if
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If
		
	hourCount = 0
	
	  
	End If
	
	
	If rowCount > 143 And rowCount <= 179 Then
		
	  If tableCheck = 3 Then
	
		Response.Write "</table></Center><br><br><br>" &_
					   "<font size=""2""><b><u>pg. 2 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br>" & _
					   "<br><center>" & _
					   "<table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
					   "<tr>" & _
					   "<th>#</th>" & _
					   "<th>Name</th>" & _
					   "<th>DC#</th>"

		If Session("Group") < 3 Then
				Response.Write "<th>Education</th>" & _
					"<th>Total Edu</th>" & _
					"<th>Vocation</th>" & _
					"<th>Total Voc</th>" & _
					"</tr>"
		Else
			If Session("Group") = 3 then
				Response.Write "<th>Hours</th>" & _
					"<th>Total Hours</th>" & _
					"</tr>"
			Else
				Response.Write "<th>Hybrid Hours</th>" & _
					"<th>Total Hybrid Hours</th>" & _
					"</tr>"
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
			
				hourEduAMCount = getEduAMHours(strDc, fromDate, toDate)
				hourEduPMCount = getEduPMHours(strDc, fromDate, toDate)
				hourVocAMCount = getVocAMHours(strDc, fromDate, toDate)
				hourVocPMCount = getVocPMHours(strDc, fromDate, toDate)
				hourEduTotal = hourEduAMCount + hourEduPMCount  				'Monthly total
				hourVocTotal = hourVocAMCount + hourVocPMCount					'Monthly total
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date

'				hourAmCount = getAmHours(strDc, fromDate, toDate)
'				hourPmCount = getPmHours(strDc, fromDate, toDate)
'				totalHourAmCount = getTotalAmHours(strDc)
'				totalHourPmCount = getTotalPmHours(strDc)
'				hourCount = hourAmCount + hourPmCount
'				totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
			totalhourCount = getTotalBtuHours(strDc)
		End If
	Else
			hourCount = getMonthHybridHours(strDC, fromDate, toDate)
			totalhourCount = getHybridHours(strDC)
	End If
			
		If Session("Group") < 3 Then
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"<td>&nbsp;&nbsp;" & hourVocTotal & _
					"<td>&nbsp;&nbsp;" & totalVocHourCount & _
					"</tr>"
		Else
			If Session("Group") = 3 then	
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"</tr>"
			Else		
				
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
					"<td>&nbsp;&nbsp;" & totalHourCount & _
					"</tr>"
			End if
		End if


				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	  
	End If	
    
    If rowCount > 179 And rowCount <= 215 Then
		
	  If tableCheck = 4 Then
	
		Response.Write "</table></Center><br><br><br>" &_
					   "<font size=""2""><b><u>pg. 2 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br>" & _
					   "<br><center>" & _
					   "<table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
					   "<tr>" & _
					   "<th>#</th>" & _
					   "<th>Name</th>" & _
					   "<th>DC#</th>"

					If Session("Group") < 3 Then
							Response.Write "<th>Education</th>" & _
								"<th>Total Edu</th>" & _
								"<th>Vocation</th>" & _
								"<th>Total Voc</th>" & _
								"</tr>"
					Else
						If Session("Group") = 3 then
							Response.Write "<th>Hours</th>" & _
								"<th>Total Hours</th>" & _
								"</tr>"
						Else
							Response.Write "<th>Hybrid Hours</th>" & _
								"<th>Total Hybrid Hours</th>" & _
								"</tr>"
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
			
				hourEduAMCount = getEduAMHours(strDc, fromDate, toDate)
				hourEduPMCount = getEduPMHours(strDc, fromDate, toDate)
				hourVocAMCount = getVocAMHours(strDc, fromDate, toDate)
				hourVocPMCount = getVocPMHours(strDc, fromDate, toDate)
				hourEduTotal = hourEduAMCount + hourEduPMCount  				'Monthly total
				hourVocTotal = hourVocAMCount + hourVocPMCount					'Monthly total
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date

'				hourAmCount = getAmHours(strDc, fromDate, toDate)
'				hourPmCount = getPmHours(strDc, fromDate, toDate)
'				totalHourAmCount = getTotalAmHours(strDc)
'				totalHourPmCount = getTotalPmHours(strDc)
'				hourCount = hourAmCount + hourPmCount
'				totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
			totalhourCount = getTotalBtuHours(strDc)
		End If
	Else
			hourCount = getMonthHybridHours(strDC, fromDate, toDate)
			totalhourCount = getHybridHours(strDC)
	End If	
			
	If Session("Group") < 3 Then
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"<td>&nbsp;&nbsp;" & hourVocTotal & _
					"<td>&nbsp;&nbsp;" & totalVocHourCount & _
					"</tr>"

		Else
			If Session("Group") = 3 then	
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"</tr>"
			Else		
			
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
					"<td>&nbsp;&nbsp;" & totalHourCount & _
					"</tr>"
			End if
		End if
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	  
	End If

    If rowCount > 215 And rowCount <= 251 Then
		
	  If tableCheck = 5 Then
	
		Response.Write "</table></Center><br><br><br>" &_
					   "<font size=""2""><b><u>pg. 2 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br>" & _
					   "<br><center>" & _
					   "<table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
					   "<tr>" & _
					   "<th>#</th>" & _
					   "<th>Name</th>" & _
					   "<th>DC#</th>"

		If Session("Group") < 3 Then
				Response.Write "<th>Education</th>" & _
					"<th>Total Edu</th>" & _
					"<th>Vocation</th>" & _
					"<th>Total Voc</th>" & _
					"</tr>"
		Else
			If Session("Group") = 3 then
				Response.Write "<th>Hours</th>" & _
					"<th>Total Hours</th>" & _
					"</tr>"
			Else
				Response.Write "<th>Hybrid Hours</th>" & _
					"<th>Total Hybrid Hours</th>" & _
					"</tr>"
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
			
				hourEduAMCount = getEduAMHours(strDc, fromDate, toDate)
				hourEduPMCount = getEduPMHours(strDc, fromDate, toDate)
				hourVocAMCount = getVocAMHours(strDc, fromDate, toDate)
				hourVocPMCount = getVocPMHours(strDc, fromDate, toDate)
				hourEduTotal = hourEduAMCount + hourEduPMCount  				'Monthly total
				hourVocTotal = hourVocAMCount + hourVocPMCount					'Monthly total
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date

'				hourAmCount = getAmHours(strDc, fromDate, toDate)
'				hourPmCount = getPmHours(strDc, fromDate, toDate)
'				totalHourAmCount = getTotalAmHours(strDc)
'				totalHourPmCount = getTotalPmHours(strDc)
'				hourCount = hourAmCount + hourPmCount
'				totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
			totalhourCount = getTotalBtuHours(strDc)
		End If
Else
			hourCount = getMonthHybridHours(strDC, fromDate, toDate)
			totalhourCount = getHybridHours(strDC)
End If			

		If Session("Group") < 3 Then
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"<td>&nbsp;&nbsp;" & hourVocTotal & _
					"<td>&nbsp;&nbsp;" & totalVocHourCount & _
					"</tr>"
		Else
			If Session("Group") = 3 then	
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"</tr>"
			Else		
				
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
					"<td>&nbsp;&nbsp;" & totalHourCount & _
					"</tr>"
			End if
		End if				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	  
	End If
    
    If rowCount > 251 And rowCount <= 287 Then
		
	  If tableCheck = 6 Then
	
		Response.Write "</table></Center><br><br><br>" &_
					   "<font size=""2""><b><u>pg. 2 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br>" & _
					   "<br><center>" & _
					   "<table border=""1"" cellpadding=""3"" cellspacing=""0"">" & _
					   "<tr>" & _
					   "<th>#</th>" & _
					   "<th>Name</th>" & _
					   "<th>DC#</th>"

					If Session("Group") < 3 Then
							Response.Write "<th>Education</th>" & _
								"<th>Total Edu</th>" & _
								"<th>Vocation</th>" & _
								"<th>Total Voc</th>" & _
								"</tr>"
					Else
						If Session("Group") = 3 then
							Response.Write "<th>Hours</th>" & _
								"<th>Total Hours</th>" & _
								"</tr>"
						Else
							Response.Write "<th>Hybrid Hours</th>" & _
								"<th>Total Hybrid Hours</th>" & _
								"</tr>"
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
			
				hourEduAMCount = getEduAMHours(strDc, fromDate, toDate)
				hourEduPMCount = getEduPMHours(strDc, fromDate, toDate)
				hourVocAMCount = getVocAMHours(strDc, fromDate, toDate)
				hourVocPMCount = getVocPMHours(strDc, fromDate, toDate)
				hourEduTotal = hourEduAMCount + hourEduPMCount  				'Monthly total
				hourVocTotal = hourVocAMCount + hourVocPMCount					'Monthly total
				totalHourEduAmCount = getTotalEduAmHours(strDc)					'Total Edu AM to date
				totalHourEduPmCount = getTotalEduPmHours(strDc)					'Total Edu PM to date
				totalEduHourCount = totalHourEduAmCount + totalHourEduPmCount	'Total Edu to date
				totalHourVocAmCount = getTotalVocAmHours(strDc)					'Total Voc AM to date
				totalHourVocPmCount = getTotalVocPmHours(strDc)					'Total Voc PM to date
				totalVocHourCount = totalHourVocAmCount + totalHourVocPmCount	'Total Edu to date

'				hourAmCount = getAmHours(strDc, fromDate, toDate)
'				hourPmCount = getPmHours(strDc, fromDate, toDate)
'				totalHourAmCount = getTotalAmHours(strDc)
'				totalHourPmCount = getTotalPmHours(strDc)
'				hourCount = hourAmCount + hourPmCount
'				totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
			totalhourCount = getTotalBtuHours(strDc)
		End If
Else
			hourCount = getMonthHybridHours(strDC, fromDate, toDate)
			totalhourCount = getHybridHours(strDC)
End If

	If Session("Group") < 3 Then
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"<td>&nbsp;&nbsp;" & hourVocTotal & _
					"<td>&nbsp;&nbsp;" & totalVocHourCount & _
					"</tr>"

		Else
			If Session("Group") = 3 then	
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourEduTotal & _
					"<td>&nbsp;&nbsp;" & totalEduHourCount & _
					"</tr>"
			Else		
			
				Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
					"<td>&nbsp;&nbsp;" & totalHourCount & _
					"</tr>"
			End if
		End if
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	  
	End If
    	
	Loop
	
	rsHours.MoveFirst
    grandTotal = 0
	grandEduTotal = 0
	grandVocTotal = 0
	grandHybTotal = 0

    do while not rsHours.EOF
    
    Select Case Session("Group")
    Case 1
		hourEduAMCount = getEduAMHours(rsHours("dc_number"), fromDate, toDate)
		hourEduPMCount = getEduPMHours(rsHours("dc_number"), fromDate, toDate)
		hourVocAMCount = getVocAMHours(rsHours("dc_number"), fromDate, toDate)
		hourVocPMCount = getVocPMHours(rsHours("dc_number"), fromDate, toDate)
		grandEduTotal = grandEduTotal + hourEduAMCount + hourEduPMCount  				'Monthly total
		grandVocTotal = grandVocTotal + hourVocAMCount + hourVocPMCount	
		
	'	hourAmCount = getAmHours(rsHours("dc_number"), fromDate, toDate)
	'	hourPmCount = getPmHours(rsHours("dc_number"), fromDate, toDate)
    '    grandTotal = grandTotal + hourAmCount + hourPmCount
    
    Case 2    
		hourEduAMCount = getEduAMHours(rsHours("dc_number"), fromDate, toDate)
		hourEduPMCount = getEduPMHours(rsHours("dc_number"), fromDate, toDate)
		hourVocAMCount = getVocAMHours(rsHours("dc_number"), fromDate, toDate)
		hourVocPMCount = getVocPMHours(rsHours("dc_number"), fromDate, toDate)
		grandEduTotal = grandEduTotal + hourEduAMCount + hourEduPMCount  				'Monthly total
		grandVocTotal = grandVocTotal + hourVocAMCount + hourVocPMCount					'Monthly total
		
	'	hourAmCount = getAmHours(rsHours("dc_number"), fromDate, toDate)
	'	hourPmCount = getPmHours(rsHours("dc_number"), fromDate, toDate)
    '   grandTotal = grandTotal + hourAmCount + hourPmCount
    Case 3 
		hourCount = getBtuHours(rsHours("dc_number"), fromDate, toDate)
		grandTotal = grandTotal + hourCount
	Case else
			hourCount = getMonthHybridHours(rsHours("dc_number"), fromDate, toDate)
			grandTotal = grandTotal + hourCount
	End Select
			
	
    rsHours.MoveNext
    loop

    rsHours.close
    set rsHours = nothing

if Session("Group") < 3 then
    response.write "<tr><td colspan=7 align=center>Total Department Compass Hours (Education / Vocation): <b>" & grandEduTotal & " / " & grandVocTotal & "</b></td></tr>" 
Else
	If Session("Group") = 3 then
		response.write "<tr><td colspan=5 align=center>Total Department Compass Hours: <b>" & grandTotal & "</b></td></tr>" 
	Else
		response.write "<tr><td colspan=5 align=center>Total Department Compass Hours: <b>" & grandTotal & "</b></td></tr>" 
	End if	
End if
%>

</table>

</body>
</html> 






