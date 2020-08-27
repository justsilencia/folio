<!--#Include File = "Connection.asp" -->
<!--#MetaData Type="TypeLib"
	      File="H:\Program Files\Common Files\system\ado\msado15.dll"-->


<%

	dim rsDelete
	dim strDelete

	strDelete = "SELECT * FROM attend_AM_compass WHERE subject = '"&Session("Dept")&"' AND class_date_AM = '" & Request.Form("DDay") & "'" & _
		       " AND hours_am <> '' or subject = '"&Session("Dept")&"' " & _
               " AND class_date_AM = '" & Request.Form("DDay") & "' AND hours_am is not null"


	Set rsDelete = Server.CreateObject("ADODB.Recordset")
	rsDelete.Open strDelete, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText

	

	If Request.Form("Delete") <> "" Then

	Do While Not rsDelete.EOF

	   rsDelete.Delete

	   rsDelete.MoveNext

	Loop

	   Response.Redirect "Compass-View.asp"

	Else

	   Response.Redirect "Compass-View.asp"

	End If

	
	rsDelete.Close
	Set rsDelete = Nothing 

%>	

