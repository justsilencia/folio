
<%
	Session("Year") = Request.Form("Year") 	
	Session("Month") = Request.Form("Month")
	

	If Session("Class") <> "Bootcamp" Then


	If Request.Form("Shift") = "AM" Then

	If Request.Form("Month") = "January" Then

	Session("Month3") = 1
	Session("Days3") = 31 

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "February" Then

	Session("Month3") = 2
	Session("Days3") = 28

	If Session("Year") = 2016 Or Session("Year") = 2020 Then
		Session("Days3") = 29
	End If

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "March" Then

	Session("Month3") = 3
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "April" Then

	Session("Month3") = 4
	Session("Days3") = 30

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "May" Then

	Session("Month3") = 5
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "June" Then

	Session("Month3") = 6
	Session("Days3") = 30

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "July" Then

	Session("Month3") = 7
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "August" Then

	Session("Month3") = 8
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If	


	
	If Request.Form("Month") = "September" Then

	Session("Month3") = 9
	Session("Days3") = 30

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If		


	
	If Request.Form("Month") = "October" Then

	Session("Month3") = 10
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "November" Then

	Session("Month3") = 11
	Session("Days3") = 30

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "December" Then

	Session("Month3") = 12
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportAM-Compass.asp"
	
	End If

	End If

	If Request.Form("Shift") = "PM" Then



	If Request.Form("Month") = "January" Then

	Session("Month3") = 1
	Session("Days3") = 31 

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "February" Then

	Session("Month3") = 2
	Session("Days3") = 28

	If Session("Year") = 2016 Or Session("Year") = 2020 Then
		Session("Days3") = 29
	End If

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "March" Then

	Session("Month3") = 3
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "April" Then

	Session("Month3") = 4
	Session("Days3") = 30

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "May" Then

	Session("Month3") = 5
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "June" Then

	Session("Month3") = 6
	Session("Days3") = 30

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "July" Then

	Session("Month3") = 7
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "August" Then

	Session("Month3") = 8
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If	


	
	If Request.Form("Month") = "September" Then

	Session("Month3") = 9
	Session("Days3") = 30

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If		


	
	If Request.Form("Month") = "October" Then

	Session("Month3") = 10
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "November" Then

	Session("Month3") = 11
	Session("Days3") = 30

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If


	
	If Request.Form("Month") = "December" Then

	Session("Month3") = 12
	Session("Days3") = 31

	Response.Redirect "Detailed-ReportPM-Compass.asp"
	
	End If

	End If


	
	End If
	


	If Session("Class") = "Bootcamp" Then



	Session("Dept") = "Bootcamp"
	Session("Number") = Request.Form("Class")

	If Request.Form("Month") = "January" Then

	Session("Month3") = 1
	Session("Days3") = 31 

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If


	
	If Request.Form("Month") = "February" Then

	Session("Month3") = 2
	Session("Days3") = 28

	If Session("Year") = 2016 Or Session("Year") = 2020 Then
		Session("Days3") = 29
	End If

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If


	
	If Request.Form("Month") = "March" Then

	Session("Month3") = 3
	Session("Days3") = 31

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If


	
	If Request.Form("Month") = "April" Then

	Session("Month3") = 4
	Session("Days3") = 30

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If


	
	If Request.Form("Month") = "May" Then

	Session("Month3") = 5
	Session("Days3") = 31

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If


	
	If Request.Form("Month") = "June" Then

	Session("Month3") = 6
	Session("Days3") = 30

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If


	
	If Request.Form("Month") = "July" Then

	Session("Month3") = 7
	Session("Days3") = 31

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If


	
	If Request.Form("Month") = "August" Then

	Session("Month3") = 8
	Session("Days3") = 31

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If	


	
	If Request.Form("Month") = "September" Then

	Session("Month3") = 9
	Session("Days3") = 30

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If		


	
	If Request.Form("Month") = "October" Then

	Session("Month3") = 10
	Session("Days3") = 31

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If


	
	If Request.Form("Month") = "November" Then

	Session("Month3") = 11
	Session("Days3") = 30

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If


	
	If Request.Form("Month") = "December" Then

	Session("Month3") = 12
	Session("Days3") = 31

	Response.Redirect "Bootcamp-Detailed.asp"
	
	End If

	End If

%>									

