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
            
<h2><U>Group<BR>Compass Hours Report</U></h2>
              
           <br>
           
<Form Name="NewStudent" Action="ReportRedirect-Compass-Hours.asp" Method=Post>
<Table Border=0>

<TR>
	<TD>Group:</TD>
	<TD><Select Name="Group" ID=Select1>
		<Option Value="1">305 Live</Option>
		<Option Value="2">307 Live</Option>
	    <Option Value="3">308 Live - Reported as Hybrid</Option>
	    <option value="4">305 Hybrid</option>
	    <option value="5">307 Hybrid</option>
	    <option value="7">365 Hybrid</option>
	    </select>


</TD>
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
</select>


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
        <Option Value="2022">2022</Option>
        <Option Value="2023">2023</Option>
        <Option Value="2024">2024</Option>
          </Select>



</TD>
</TR>

</Table>
<BR><BR>

<input type="submit" Value="View Report">
 
</center>


</body>
</html>