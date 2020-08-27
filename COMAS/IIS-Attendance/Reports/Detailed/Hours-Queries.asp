

<%

	Function BuildLoopQuery(fromDate, toDate)

	Select Case Session("Group")
		Case 1
	BuildLoopQuery = "SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_Y4 c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Y4 c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_Y5 c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Y5 c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By Last_Name"
		Case 2
	BuildLoopQuery = "SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_Horticulture c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Horticulture c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By Last_Name"
		Case 3
	BuildLoopQuery = "SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_Y1 c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Y1 c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_Y2 c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Y2 c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_Y3 c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Y3 c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By Last_Name"
		Case 4
	BuildLoopQuery = "SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_yMasonry c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_yMasonry c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By Last_Name"
		Case 5
	BuildLoopQuery = "SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_S1 c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_S1 c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_S2 c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_S2 c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_S3 c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_S3 c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By Last_Name"
		Case 6
	BuildLoopQuery = "SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_elec c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_elec c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_auto c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_auto c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_am_Masonry c ON m.dc_number = c.dc_number" & _
" WHERE Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT m.First_Name, m.Last_Name, m.dc_number" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Masonry c ON m.dc_number = c.dc_number" & _
" WHERE Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By Last_Name"
	Case 7
	BuildLoopQuery = "SELECT DISTINCT m.dc_number, m.First_Name, m.LastName" & _
" FROM Master_Roster_tbl m INNER JOIN Attend_Bootcamp c ON m.dc_number = c.dc_number" & _
" WHERE Status = 'P' AND Class_Date >= '"&fromDate&"' AND Class_Date <= '"&toDate&"'" & _
" OR Status = 'E' AND Class_Date >= '"&fromDate&"' AND Class_Date <= '"&toDate&"'" & _
" OR Status = 'ENR' AND Class_Date >= '"&fromDate&"' AND Class_Date <= '"&toDate&"'" & _
" ORDER BY LastName"
End Select

End Function
Function BuildIndAmQuery(strDc, fromDate, toDate)

	Select Case Session("Group")
		Case 1
	BuildIndAmQuery = "SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_Y4 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_Y5 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" Order By c.dc_number" 
		Case 2
	BuildIndAmQuery = "SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_Horticulture c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" Order By c.dc_number"
		Case 3
	BuildIndAmQuery = "SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_Y1 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_Y2 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_Y3 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" Order By c.dc_number"
		Case 4
	BuildIndAmQuery = "SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_yMasonry c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" Order By c.dc_number"
		Case 5
 BuildIndAmQuery = "SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_S1 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_S2 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_S3 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" Order By c.dc_number"
		Case 6
	BuildIndAmQuery = "SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_elec c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_auto c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_am" & _
" FROM Master_Roster m INNER JOIN Attend_am_Masonry c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_am = 'P' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_am = 'E' AND Class_Date_am >= '"&fromDate&"' AND Class_Date_am <= '"&toDate&"'" & _
" Order By c.dc_number"
End Select

End Function

Function BuildIndPmQuery(strDc, fromDate, toDate)
Select Case Session("Group")
	Case 1
	BuildIndPmQuery = " SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Y4 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Y5 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By c.dc_number"
	Case 2
	BuildIndPmQuery = " SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Horticulture c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By c.dc_number"
	Case 3
	BuildIndPmQuery = " SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Y1 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Y2 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Y3 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By c.dc_number"
	Case 4
	BuildIndPmQuery = " SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_yMasonry c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By c.dc_number"
	Case 5
	BuildIndPmQuery = " SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_S1 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_S2 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_S3 c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By c.dc_number"
	Case 6
	BuildIndPmQuery = " SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_elec c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_auto c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" UNION" & _
" SELECT c.dc_number, class_date_pm" & _
" FROM Master_Roster m INNER JOIN Attend_pm_Masonry c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status_pm = 'P' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status_pm = 'E' AND Class_Date_pm >= '"&fromDate&"' AND Class_Date_pm <= '"&toDate&"'" & _
" Order By c.dc_number"
End Select
End Function
Function BuildBtuIndQuery(strDc, fromDate, toDate)
	BuildBtuIndQuery = "SELECT m.dc_number, c.Status" & _
" FROM Master_Roster_tbl m INNER JOIN Attend_Bootcamp c ON m.dc_number = c.dc_number" & _
" WHERE m.dc_number = '"&strDc&"' And Status = 'P' AND Class_Date >= '"&fromDate&"' AND Class_Date <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status = 'E' AND Class_Date >= '"&fromDate&"' AND Class_Date <= '"&toDate&"'" & _
" OR m.dc_number = '"&strDc&"' And Status = 'ENR' AND Class_Date >= '"&fromDate&"' AND Class_Date <= '"&toDate&"'" & _
" ORDER BY m.dc_number"
End Function

Function BuildActualAMQuery(strDate, strGroup)
	BuildActualAMQuery = "SELECT Hours FROM ClassAM_Hours WHERE Date = '"&strDate&"' AND Class = '"&strGroup&"'"
End Function
Function BuildActualPMQuery(strDate, strGroup)
	BuildActualPMQuery = "SELECT Hours FROM ClassPM_Hours WHERE Date = '"&strDate&"' AND Class = '"&strGroup&"'"
End Function
%>