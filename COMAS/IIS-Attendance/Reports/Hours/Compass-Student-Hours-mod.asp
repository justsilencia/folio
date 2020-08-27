
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
	Dim strCompound, dateFrom, dateTo
	
		fromDate = Session("Month3")&"/1/"&Session("Year")
		toDate = Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")
		
Select Case Session("Group")
	Case 1
		strCompound = "305 Compass Hours"
        strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y5' " & _
                 "or class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y4' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_pm_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y5' " & _
                 "or class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y4' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Horticulture' " & _
                  "union " & _
                 "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_pm_compass c " & _
                 "on m.dc_number = c.dc_number where class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Horticulture' " & _
                 "order by last_name"
	Case 2
		strCompound = "307 Compass Hours"
        strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_am_compass c " & _
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
		strCompound = "Bootcamp"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
		strQry = "Select Distinct m.dc_number, m.first_name, m.lastname from master_roster_tbl m inner join attend_btu_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' " & _
                 "order by lastname"
	Case 4
		strCompound = "305 Compass Hybrid Hours"
        strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_hybrid_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '305' " & _
                 "or class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '305' " & _
                 "order by last_name"
    Case 5
		strCompound = "307 Compass Hybrid Hours"
        strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_hybrid_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '307' " & _
                 "or class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '307' " & _
                 "order by last_name" 
    Case 6
		strCompound = "308 Compass Hybrid Hours"
		strQry = "Select Distinct m.dc_number, m.first_name, m.last_name from master_roster m inner join attend_hybrid_compass c " & _
                 "on m.dc_number = c.dc_number where class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '308' " & _
                 "or class_date >= '"&fromDate&"' and class_date <= '"&toDate&"' and c.hybrid_group = '308' " & _
                 "order by last_name" 
    Case 7
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
	<th>Hours</th>
    <th>Total Hours</th>
</tr>

