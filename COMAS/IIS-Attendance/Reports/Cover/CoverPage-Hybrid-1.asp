<%
	Session("Class") = Request.QueryString("Class")
	intYear = DatePart("yyyy", now)
%>

  <html>
    <head>

<title>Cover Page Generator</title>


      </head>
<BR>

         <body bgcolor="#FFFAF0">

  <Center>             
<H2><U><%=Request.QueryString("Class")%><BR>Report Cover Page</U></H2>
              
          <BR><BR>


<Form Name="NewStudent" Action="CoverPage-Hybrid-2.asp" Method=Post>
<Table Border=0>

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
            



</TD>
</TR>

</Table>
<BR><BR>

<input type="submit" Value="View Cover Sheet">
 
</center>


</body>
</html>