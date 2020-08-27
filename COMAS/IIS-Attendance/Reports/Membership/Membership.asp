<%
	intYear = DatePart("yyyy", now)
%>
<html>
<head>
    <title>Report Generator  reports.asp</title>
</head>
<body bgcolor = "#FFFAF0">
<center>
    <form name="ReportGen" action="ReportRedirect.asp" method="post">
    
        <table><caption><h2>Membership Report</h2></caption>
            <tr>
                <td>Group:</td>
                <td>
                <Select Name="Group" ID=Select1>
                    <Option Value="17ac">17- Academic</Option>
                    <Option Value="17voc">17- Vocation</Option>
                    <Option Value="18ac">18+ Academic</Option>
                    <Option Value="18voc">18+ Vocation</Option>
                    <Option Value="adultac">Adult Academic</Option>
                    <Option Value="adultvoc">Adult Vocation</Option>
                </select>
                </td>
            </tr>
            <tr>
                <td>Month:</td>
                <td>
                    <Select Name="Month">
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
            </tr>
            <tr>
                <td>Year:</td>
                <td>
                    <Select Name="Year">
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
                </td>
            </tr>
            <tr>
                <td align=center colspan=2><input type=submit value="Generate Report"></input></td>
            </tr>
        </table>
    
    </form>
</center>
</body>
</html>