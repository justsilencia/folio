<%
	intYear = DatePart("yyyy", now)
%>

<html>
<head>
	<title>Report Generator</title>
</head>

<body bgcolor="#FFFAF0" alink="Green" vlink="Green" Link="Green">

<Center>  
            
<h2><U>Hours Reports by Group</U></h2>
              
<Table Border=0>

<TR>
	<TD><h2><a href="Hours-Class.asp">- Class Hours</a></h2></TD>
</TR>
<TR>
	<TD><h2><a href="Hours-Compass.asp">- Compass Hours</a></h2></TD>
</TR>
<TR>
	<TD><h2><a href="Need-Hours-Compass.asp">- Students Lacking Hours</a></h2></TD>
</TR>
<TR>
	<TD><h2><a href="Hours-TRD-Lacking.asp">- TRD Lacking Hours</a></h2></TD>
</TR>

</Table>
 
</center>


</body>
</html>