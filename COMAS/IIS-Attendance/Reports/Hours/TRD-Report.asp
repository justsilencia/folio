<!--#Include File="../../Global-Functions/Attend-Functions.asp"-->
<!--#Include File="../../Global-Functions/EOSAlertCollection.asp"-->
<!--#MetaData Type="TypeLib"
	      File="h:\Program Files\Common Files\system\ado\msado15.dll"-->

<%
    Server.ScriptTimeout = 90

	dim strTitle, intRow, intCol, intLastRow, intLastCol, colEOS , actRec, rowTotal, pageCount, pageTotal, recPage
	dateArg = Request.Form("dateRange")
	groupArg = Request.Form("groupRange")
	rowCount = 0
	recPage = 34

	If groupArg = "All" Then
		strTitle = "All Sumter Facilities"
	Else
		strTitle = groupArg
	End If

	colEOS = EOSAlert(dateArg, groupArg)
	intLastCol = UBound(colEOS, 1)
	intLastRow = UBound(colEOS, 2)
	rowTotal = intlastRow
	pageTotal = 1 + ((rowTotal -(rowTotal Mod recPage))/recPage)
	pageCount = 1
		
		If  colEOS(0,0) = "There are no inmates for this selection." Then
			Response.write "<H2><center>" & colEOS(0,0) & "</center></H2>"
		Else	
			For intRow = 0 to intLastRow
				strName = colEOS(1,intRow) & ", " & colEOS(2,intRow)
				actRec = intRow + 1	
				
				If actRec MOD recPage = 1 then
					Response.Write "<font size='2'><b><u>pg." & pageCount & "; " & strTitle & " - TRD in " & DatePart("m",dateArg) - DatePart("m",Date) & " months.</u></b></font>" & _
						"<font style='text-align: right;'></font> "

					Response.Write "<center>" & _
						"<table border='1' cellpadding='3' cellspacing='0'><caption><h2><u>Inmates Needing Compass Before TRD<BR>" & strTitle &"</u></h2></caption>" & _
						"<TR>" & _		
							"<TH>#</TH>" & _
							"<TH>DC#</TH>" & _
							"<TH align=left> &nbsp;Name</TH>" & _
							"<TH>AM</TH>" & _
							"<TH>PM</TH>" & _
							"<TH>Fac.</TH>" & _
							"<TH>Dorm</TH>" & _
							"<TH>TRD</TH>" & _
							"<TH>Edu Hours</TH>" & _
							"<TH>Voc Hours</TH>" & _
							"<TH>Hybrid Hours</TH>" & _
						"</TR>"
				End If
				
				If actRec MOD recPage = 0 Then
					Response.Write "<TR>" & _
						"<TD>" & actRec & "</TD>" & _
						"<TD>" & colEOS(0,intRow) & "</TD>" & _
						"<TD align=left> &nbsp;" & strName & "</TD>" & _
						"<TD align=center>" & colEOS(3,intRow) & "</TD>" & _
						"<TD align=center>" & colEOS(4,intRow) & "</TD>" & _
						"<TD align=center>" & colEOS(5,intRow) & "</TD>" & _
						"<TD>" & colEOS(6,intRow) & "</TD>" & _
						"<TD>" & colEOS(7,intRow) & "</TD>" & _
						"<TD align=center>" & colEOS(8,intRow) & "</TD>" & _
					"</TR>" & _
					"</table></center><BR><BR>"
					pageCount = pageCount + 1
				Else
					Response.Write "<TR>" & _
						"<TD>" & actRec & "</TD>" & _
						"<TD>" & colEOS(0,intRow) & "</TD>" & _
						"<TD align=left> &nbsp;" & strName & "</TD>" & _
						"<TD align=center>" & colEOS(3,intRow) & "</TD>" & _
						"<TD align=center>" & colEOS(4,intRow) & "</TD>" & _
						"<TD align=center>" & colEOS(5,intRow) & "</TD>" & _
						"<TD>" & colEOS(6,intRow) & "</TD>" & _
						"<TD>" & colEOS(7,intRow) & "</TD>" & _
						"<TD align=center>" & colEOS(8,intRow) & "</TD>" & _
						"<TD align=center>" & colEOS(9,intRow) & "</TD>" & _
						"<TD align=center>" & colEOS(10,intRow) & "</TD>" & _
					"</TR>"	
				End If
			Next
		End If
%>
</table>
