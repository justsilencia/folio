

<%
	Dim eduConn

	
	
	Set conYg = Server.CreateObject("ADODB.Connection")
	conYg.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Youth-GED;" & _
		   "User ID=sa;Password=Edusci321"

	



	
	Set conYb = Server.CreateObject("ADODB.Connection")
	conYb.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Youth-Basic;" & _
		   "User ID=sa;Password=Edusci321"

	



	
	Set conYi = Server.CreateObject("ADODB.Connection")
	conYi.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Youth-Intermediate;" & _
		    "User ID=sa;Password=Edusci321"



	

	
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"

	


	
	
	Set conMas = Server.CreateObject("ADODB.Connection")
	conMas.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Masonry;" & _
		    "User ID=sa;Password=Edusci321"

	


	
	
	Set conBc = Server.CreateObject("ADODB.Connection")
	conBc.Open "Provider=SQLOLEDB;Data Source=miracle;Initial Catalog=Boot-Camp;" & _
		   "User ID=sa;Password=Edusci321"

	

%>