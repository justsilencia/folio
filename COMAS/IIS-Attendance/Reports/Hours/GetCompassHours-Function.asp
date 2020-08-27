
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->

<%

Function getAmHours(strDc, fromDate, toDate)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getAmHours = 0
	
	Select Case Session("Group")
	Case 1
        strCompound = "305"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y5' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y4' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Horticulture'" 
	Case 2
		strCompound = "307"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y1' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y2' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y3' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Youth-Masonry' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's1' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's2' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's3' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's4' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Masonry' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Marine-Tech' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Energy-Tech'" 
	Case 3
		strCompound = "308"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open stramQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
        if rsHours("hours_am") <> "CMP" and rsHours("hours_am") <> "RSD" and rsHours("hours_am") <> "RMV" and rsHours("hours_am") <> "ADC" _
        and rsHours("hours_am") <> "CXS" and rsHours("hours_am") <> "ENR" and rsHours("hours_am") <> "E" and rsHours("hours_am") <> "REF" and rsHours("hours_am") <> "ATT" _
        and rsHours("hours_am") <> "AE" and rsHours("hours_am") <> "AU" then
			getAmHours = getAmHours + rsHours("hours_am")
        end if

	rsHours.MoveNext
	
	Loop
	
End Function

Function getEduAmHours(strDc, fromDate, toDate)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getEduAmHours = 0
	
	Select Case Session("Group")
	Case 1
        strCompound = "305"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y5' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y4'"
	Case 2
		strCompound = "307"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y1' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y2' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'y3' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's1' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's2' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's3' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 's4'"
                   
	Case 3
		strCompound = "308"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open stramQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
        if rsHours("hours_am") <> "CMP" and rsHours("hours_am") <> "RSD" and rsHours("hours_am") <> "RMV" and rsHours("hours_am") <> "ADC" _
        and rsHours("hours_am") <> "CXS" and rsHours("hours_am") <> "ENR" and rsHours("hours_am") <> "E" and rsHours("hours_am") <> "REF" and rsHours("hours_am") <> "ATT" _
        and rsHours("hours_am") <> "AE" and rsHours("hours_am") <> "AU" then
			getEduAmHours = getEduAmHours + rsHours("hours_am")
        end if

	rsHours.MoveNext
	
	Loop
	
End Function

Function getVocAmHours(strDc, fromDate, toDate)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getVocAmHours = 0
	
	Select Case Session("Group")
	Case 1
        strCompound = "305"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Horticulture'" 
	Case 2
		strCompound = "307"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Youth-Masonry' " & _
				   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Masonry' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Admin-Off-Spec' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Marine-Tech' " & _
                   "or dc_number = '"& strDc &"' and class_date_am >= '"&fromDate&"' and class_date_am <= '"&toDate&"' and subject = 'Energy-Tech'" 
	Case 3
		strCompound = "308"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open stramQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
        if rsHours("hours_am") <> "CMP" and rsHours("hours_am") <> "RSD" and rsHours("hours_am") <> "RMV" and rsHours("hours_am") <> "ADC" _
        and rsHours("hours_am") <> "CXS" and rsHours("hours_am") <> "ENR" and rsHours("hours_am") <> "E" and rsHours("hours_am") <> "REF" and rsHours("hours_am") <> "ATT" _
        and rsHours("hours_am") <> "AE" and rsHours("hours_am") <> "AU" then
			getVocAmHours = getVocAmHours + rsHours("hours_am")
        end if

	rsHours.MoveNext
	
	Loop
	
End Function


Function getTotalAmHours(strDc)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getTotalAmHours = 0
	
	Select Case Session("Group")
	Case 1
        strCompound = "305"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'y5' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y4' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Horticulture'" 
	Case 2
		strCompound = "307"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'y1' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y2' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y3' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Youth-Masonry' " & _
                   "or dc_number = '"& strDc &"' and subject = 's1' " & _
                   "or dc_number = '"& strDc &"' and subject = 's2' " & _
                   "or dc_number = '"& strDc &"' and subject = 's3' " & _
                   "or dc_number = '"& strDc &"' and subject = 's4' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Masonry' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Marine-Tech' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Electronics' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Automotive' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Energy-Tech'" 
	Case 3
		strCompound = "308"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open stramQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
        if rsHours("hours_am") <> "CMP" and rsHours("hours_am") <> "RSD" and rsHours("hours_am") <> "RMV" and rsHours("hours_am") <> "ADC" _
        and rsHours("hours_am") <> "CXS" and rsHours("hours_am") <> "ENR" and rsHours("hours_am") <> "E" and rsHours("hours_am") <> "REF" and rsHours("hours_am") <> "ATT" _
        and rsHours("hours_am") <> "AE" and rsHours("hours_am") <> "AU" then
			getTotalAmHours = getTotalAmHours + rsHours("hours_am")
        end if

	rsHours.MoveNext
	
	Loop

