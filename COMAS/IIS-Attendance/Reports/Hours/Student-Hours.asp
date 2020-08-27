
<!--#Include File="Connection.asp"-->
<!--#Include File="Hours-Queries.asp"-->
<!--#Include File="GetHours-Function.asp"-->
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->
	    

<html>
<head>
</head>
<body>
<font size="2"><b><u>pg.1 <%=Session("Month")%>, <%= Session("Year")%> Hours</u></b></font>
<font style="text-align: right;"></font> 
<%
	Dim strCompound, dateFrom, dateTo
	
		fromDate = Session("Month3")&"/1/"&Session("Year")
		toDate = Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")
		strQry = BuildLoopQuery(fromDate, toDate)
		
Select Case Session("Group")
	Case 1
		strCompound = "Y/O 17 And Under Academic"
		strGroup = "17-Ac"
	Case 2
		strCompound = "Y/O Landscaping"
		strGroup = "17-Ac"
	Case 3
		strCompound = "Y/O 18 And Older Academic"
		strGroup = "18+Ac"
	Case 4
		strCompound = "Y/O Masonry"
		strGroup = "18+Ac"
	Case 5
		strCompound = "Adult Academic"
		strGroup = "Adult"
	Case 6
		strCompound = "Adult Masonry"
		strGroup = "Adult"
	Case 7
		strCompound = "Bootcamp"
		strGroup = "BTU"
	
	Case 8
		strCompound = "Marine-Tech"
		strGroup = "Adult"
	Case 9
		strCompound = "Energy-Tech"
		strGroup = "Adult"

	Case 10
		strCompound = "Admin-Off-Spec"
		strGroup = "18+Ac"
	End Select
%>
<center>
<table border="1" cellpadding="3" cellspacing="0"><caption><h2><u><%=strCompound%></u></h2></caption>
<tr>
	<th>#</th>
	<th>Name</th>
	<th>DC#</th>
	<th>Hours</th>
</tr>

<%
	Dim strName, strDc, rsHours, rsGet, strGet, tableCheck
	
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	rsHours.Open strQry, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
	rowCount = 1
	tableCheck = 0
	hourCheck = 0
	
	Do While Not rsHours.EOF
	
	If rowCount <= 35 Then
	
			If strDc <> rsHours("dc_number") Then
		
				strDc = rsHours("dc_number")
				If strCompound <> "Bootcamp" Then
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
				Else
				strName = rsHours("last_name") & ", " & rsHours("First_Name")
				strName = UCase(strName)
				End If
			
			End If
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
			hourCount = hourAmCount + hourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
			
	Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
				   "</tr>" 
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If
	rowCount = rowCount + 1		
	hourCount = 0
	
	End If
	
	If rowCount > 35 And rowCount <= 70 Then
	
	If tableCheck = 0 Then
	
		Response.Write "</table></Center><br><br><br>" &_
					   "<font size=""2""><b><u>pg. 2 - "&Session("Month")&",&nbsp;"&Session("Year")&"&nbsp;"&strCompound&"&nbsp;"&Session("Month")&" Hours</u></b></font><br>" & _
					   "<br><center>" & _
					   "<table border=""1"" cellpadding=""3"" cellspacing=""0"">"
		
		tableCheck = 1
		
	End If
		
		
		If strDc <> rsHours("dc_number") Then
		
				strDc = rsHours("dc_number")
				If strCompound <> "Bootcamp" Then
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
				Else
				strName = rsHours("last_name") & ", " & rsHours("First_Name")
				strName = UCase(strName)
				End If
			rowCount = rowCount + 1	
			
			End If
		
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
			hourCount = hourAmCount + hourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
		
		Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
				   "</tr>" 
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If
		
	hourCount = 0
	
	  End If
	 
	  If rowCount > 70 And rowCount <= 105 Then
		
	  If tableCheck = 1 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 3 - "&Session("Month")&",&nbsp;"&Session("Year")&"&nbsp;"&strCompound&"&nbsp;"&Session("Month")&" Hours</u></b></font><br><br>" &_
					   "<center><table border=""1"" cellpadding=""3"" cellspacing=""0"">"
		
		tableCheck = 2
		
	  End If
		
		If strDc <> rsHours("dc_number") Then
		
				strDc = rsHours("dc_number")
				If strCompound <> "Bootcamp" Then
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
				Else
				strName = rsHours("Last_Name") & ", " & rsHours("First_Name")
				strName = UCase(strName)
				End If
			rowCount = rowCount + 1	
		End If
			
		If strCompound <> "Bootcamp" Then
			hourAmCount = getAmHours(strDc, fromDate, toDate)
			hourPmCount = getPmHours(strDc, fromDate, toDate)
			hourCount = hourAmCount + hourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
		
		Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
				   "</tr>"
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	
	  
	End If	
	
	
	If rowCount > 105 And rowCount <= 140 Then
		
	  If tableCheck = 2 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 4 - "&Session("Month")&",&nbsp;"&Session("Year")&"&nbsp;"&strCompound&"&nbsp;"&Session("Month")&" Hours</u></b></font><br><br>" &_
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
			hourCount = hourAmCount + hourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
		
		Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
				   "</tr>" 
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If
		
	hourCount = 0
	
	  
	End If
	
	
	If rowCount > 140 And rowCount <= 175 Then
		
	  If tableCheck = 3 Then
	
		Response.Write "</table></center><br><br><br><br><font size=""2""><b><u>pg. 5 - "&Session("Month")&",&nbsp;"&Session("Year")&"&nbsp;"&strCompound&"&nbsp;"&Session("Month")&" Hours</u></b></font><br><br>" &_
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
			hourCount = hourAmCount + hourPmCount
		Else
			hourCount = getBtuHours(strDc, fromDate, toDate)
		End If
		
		Response.Write "<tr>" & _
					"<td>&nbsp;" & rowCount & "&nbsp;" & _
					"<td>&nbsp;&nbsp;" & strName & _
					"<td>" & strDC & _
					"<td>&nbsp;&nbsp;" & hourCount & _
				   "</tr>"
				   
				    If Not rsHours.EOF Then
						rsHours.MoveNext
					End If 
		
	hourCount = 0
	  
	End If		
	Loop
	
	rsHours.Close
	Set rsHours = Nothing
%>

</table>

</body>
</html> 






