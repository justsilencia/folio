<!--#Include File="Attend-Functions.asp" -->
<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
dim intRow, intCol, intLastRow, intLastCol, colEOS


colEOS = EOSAlert("8/21/19", "all")
intLastCol = UBound(colEOS, 1)
intLastRow = UBound(colEOS, 2)

For intRow = 0 to intLastRow
    For intCol = 0 to intLastCol
        Response.Write colEOS(intCol, intRow) & "   "
    Next
    Response.Write "<BR>"
Next

%>