End Function

Function getTotalEduAmHours(strDc)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getTotalEduAmHours = 0
	
	Select Case Session("Group")
	Case 1
        strCompound = "305"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'y5' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y4'" 
	Case 2
		strCompound = "307"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'y1' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y2' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y3' " & _
                   "or dc_number = '"& strDc &"' and subject = 's1' " & _
                   "or dc_number = '"& strDc &"' and subject = 's2' " & _
                   "or dc_number = '"& strDc &"' and subject = 's3' " & _
                   "or dc_number = '"& strDc &"' and subject = 's4'" 
	Case 3
		strCompound = "308"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open stramQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
        if rsHours("hours_am") <> "CMP" and rsHours("hours_am") <> "RSD" and rsHours("hours_am") <> "RMV" and rsHours("hours_am") <> "ADC" _
        and rsHours("hours_am") <> "CXS" and rsHours("hours_am") <> "ENR" and rsHours("hours_am") <> "E" and rsHours("hours_am") <> "REF" and rsHours("hours_am") <> "ATT" _
        and rsHours("hours_am") <> "AE" and rsHours("hours_am") <> "AU" then
			getTotalEduAmHours = getTotalEduAmHours + rsHours("hours_am")
        end if

	rsHours.MoveNext
	
	Loop

End Function


Function getTotalVocAmHours(strDc)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getTotalVocAmHours = 0
	
	Select Case Session("Group")
	Case 1
        strCompound = "305"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'Horticulture'" 
	Case 2
		strCompound = "307"
        stramQry = "Select hours_am from attend_am_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'Youth-Masonry' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Admin-Off-Spec' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Masonry' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Marine-Tech' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Electronics' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Automotive' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Energy-Tech'" 
	Case 3
		strCompound = "308"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open stramQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
        if rsHours("hours_am") <> "CMP" and rsHours("hours_am") <> "RSD" and rsHours("hours_am") <> "RMV" and rsHours("hours_am") <> "ADC" _
        and rsHours("hours_am") <> "CXS" and rsHours("hours_am") <> "ENR" and rsHours("hours_am") <> "E" and rsHours("hours_am") <> "REF" and rsHours("hours_am") <> "ATT" _
        and rsHours("hours_am") <> "AE" and rsHours("hours_am") <> "AU" then
			getTotalVocAmHours = getTotalVocAmHours + rsHours("hours_am")
        end if

	rsHours.MoveNext
	
	Loop

End Function



Function getPMHours(strDc, fromDate, toDate)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getPmHours = 0
	
	Select Case Session("Group")
	Case 1
        strpmQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y5' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y4' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Horticulture'" 
	Case 2
        strpmQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y1' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y2' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y3' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Youth-Masonry' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's1' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's2' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's3' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's4' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Masonry' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Marine-Tech' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Energy-Tech'" 
	Case 3
		strCompound = "Bootcamp"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open strpmQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		if rsHours("hours_pm") <> "CMP" and rsHours("hours_pm") <> "RSD" and rsHours("hours_pm") <> "RMV" and rsHours("hours_pm") <> "ADC" _
        and rsHours("hours_pm") <> "CXS" and rsHours("hours_pm") <> "ENR" and rsHours("hours_pm") <> "E" and rsHours("hours_pm") <> "REF" and rsHours("hours_pm") <> "ATT" _
        and rsHours("hours_pm") <> "NLH" and rsHours("hours_pm") <> "AE" and rsHours("hours_pm") <> "AU" then
			getPmHours = getPmHours + rsHours("hours_pm")
		end if
	rsHours.MoveNext
	
	Loop

End Function

Function getEduPMHours(strDc, fromDate, toDate)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getEduPmHours = 0
	
	Select Case Session("Group")
	Case 1
        strpmQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y5' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y4'"
	Case 2
        strpmQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y1' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y2' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'y3' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's1' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's2' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's3' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 's4'"
	Case 3
		strCompound = "Bootcamp"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open strpmQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		if rsHours("hours_pm") <> "CMP" and rsHours("hours_pm") <> "RSD" and rsHours("hours_pm") <> "RMV" and rsHours("hours_pm") <> "ADC" _
        and rsHours("hours_pm") <> "CXS" and rsHours("hours_pm") <> "ENR" and rsHours("hours_pm") <> "E" and rsHours("hours_pm") <> "REF" and rsHours("hours_pm") <> "ATT" _
        and rsHours("hours_pm") <> "NLH" and rsHours("hours_pm") <> "AE" and rsHours("hours_pm") <> "AU" then
			getEduPmHours = getEduPmHours + rsHours("hours_pm")
		end if
	rsHours.MoveNext
	
	Loop

End Function

