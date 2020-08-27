
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->

<%
	
	
	Function getAmHours(strDc, fromDate, toDate)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getAmHours = 0
	
	strQry = BuildIndAmQuery(strDc, fromDate, toDate)
	
	rsHours.Open strQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
		strDate = rsHours("Class_Date_AM")
		strActual = BuildActualAMQuery(strDate, strGroup)
		
		rsActual.Open strActual, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		
		If rsActual.EOF Then
		
			getAmHours = getAmHours + 3
			
		Else
		
			getAmHours = getAmHours + rsActual("Hours")
			
		End If
		
	rsActual.Close
		
	rsHours.MoveNext
	
	Loop
	

	End Function

	
	Function getPMHours(strDc, fromDate, toDate)

	dim strQry, rsHours, strActual, rsActual
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	Set rsActual = Server.CreateObject("ADODB.Recordset")
	getPmHours = 0
	
	strQry = BuildIndPmQuery(strDc, fromDate, toDate)
	
	rsHours.Open strQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
		strDate = rsHours("Class_Date_PM")
		strActual = BuildActualPMQuery(strDate, strGroup)
		
		rsActual.Open strActual, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		
		If rsActual.EOF Then
		
			getPmHours = getPmHours + 3
			
		Else
		
			getPmHours = getPmHours + rsActual("Hours")
			
		End If
		
	rsActual.Close
		
	rsHours.MoveNext
	
	Loop

	End Function
	
	Function getBtuHours(strDc, fromDate, toDate)
	
	dim strQry, rsHours
	Set rsHours = Server.CreateObject("ADODB.Recordset")
	getBtuHours = 0
	
	strQry = BuildBtuIndQuery(strDc, fromDate, toDate)
	
	rsHours.Open strQry, eduConn, adOpenForwardOnly, adCmdText
		
	Do While Not rsHours.EOF
		
		getBtuHours = getBtuHours + 3

	rsHours.MoveNext
	
	Loop
	
	End Function

%>