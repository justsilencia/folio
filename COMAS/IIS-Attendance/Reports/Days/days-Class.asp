<%
	Session("Class") = Request.QueryString("Class")
	intYear = DatePart("yyyy", now)
%>


  <html>

<title>Report Generator  reports.asp</title>


      </head>
<body bgcolor = "#FFFAF0">

<BR>
<H3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../Reports.asp?Class=<%=Request.QueryString("Class")%>"><Font Color="Green">- Back</a></Font></H3>

<Center>  
            
<h2><U><%=Request.QueryString("Class")%><BR>Days Report Gain TIme</U></h2>
              
           <br><br><BR><BR>




<Form Name="NewStudent" Action="ReportRedirect-days.asp" Method=Post>
<Table Border=0>

<%

	If Session("Class") = "Bootcamp" Then
%>
<TR>
	<TD>Class Number:
	<TD><Input Type=Text Name="Number" MaxLength="3" Size="4">
</TR>
<%
	End If
%>
<TR>
	<TD>Month:</TD>
	<TD><Select Name="Month">
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
          </Select>



</TD>
</TR>

</Table>
<BR><BR>

<input type="submit" Value="View Report">
 
</center>


</body>
</html>