Function getVocPMHours(strDc, fromDate, toDate)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getVocPmHours = 0
	
	Select Case Session("Group")
	Case 1
        strpmQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Horticulture'" 
	Case 2
        strpmQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Youth-Masonry' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Admin-Off-Spec' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Masonry' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Marine-Tech' " & _
                   "or dc_number = '"& strDc &"' and class_date_pm >= '"&fromDate&"' and class_date_pm <= '"&toDate&"' and subject = 'Energy-Tech'" 
	Case 3
		strCompound = "Bootcamp"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open strpmQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		if rsHours("hours_pm") <> "CMP" and rsHours("hours_pm") <> "RSD" and rsHours("hours_pm") <> "RMV" and rsHours("hours_pm") <> "ADC" _
        and rsHours("hours_pm") <> "CXS" and rsHours("hours_pm") <> "ENR" and rsHours("hours_pm") <> "E" and rsHours("hours_pm") <> "REF" and rsHours("hours_pm") <> "ATT" _
        and rsHours("hours_pm") <> "NLH" and rsHours("hours_pm") <> "AE" and rsHours("hours_pm") <> "AU" then
			getVocPmHours = getVocPmHours + rsHours("hours_pm")
		end if
	rsHours.MoveNext
	
	Loop

End Function


	
Function getBtuHours(strDc, fromDate, toDate)
	
	dim strQry, rsHours
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	getBtuHours = 0
	
	'strQry = BuildBtuIndQuery(strDc, fromDate, toDate)
	
	strQry = "Select hours from attend_btu_compass c " & _
                 "where dc_number = '"& strDC &"' and class_date >= '"&fromDate&"' and class_date <= '"&toDate&"'"	
	
	rsHours.Open strQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
		getBtuHours = getBtuHours + rsHours("hours")

	rsHours.MoveNext
	
	Loop
	
End Function

Function getTotalBtuHours(strDc)
	
	dim strQry, rsHours
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	getTotalBtuHours = 0
	
	'strQry = BuildBtuIndQuery(strDc, fromDate, toDate)
	
	strQry = "Select hours from attend_btu_compass c " & _
                 "where dc_number = '"& strDC &"'"
	
	rsHours.Open strQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
		getTotalBtuHours = getTotalBtuHours + rsHours("hours")

	rsHours.MoveNext
	
	Loop
	
End Function


Function getTotalPmHours(strDc)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getTotalPmHours = 0
	
	Select Case Session("Group")
	Case 1
        strCompound = "305"
        stramQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'y5' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y4' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Horticulture'" 
	Case 2
		strCompound = "307"
        stramQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'y1' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y2' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y3' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Youth-Masonry' " & _
                   "or dc_number = '"& strDc &"' and subject = 's1' " & _
                   "or dc_number = '"& strDc &"' and subject = 's2' " & _
                   "or dc_number = '"& strDc &"' and subject = 's3' " & _
                   "or dc_number = '"& strDc &"' and subject = 's4' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Masonry' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Marine-Tech' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Automotive' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Electronics' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Energy-Tech'" 
	Case 3
		strCompound = "308"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open stramQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
        if rsHours("hours_pm") <> "CMP" and rsHours("hours_pm") <> "RSD" and rsHours("hours_pm") <> "RMV" and rsHours("hours_pm") <> "ADC" _
        and rsHours("hours_pm") <> "CXS" and rsHours("hours_pm") <> "ENR" and rsHours("hours_pm") <> "E" and rsHours("hours_pm") <> "REF" and rsHours("hours_pm") <> "ATT" _
        and rsHours("hours_pm") <> "AE" and rsHours("hours_pm") <> "AU" then
			getTotalPmHours = getTotalPmHours + rsHours("hours_pm")
        end if

	rsHours.MoveNext
	
	Loop

End Function

Function getTotalEduPmHours(strDc)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getTotalEduPmHours = 0
	
	Select Case Session("Group")
	Case 1
        strCompound = "305"
        stramQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'y5' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y4'" 
	Case 2
		strCompound = "307"
        stramQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'y1' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y2' " & _
                   "or dc_number = '"& strDc &"' and subject = 'y3' " & _
                   "or dc_number = '"& strDc &"' and subject = 's1' " & _
                   "or dc_number = '"& strDc &"' and subject = 's2' " & _
                   "or dc_number = '"& strDc &"' and subject = 's3' " & _
                   "or dc_number = '"& strDc &"' and subject = 's4'"
                   
	Case 3
		strCompound = "308"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open stramQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
        if rsHours("hours_pm") <> "CMP" and rsHours("hours_pm") <> "RSD" and rsHours("hours_pm") <> "RMV" and rsHours("hours_pm") <> "ADC" _
        and rsHours("hours_pm") <> "CXS" and rsHours("hours_pm") <> "ENR" and rsHours("hours_pm") <> "E" and rsHours("hours_pm") <> "REF" and rsHours("hours_pm") <> "ATT" _
        and rsHours("hours_pm") <> "AE" and rsHours("hours_pm") <> "AU" then
			getTotalEduPmHours = getTotalEduPmHours + rsHours("hours_pm")
        end if

	rsHours.MoveNext
	
	Loop

