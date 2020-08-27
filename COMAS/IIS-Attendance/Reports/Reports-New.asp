<%
	If Request.QueryString("Class") <> "Bootcamp" Then
%>

<html>
<body bgcolor="#FFFAF0" alink="Green" vlink="Green" Link="Green">
<BR>
<H3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://comas" Target="_top">- Back</a></H3>

<BR>
<Center>

<Table Border="1" CellSpacing="4" CellPadding="4"><Caption><U><H1>Select a Class</H1></U></Caption>
<TR>
	
<%
		If Request.QueryString("Class") = "Hours" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Hours</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Hours/Hours-Dept.asp"">[Hours]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "Y1" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Y1</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Y1"">[Y1]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "Y2" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Y2</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Y2"">[Y2]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "Y3" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Y3</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Y3"">[Y3]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "Y4" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Y4</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Y4"">[Y4]</a>&nbsp;"
		End If
	
		If Request.QueryString("Class") = "Y5" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Y5</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Y5"">[Y5]</a>&nbsp;"
		End If
		
		If Request.QueryString("Class") = "Youth-Masonry" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Youth-Masonry</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Youth-Masonry"">[Youth-Masonry]</a>&nbsp;"
		End If
	
		If Request.QueryString("Class") = "Horticulture" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Horticulture</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Horticulture"">[Horticulture]</a>&nbsp;"
		End If
%>

	<TD>&nbsp;<a href="Reports.asp?Class=Bootcamp">[Bootcamp]</a>&nbsp;

<%

		If Request.QueryString("Class") = "Masonry" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Masonry</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Masonry"">[Masonry]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "Energy-Tech" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Energy-Tech</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Energy-Tech"">[Energy-Tech]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "Marine-Tech" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Marine-Tech</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Marine-Tech"">[Marine-Tech]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "S1" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">S1</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=S1"">[S1]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "S2" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">S2</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=S2"">[S2]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "S3" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">S3</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=S3"">[S3]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "S4" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">S4</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=S4"">[S4]</a>&nbsp;"
		End If

		If Request.QueryString("Class") = "Membership" Then
			Response.Write "<TD>&nbsp;<Font Color=""Red"">Membership</Font>"
		Else
			Response.Write "<TD>&nbsp;<a href=""Reports.asp?Class=Membership"">[Membership]</a>&nbsp;"
		End If

%>
		
</TR>

</Table>

<%
	If Request.QueryString("Class") <> "All-Classes" Then

	If Request.QueryString("Class") <> "Membership" Then
	
	If Request.QueryString("Class") <> "Hours" Then
%>
<Center>

<BR><BR>
<H1><u><%=Request.QueryString("Class")%><BR>Report Generator</U></H1>
<BR>
<H2>
- <a href="Cover/CoverPage-1.asp?Class=<%=Request.QueryString("Class")%>">Cover Page</a>
<BR><BR>
- <a href="Detailed/Reports-Detailed.asp?Class=<%=Request.QueryString("Class")%>">Detailed Report</a>
<BR><BR>
- <a href="Detailed/Reports-Detailed-Compass.asp?Class=<%=Request.QueryString("Class")%>">Compass Report</a>
<BR><BR>
- <a href="Summary/Summary-Class.asp?Class=<%=Request.QueryString("Class")%>">Summary Report</a>
<BR><BR>
- <a href="Hours/Hours-Dept.asp?Class=<%=Request.QueryString("Class")%>">Student Hours</a>
</H2>
</Center>

<%
	End If
	End If
	End If
%>

<%
	If Request.QueryString("Class") = "All-Classes" Then
%>

<BR><BR>
<H1><u><%=Request.QueryString("Class")%><BR>Report Generator</U></H1>
<BR>
<H2>

- <a href="Hours/Hours-Dept.asp?Class=<%=Request.QueryString("Class")%>">Student Hours</a>
<BR><BR>
- <a href="Summary/AA-Month.asp?Class=<%=Request.QueryString("Class")%>">Attendance Averages</a>

</H2>
</Center>

<%
	End If
%>


<%
	If Request.QueryString("Class") = "Hours" Then
%>

<BR><BR>
<H1><u><%=Request.QueryString("Class")%><BR>Report Generator</U></H1>
<BR>
<H2>

- <a href="Hours/Hours-Dept.asp?Class=1">YO 18+ Academic</a>
<BR><BR>
- <a href="Summary/AA-Month.asp?Class=<%=Request.QueryString("Class")%>">Attendance Averages</a>

</H2>
</Center>

<%
	End If
%>

<%
	If Request.QueryString("Class") = "Membership" Then
%>

<BR><BR>
<H1><u><%=Request.QueryString("Class")%><BR>Report Generator</U></H1>
<BR>
<H2>

- <a href="Membership/Membership.asp">Membership Report</a>
<BR><BR>

</H2>
</Center>

<%
	End If
%>

</Body>
</html>

<%
	End If

	If Request.QueryString("Class") = "Bootcamp" Then
%>

<html>
<body bgcolor="#FFFAF0" alink="Green" vlink="Green" Link="Green">
<BR>
<H3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://comas" Target="_top">- Back</a></H3>

<BR>
<Center>

<Table Border="1" CellSpacing="4" CellPadding="4"><Caption><U><H1>Select a Class</H1></U></Caption>
<TR>
	<TD>&nbsp;<a href="Hours/Hours-Dept.asp">[Hours]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=Y1">[Y1]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=Y2">[Y2]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=Y3">[Y3]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=Y4">[Y4]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=Y5">[Y5]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=Youth-Masonry">[Youth-Masonry]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=Horticulture">[Horticulture]</a>&nbsp;
	<TD>&nbsp;<Font Color="Red">[Bootcamp]</Font>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=Masonry">[Masonry]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=Energy-Tech">[Energy-Tech]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=Marine-Tech">[Marine-Tech]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=S1">[S1]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=S2">[S2]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=S3">[S3]</a>&nbsp;
	<TD>&nbsp;<a href="Reports.asp?Class=S4">[S4]</a>&nbsp;
</TR>

</Table>

<Center>

<BR><BR>
<H1><u><%=Request.QueryString("Class")%><BR>Report Generator</U></H1>
<BR>
<H2>
- <a href="Cover/CoverPage-1.asp?Class=<%=Request.QueryString("Class")%>">Cover Page</a>
<BR><BR>
- <a href="Detailed/Reports-Detailed.asp?Class=<%=Request.QueryString("Class")%>">Detailed Report</a>
<BR><BR>
- <a href="Detailed/Reports-Detailed-Compass-BTU.asp?Class=<%=Request.QueryString("Class")%>">Compass Report</a>
<BR><BR>
- <a href="Summary/Summary-Class.asp?Class=<%=Request.QueryString("Class")%>">Summary Report</a>
<BR><BR>
- <a href="Hours/Hours-Dept.asp?Class=<%=Request.QueryString("Class")%>">Student Hours</a>

</H2>
</Center>

<%
	End If
%>