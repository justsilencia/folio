<%
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


<Center>  
            
<h2><U>TRD Inmates Lacking Compass Hours</U></h2>
    <br>
           
<Form Name="NewStudent" Action="TRD-Report.asp" Method=Post>
<Table Border=0>

<TR>
	<TD>Months until TRD:</TD>
	<TD><Select Name="dateRange" ID=Select1>
	    <option value="<%=DateAdd("m", 6, Date)%>">6</option>
		<option value="<%=DateAdd("m", 5, Date)%>">5</option>
		<option value="<%=DateAdd("m", 4, Date)%>">4</option>
		<Option Value="<%=DateAdd("m", 3, Date)%>">3</Option>
		<Option Value="<%=DateAdd("m", 2, Date)%>">2</Option>
		<Option Value="<%=DateAdd("m", 1, Date)%>">1</Option>
	    </select>
	</TD>
</TR>
<TR>
	<TD>Facility or group:</TD>
	<TD><Select Name="groupRange">
		<Option Value="All">All Sumter Facilities</Option>   
	    <Option Value="308 Bootcamp">308 Bootcamp</Option>
	    <Option Value="365 Workcamp Hybrid">365 Workcamp Hybrid</Option>
	    <Option Value="305 Hybrid">305 Hybrid</Option>
	    <Option Value="307 Hybrid">307 Hybrid</Option>
		<Option Value="All Academic Classes">All Academic Classes</Option>
	    <Option Value="S1">S1</Option>
	    <Option Value="S2">S2</Option>
	    <Option Value="S3">S3</Option>
        <Option Value="S4">S4</Option>
        <Option Value="Y1">Y1</Option>
        <Option Value="Y2">Y2</Option>
        <Option Value="Y3">Y3</Option>
        <Option Value="Y4">Y4</Option>
		<Option Value="Y5">Y5</Option>
		<Option Value="All Vocational Classes">All Vocational Classes</Option>
		<Option Value="Admin-Off-Spec">Admin Office Specialist</Option>
		<Option Value="Energy-Tech">Energy-Tech</Option>
		<Option Value="Horticulture">Horticulture</Option>
		<Option Value="Marine-Tech">Marine-Tech</Option>
		</select>
	</TD>
</TR>

</Table>
<BR><BR>

<input type="submit" Value="View Report">
 
</center>


</body>
</html>