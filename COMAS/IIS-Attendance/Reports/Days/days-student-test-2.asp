<!--#Include File="Connection.asp"-->
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->









<%
	If Not rsDetail.EOF Then

	strDays = "SELECT COUNT(status_am) FROM attend_am_tbl WHERE class_date_am >= '1/1/2013'" & _
		  "AND class_date_am <= '1/31/2014' AND Subject LIKE 'masonry" & _
		  "AND dept_job = 'Student' AND status_am = 'P'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" 


	Set rsDays = Server.CreateObject("ADODB.Recordset")
	rsDays.Open strDays, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsDays("") & ""

	End If
%>