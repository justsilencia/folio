<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
	Function getMembership(argShift, argTable, argDept, argDay, argBTU)    
    
		Set rsMembers = Server.CreateObject("ADODB.Recordset") 
		
		If argBTU <> "No" then
			strMembers = "SELECT COUNT(Status) FROM attend_Bootcamp a inner join class_assignment c on a.dc_number = c.dc_number" & _
                " WHERE Class_Date = '" & argDay &"'" & _
 		        "AND Status <> ''  AND Status <> 'H' AND Status <> 'ADC' AND Status <> 'ATT' AND Status <> 'CMP'" & _
                "AND Status <> 'CXS' AND Status <> 'REF' AND Status <> 'WTD'" & _
                "AND Status <> 'RMV' AND Status <> 'RSD'" & _
                "AND a.Class_Number = '" & argBTU & "' AND a.dept_job = 'Student' AND a.grad <> 'Grad'"  
		
		Else

			If argShift = "AM" then
				strMembers = "SELECT COUNT(Status_AM) FROM attend_AM_"& argTable &" WHERE class_date_aM = '"& argDay &"'" & _
					"AND status_am <> ''  AND status_am <> 'H' AND status_am <> 'ADC' AND status_am <> 'ATT' AND status_am <> 'CMP'" & _
					"AND status_am <> 'CXS' AND status_am <> 'REF' AND status_am <> 'WTD'" & _
					"AND status_am <> 'RMV' AND status_am <> 'RSD' AND status_am <> 'ENR'" & _
					"AND status_am <> 'NLH' AND Subject LIKE '%" & argDept & "%' " 

			Else 

				strMembers = "SELECT COUNT(Status_PM) FROM attend_PM_"& argTable &" WHERE class_date_PM = '"& argDay &"'" & _
					"AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
					"AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
					"AND status_pm <> 'RMV' AND status_pm <> 'RSD' AND status_pm <> 'ENR'" & _
					"AND status_pm <> 'NLH' AND Subject LIKE '%" & argDept & "%' " 

			End If

		End If
								
		rsMembers.Open strMembers, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		getMembership = rsMembers("")
		
		rsMembers.Close
  End Function	
%>