<!--#Include File="../../Global-Functions/Attend-Functions.asp"-->
<!-- #MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->

<html>

<body>

<%
    dim strTeacher
    dim rsTeacher

	strTeacher = "SELECT teacher FROM teachers_tbl WHERE class = '"&Session("Class")&"'" 

	Set rsTeacher = Server.CreateObject("ADODB.Recordset")
	rsTeacher.Open strTeacher, eduConn, adOpenStatic, adLockReadOnly, adCmdText
%>	


<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<big><strong><U><%=Session("Class")%></U></Big>
<p>
<Strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Monthly Report for: &nbsp; <u><%=Request.Form("Month")%>,&nbsp; <%=Request.Form("Year")%></u></strong></Strong></small></p>

<p><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small>Instructor:&nbsp; <u><%=rsTeacher("teacher")%></u></strong></p>

<p><strong><big>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </big></strong></p>

<p><strong><big>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Report Contents:</big></strong></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; * Attendance Class&nbsp; Summary Report</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp; * Student Attendance Detailed Report</p>


</body>
</html>

<%
    rsTeacher.close
    set rsTeacher = nothing

%>

