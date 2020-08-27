<%
	Session("Class") = Request.QueryString("Class")
	If Session("Year") = " " then
		intYear = DatePart("yyyy", now)
	Else
		intYear = Session("Year")
	End if
	
	If Session("Month") = " " then
		intMonth = DatePart("m", now)
	Else
		intMonth = Session("Month")
	End if
%>

  <html>
    <head>

<title>Report Generator</title>

      </head>
<body bgcolor = "#FFFAF0">
<BR>

<Center>
<h2><U><%=Request.QueryString("Class")%><BR>Compass Report</U></H2>             
 

<Form Name="NewStudent" Action="ReportRedirect-Detailed-Compass-BTU.asp" Method=Post>
<Table Border=0>
<TR>
	<TD>Class:</TD>
	<TD><Input type=text Name="class_number" maxlength="3" size="6"></TD>
</TR>
<TR>
	<TD>Month:</TD>
	<TD><Select Name="Month">
	    <Option Value="<%=intMonth%>"><%=intMonth%></Option>
		<Option Value="January">January</Option>
	    <Option Value="February">February</Option>
	    <Option Value="March">March</Option>
	    <Option Value="April">April</Option>
	    <Option Value="May">May</Option>
	    <Option Value="June">June</Option>
	    <Option Value="July">July</Option>
            <Option Value="August">August</Option>
            <Option Value="September">September</Option>
            <Option Value="October">October</Option>
            <Option Value="November">November</Option>
            <Option Value="December">December</Option>
        </Select>
</TD>
</TR>

<TR>
	<TD>Year:</TD>
	<TD><Select Name="Year">
	    <Option Value="<%=intYear%>"><%=intYear%></Option>
	    <Option Value="2013">2013</Option>
	    <Option Value="2014">2014</Option>
	    <Option Value="2015">2015</Option>
	    <Option Value="2016">2016</Option>
	    <Option Value="2017">2017</Option>
	    <Option Value="2018">2018</Option>
	    <Option Value="2019">2019</Option>
        <Option Value="2020">2020</Option>
        <Option Value="2021">2021</Option>
        <Option Value="2022">2019</Option>
        <Option Value="2023">2020</Option>
        <Option Value="2024">2021</Option>
        </Select>  
	</TD>
</TR>
</Table>
<BR><BR>

<input type="submit" Value="View Report">
 
</center>


</body>
</html>