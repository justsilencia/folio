<html>
<body bgcolor="#FFFAF0" alink="Green" vlink="Green" Link="Green">

<Center>

<H2><u><%=Request.QueryString("Class")%><BR>Report Generator</U></H2>

<H2>
- <a href="Cover/CoverPage-1.asp?Class=<%=Request.QueryString("Class")%>">Cover Page</a>
<BR><BR>
- <a href="Detailed/Reports-Detailed.asp?Class=<%=Request.QueryString("Class")%>">Detailed Report</a>
<BR><BR>
- <a href="Detailed/Reports-Detailed-Compass-BTU.asp?Class=<%=Request.QueryString("Class")%>">Compass Report (by Class)</a>
<BR><BR>
- <a href="Detailed/Reports-Detailed-Compass-BTU-Month.asp?Class=<%=Request.QueryString("Class")%>">Compass Report (all Classes)</a>
<BR><BR>
- <a href="Summary/Summary-Class.asp?Class=<%=Request.QueryString("Class")%>">Summary Report</a>
<BR><BR>
- <a href="Hours/Hours-Dept.asp?Class=<%=Request.QueryString("Class")%>">Student Hours</a>
</H2>
</Center>

</body>
</html>