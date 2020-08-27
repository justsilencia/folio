<!--#Include File = "Connection.asp" -->
<!--#MetaData Type="TypeLib"
	      File="H:\Program Files\Common Files\system\ado\msado15.dll"-->


<%

	dim rsDelete
	dim strDelete

	strDelete = "SELECT * FROM attend_am_"&Session("Dept")&" WHERE subject = '"&Session("Dept")&"' AND class_date_am = '" & Request.Form("DDay") & "' AND status_am = 'P'" & _
		    "OR subject = '"&Session("Dept")&"' AND class_date_am = '" & Request.Form("DDay") & "' AND status_am = 'A'" & _
		    "OR subject = '"&Session("Dept")&"' AND class_date_am = '" & Request.Form("DDay") & "' AND status_am = 'AE'" & _
            "OR subject = '"&Session("Dept")&"' AND class_date_am = '" & Request.Form("DDay") & "' AND status_am = 'AU'" & _
            "OR subject = '"&Session("Dept")&"' AND class_date_am = '" & Request.Form("DDay") & "' AND status_am = 'X'"& _
		    "OR subject = '"&Session("Dept")&"' AND class_date_am = '" & Request.Form("DDay") & "' AND status_am = 'H'"


	Set rsDelete = Server.CreateObject("ADODB.Recordset")
	rsDelete.Open strDelete, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText

	

	If Request.Form("Delete") <> "" Then

	Do While Not rsDelete.EOF

	   rsDelete.Delete

	   rsDelete.MoveNext

	Loop

	   Response.Redirect "Monthly-View.asp"

	Else

	   Response.Redirect "Monthly-View.asp"

	End If

	
	rsDelete.Close
	Set rsDelete = Nothing 

%>	

