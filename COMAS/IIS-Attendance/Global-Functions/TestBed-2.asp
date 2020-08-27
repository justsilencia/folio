<!--#Include File="Attend-Functions.asp" -->
<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
strDC = "M57392"

strBTU = getBTUHours(strDC)
strEDU = getEduHours(strDC)
strHybrid = getHybridHours(strDC)

Response.write "BTU = " & strBTU
Response.write "<BR>"
Response.write "Edu = " & strEDU
Response.write "<BR>"
Response.write "Hybrid = " & strHybrid

%>