End Function

Function getTotalVocPmHours(strDc)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getTotalVocPmHours = 0
	
	Select Case Session("Group")
	Case 1
        strCompound = "305"
        stramQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'Horticulture'" 
	Case 2
		strCompound = "307"
        stramQry = "Select hours_pm from attend_pm_compass " & _
                   "where dc_number = '"& strDc &"' and subject = 'Youth-Masonry' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Admin-Off-Spec' " & _
				   "or dc_number = '"& strDc &"' and subject = 'Masonry' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Marine-Tech' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Automotive' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Electronics' " & _
                   "or dc_number = '"& strDc &"' and subject = 'Energy-Tech'" 
	Case 3
		strCompound = "308"
		strGroup = "BTU"
		eduConn.Close
		eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
					 "User ID=sa;Password=Edusci321"
	End Select
	
	rsHours.Open stramQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
        if rsHours("hours_pm") <> "CMP" and rsHours("hours_pm") <> "RSD" and rsHours("hours_pm") <> "RMV" and rsHours("hours_pm") <> "ADC" _
        and rsHours("hours_pm") <> "CXS" and rsHours("hours_pm") <> "ENR" and rsHours("hours_pm") <> "E" and rsHours("hours_pm") <> "REF" and rsHours("hours_pm") <> "ATT" _
        and rsHours("hours_pm") <> "AE" and rsHours("hours_pm") <> "AU" then
			getTotalVocPmHours = getTotalVocPmHours + rsHours("hours_pm")
        end if

	rsHours.MoveNext
	
	Loop

End Function


Function getMonthHybridHours(strDc, fromDate,toDate)

	dim strQryHybrid, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getMonthHybridHours = 0
	
	Select Case Session("Group")
	Case 4
        strCompound = "305 Compass Hybrid Hours"
        strQryHybrid = "Select hours from attend_hybrid_compass " & _
                   "where dc_number = '"& strDc &"' and hybrid_group = '305' " & _
                   "and class_date >= '"&fromDate&"' and class_date <= '"&toDate&"'" 
	Case 5
		strCompound = "307 Compass Hybrid Hours"
        strQryHybrid = "Select hours from attend_hybrid_compass " & _
                   "where dc_number = '"& strDc &"' and hybrid_group = '307' " & _
                   "and class_date >= '"&fromDate&"' and class_date <= '"&toDate&"'" 
	Case 6
		strCompound = "308 Compass Hybrid Hours"
		strQryHybrid = "Select hours from attend_hybrid_compass " & _
                   "where dc_number = '"& strDc &"' and hybrid_group = '308' " & _
                   "and class_date >= '"&fromDate&"' and class_date <= '"&toDate&"'" 
    Case 7
		strCompound = "365 Compass Hybrid Hours"
		strQryHybrid = "Select hours from attend_hybrid_compass " & _
                   "where dc_number = '"& strDc &"' and hybrid_group = '365' " & _
                   "and class_date >= '"&fromDate&"' and class_date <= '"&toDate&"'" 
    End Select
	
	rsHours.Open strQryHybrid, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
    getMonthHybridHours = getMonthHybridHours + rsHours("hours")
        
	rsHours.MoveNext
	
	Loop
	

End Function

Function getHybridHours(strDc)

	dim strQryHybrid, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getHybridHours = 0
	
	Select Case Session("Group")
	Case 4
        strCompound = "305 Compass Hybrid Hours"
        strQryHybrid = "Select hours from attend_hybrid_compass " & _
                   "where dc_number = '"& strDc &"' and hybrid_group = '305'"
	Case 5
		strCompound = "307 Compass Hybrid Hours"
        strQryHybrid = "Select hours from attend_hybrid_compass " & _
                   "where dc_number = '"& strDc &"' and hybrid_group = '307'"
	Case 6
		strCompound = "308 Compass Hybrid Hours"
		strQryHybrid = "Select hours from attend_hybrid_compass " & _
                   "where dc_number = '"& strDc &"' and hybrid_group = '308'"
    Case 7
		strCompound = "365 Compass Hybrid Hours"
		strQryHybrid = "Select hours from attend_hybrid_compass " & _
                   "where dc_number = '"& strDc &"' and hybrid_group = '365'"
    End Select
	
	rsHours.Open strQryHybrid, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
    getHybridHours = getHybridHours + rsHours("hours")
        
	rsHours.MoveNext
	
	Loop
	

End Function


%>