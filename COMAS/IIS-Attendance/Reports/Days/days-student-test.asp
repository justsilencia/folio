<!--#Include File="Connection.asp"-->
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->



<%
	dim strDetail
	dim strStatus 
	dim rsDetail
	dim rsStatus
        dim strDays
	

	strDetail = "SELECT DISTINCT m.dc_number, lastname, first_name, subject FROM master_roster_tbl m INNER JOIN attend_am_tbl a ON a.dc_number = m.dc_number WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		    "AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND dept_job = 'student'" & _
		    "AND Subject LIKE '%" & Session("Class") & "%' ORDER BY lastname"

	
	Set rsDetail = Server.CreateObject("ADODB.Recordset")
	

	rsDetail.Open strDetail, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
%>

<%
	
        


        If Not rsDetail.EOF Then

	strDays = "SELECT COUNT(status_am) FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  "AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		  "AND dept_job = 'Student' AND status_am = 'P'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _

                  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  "AND dept_job = 'Student' AND status_am = 'E'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _

                  "OR class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  "AND dept_job = 'Student' AND status_am = 'LP'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'"
                  


	Set rsDays = Server.CreateObject("ADODB.Recordset")
	rsDays.Open strDays, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsDays("") & ""

	End If
%>




<% 
		

	If Not rsDetail.EOF Then

	   


	  Response.Write "" & rsDetail("LastName") & ", " & rsDetail("First_Name") & ""

	Else

	  Response.Write "&nbsp;"



	End If


%>



<%
	If Not rsDetail.EOF Then
	
	Response.Write "" & rsDetail("dc_number") & ""

	strStatus = "SELECT status_am, class_date_am FROM attend_am_tbl WHERE class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		    "AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		    "AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
		    "AND dept_job = 'Student' ORDER BY class_date_am"

	Set rsStatus = Server.CreateObject("ADODB.Recordset")	
	rsStatus.Open strStatus, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Else

	Response.Write "&nbsp;"

	End If
%>