<%
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
				If strCompound <> "Bootcamp" Then
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
				Else
				strName = rsHours("LastName") & ", " & rsHours("First_Name")
				strName = UCase(strName)
				End If
			rowCount = rowCount + 1	
			End If
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
            totalHourAmCount = getTotalAmHours(strDc)
            totalHourPmCount = getTotalPmHours(strDc)
			hourCount = hourAmCount + hourPmCount
            totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
			
	Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
                    "<td>&nbsp;&nbsp;" & totalHourCount & _
				   "</tr>" 
				   
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
					   "<table border=""1"" cellpadding=""3"" cellspacing=""0"">"
		
		tableCheck = 1
		
	End If
		
		
		If strDc <> rsHours("dc_number") Then
		
				strDc = rsHours("dc_number")
				If strCompound <> "Bootcamp" Then
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
				Else
				strName = rsHours("LastName") & ", " & rsHours("First_Name")
				strName = UCase(strName)
				End If
			rowCount = rowCount + 1	
			
			End If
		
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
            totalHourAmCount = getTotalAmHours(strDc)
            totalHourPmCount = getTotalPmHours(strDc)
			hourCount = hourAmCount + hourPmCount
            totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
			
	Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
                    "<td>&nbsp;&nbsp;" & totalHourCount & _
				   "</tr>" 
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If
		
	hourCount = 0
	
	  End If
	 
	  If rowCount > 70 And rowCount <= 105 Then
		
	  If tableCheck = 1 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 3 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">"
		
		tableCheck = 2
		
	  End If
		
		If strDc <> rsHours("dc_number") Then
		
				strDc = rsHours("dc_number")
				If strCompound <> "Bootcamp" Then
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
				Else
				strName = rsHours("LastName") & ", " & rsHours("First_Name")
				strName = UCase(strName)
				End If
			rowCount = rowCount + 1	
		End If
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
            totalHourAmCount = getTotalAmHours(strDc)
            totalHourPmCount = getTotalPmHours(strDc)
			hourCount = hourAmCount + hourPmCount
            totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
			
	Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
                    "<td>&nbsp;&nbsp;" & totalHourCount & _
				   "</tr>" 
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	
	  
	End If	
	
	
	If rowCount > 105 And rowCount <= 140 Then
		
	  If tableCheck = 2 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 4 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">"
		
		tableCheck = 3
		
	  End If
		
		If strDc <> rsHours("dc_number") Then
		
				strDc = rsHours("dc_number")
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			rowCount = rowCount + 1	
		End If
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
            totalHourAmCount = getTotalAmHours(strDc)
            totalHourPmCount = getTotalPmHours(strDc)
			hourCount = hourAmCount + hourPmCount
            totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
			
	Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
                    "<td>&nbsp;&nbsp;" & totalHourCount & _
				   "</tr>" 
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If
		
	hourCount = 0
	
	  
	End If
	
	
	If rowCount > 140 And rowCount <= 175 Then
		
	  If tableCheck = 3 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 5 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">"
		
		tableCheck = 4
		
	  End If
		
		If strDc <> rsHours("dc_number") Then
				strDc = rsHours("dc_number")
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			rowCount = rowCount + 1	
		End If
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
            totalHourAmCount = getTotalAmHours(strDc)
            totalHourPmCount = getTotalPmHours(strDc)
			hourCount = hourAmCount + hourPmCount
            totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
			
	Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
                    "<td>&nbsp;&nbsp;" & totalHourCount & _
				   "</tr>" 
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	  
	End If	
    
    If rowCount > 175 And rowCount <= 210 Then
		
	  If tableCheck = 4 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 6 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">"
		
		tableCheck = 5
		
	  End If
		
		If strDc <> rsHours("dc_number") Then
				strDc = rsHours("dc_number")
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			rowCount = rowCount + 1	
		End If
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
            totalHourAmCount = getTotalAmHours(strDc)
            totalHourPmCount = getTotalPmHours(strDc)
			hourCount = hourAmCount + hourPmCount
            totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
			
	Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
                    "<td>&nbsp;&nbsp;" & totalHourCount & _
				   "</tr>" 
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	  
	End If

    If rowCount > 210 And rowCount <= 245 Then
		
	  If tableCheck = 5 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 7 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">"
		
		tableCheck = 6
		
	  End If
		
		If strDc <> rsHours("dc_number") Then
				strDc = rsHours("dc_number")
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			rowCount = rowCount + 1	
		End If
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
            totalHourAmCount = getTotalAmHours(strDc)
            totalHourPmCount = getTotalPmHours(strDc)
			hourCount = hourAmCount + hourPmCount
            totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
			
	Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
                    "<td>&nbsp;&nbsp;" & totalHourCount & _
				   "</tr>" 
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	  
	End If
    
    If rowCount > 245 And rowCount <= 275 Then
		
	  If tableCheck = 6 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 7 - "&Session("Month")&",&nbsp;"&Session("Year")&" - "&strCompound&"&nbsp;Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">"
		
		tableCheck = 7
		
	  End If
		
		If strDc <> rsHours("dc_number") Then
				strDc = rsHours("dc_number")
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
			rowCount = rowCount + 1	
		End If
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
            totalHourAmCount = getTotalAmHours(strDc)
            totalHourPmCount = getTotalPmHours(strDc)
			hourCount = hourAmCount + hourPmCount
            totalHourCount = totalHourAmCount + totalHourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
			
	Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
                    "<td>&nbsp;&nbsp;" & totalHourCount & _
				   "</tr>" 
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	  
	End If
    	
	Loop
	
	rsHours.MoveFirst
    grandTotal = 0
    do while not rsHours.EOF
        hourAmCount = getAmHours(rsHours("dc_number"), fromDate, toDate)
		hourPmCount = getPmHours(rsHours("dc_number"), fromDate, toDate)
        grandTotal = grandTotal + hourAmCount + hourPmCount

    rsHours.MoveNext
    loop

    rsHours.close
    set rsHours = nothing
    response.write "<tr><td colspan=5 align=center>Total Department Compass Hours: <b>" & grandTotal & "</b></td></tr>" 
%>

</table>

</body>
</html> 






