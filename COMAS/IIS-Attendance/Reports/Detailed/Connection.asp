

<%
	Dim eduConn
	
	If Session("Class") = "Bootcamp" Then
	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
		     "User ID=sa;Password=Edusci321"
		     
	Else
	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If


	If IsNull(Session("Class")) = true then
	Response.Redirect "http://Comas"
	End if
	
%>