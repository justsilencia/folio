

<%
	Dim eduConn
	
	If Session("Class") = "Youth-Masonry" Then


	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If


	If Session("Class") = "Youth-GED" Then


	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Youth-GED;" & _
		     "User ID=sa;Password=Edusci321"

	End If




	If Session("Class") = "Youth-Basic" Then	


	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Youth-Basic;" & _
		      "User ID=sa;Password=Edusci321"

	End If





	If Session("Class") = "Youth-Intermediate" Then
	

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Youth-Intermediate;" & _
		     "User ID=sa;Password=Edusci321"

	End If


	If Session("Class") = "Horticulture" Then


	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If


	If Session("Class") = "S1" Then

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If

	If Session("Class") = "S2" Then

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If

	
	If Session("Class") = "S3" Then

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If


	If Session("Class") = "S4" Then

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If

	If Session("Class") = "Y1" Then

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If

	If Session("Class") = "Y2" Then

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If

	If Session("Class") = "Y3" Then

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If

	If Session("Class") = "Y4" Then

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If

	If Session("Class") = "Y5" Then

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If




	If Session("Class") = "Masonry" Then

	
	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If


	If Session("Class") = "Bootcamp" Then

	
	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If

	If Session("Class") = "Energy-Tech" Then

	
	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If

	If Session("Class") = "Automotive" Then
	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If

	If Session("Class") = "Marine-Tech" Then
	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	End If
%>