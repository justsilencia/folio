<%

	Dim eduConn
	Set eduConn = Server.CreateObject("ADODB.Connection")
	eduConn.Open "Provider=SQLOLEDB;Data Source=Miracle;Initial Catalog=COMAS;" & _
		     "User ID=sa;Password=Edusci321"


%>