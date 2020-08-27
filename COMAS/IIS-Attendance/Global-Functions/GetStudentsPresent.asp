<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
	Function getStudentsPresent(argShift, argTable, argDept, argDay, argBTU)    
    
		Set rsPresent = Server.CreateObject("ADODB.Recordset")

		If argBTU <> "No" Then 
			strPresent = "SELECT COUNT(Status) FROM Attend_Bootcamp a inner join class_assignment c on a.dc_number = c.dc_number " & _
				"WHERE Class_Date = '"& argDay & "' AND a.grad <> 'Grad'" & _
				"AND Status = 'P' AND a.Class_Number = '" & argBTU & "' AND a.dept_job = 'Student'" & _
				"OR Class_Date = '"& argDay &"' And a.grad <> 'Grad'" & _
				"AND Status = 'E' AND a.Class_Number = '" & argBTU & "' AND a.dept_job = 'Student'" & _
				"OR Class_Date = '"& argDay &"' AND a.grad <> 'Grad'" & _
				"AND Status = 'LP' AND a.Class_Number = '" & argBTU & "' AND a.dept_job = 'Student'"

		Else
		
			If argShift = "AM" then
				strPresent = "SELECT COUNT(Status_AM) FROM attend_AM_"& argTable &" WHERE status_AM = 'P'" & _
						" AND class_date_AM = '"& argDay &"' OR status_AM = 'E'" & _
						" AND class_date_AM = '"& argDay &"' OR status_AM = 'LP'" &_
						" AND class_date_AM = '"& argDay &"'"

			Else 
				strPresent = "SELECT COUNT(Status_PM) FROM attend_PM_"& argTable &" WHERE status_PM = 'P'" & _
						" AND class_date_PM = '"& argDay &"' OR status_PM = 'E'" & _
						" AND class_date_PM = '"& argDay &"' OR status_PM = 'LP'" &_
						" AND class_date_PM = '"& argDay &"'"

			End If

		End If

		rsPresent.Open strPresent, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

		getStudentsPresent = rsPresent("")
		
		rsPresent.Close
  End Function	
%>
