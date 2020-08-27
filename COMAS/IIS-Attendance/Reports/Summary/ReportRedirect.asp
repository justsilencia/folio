
<%
	Session("Year") = Request.Form("Year") 	
	Session("Month") = Request.Form("Month") 		


	If Session("Class") <> "Bootcamp" Then

		If Session("Class") <> "All-Classes" Then

			If Request.Form("Month") = "January" Then
				Session("Month3") = 1
				Session("Days3") = 31 
				Response.Redirect "Summary-Report.asp"
		
			End If
	
			If Request.Form("Month") = "February" Then
				Session("Month3") = 2
				Session("Days3") = 28

				If Session("Year") MOD 4 = 0 Then		'Determines leap years.
					Session("Days3") = 29
				End If

				Response.Redirect "Summary-Report.asp"
			
			End If

			If Request.Form("Month") = "March" Then
				Session("Month3") = 3
				Session("Days3") = 31

				Response.Redirect "Summary-Report.asp"
			
			End If
		
			If Request.Form("Month") = "April" Then
				Session("Month3") = 4
				Session("Days3") = 30

				Response.Redirect "Summary-Report.asp"
			
			End If
		
			If Request.Form("Month") = "May" Then
				Session("Month3") = 5
				Session("Days3") = 31

				Response.Redirect "Summary-Report.asp"
			
			End If
		
			If Request.Form("Month") = "June" Then
				Session("Month3") = 6
				Session("Days3") = 30

				Response.Redirect "Summary-Report.asp"
			
			End If
		
			If Request.Form("Month") = "July" Then
				Session("Month3") = 7
				Session("Days3") = 31

				Response.Redirect "Summary-Report.asp"
			
			End If
		
			If Request.Form("Month") = "August" Then
				Session("Month3") = 8
				Session("Days3") = 31

				Response.Redirect "Summary-Report.asp"
			
			End If	
			
			If Request.Form("Month") = "September" Then
				Session("Month3") = 9
				Session("Days3") = 30

				Response.Redirect "Summary-Report.asp"
			
			End If		
			
			If Request.Form("Month") = "October" Then
				Session("Month3") = 10
				Session("Days3") = 31

				Response.Redirect "Summary-Report.asp"
			
			End If
			
			If Request.Form("Month") = "November" Then
				Session("Month3") = 11
				Session("Days3") = 30

				Response.Redirect "Summary-Report.asp"
			
			End If
			
			If Request.Form("Month") = "December" Then
				Session("Month3") = 12
				Session("Days3") = 31

				Response.Redirect "Summary-Report.asp"
			
			End If

		End If

	End If


	If Session("Class") = "Bootcamp" Then
	
		If Request.Form("Month") = "January" Then
			Session("Month3") = 1
			Session("Days3") = 31 

			Response.Redirect "Summary-Bootcamp.asp"
		
		End If
		
		If Request.Form("Month") = "February" Then
			Session("Month3") = 2
			Session("Days3") = 28

			If Session("Year") MOD 4 = 0 Then		'Determines leap years.
				Session("Days3") = 29
			End If

			Response.Redirect "Summary-Bootcamp.asp"
		
		End If
		
		If Request.Form("Month") = "March" Then
			Session("Month3") = 3
			Session("Days3") = 31

			Response.Redirect "Summary-Bootcamp.asp"
		
		End If
		
		If Request.Form("Month") = "April" Then
			Session("Month3") = 4
			Session("Days3") = 30

			Response.Redirect "Summary-Bootcamp.asp"
		
		End If
		
		If Request.Form("Month") = "May" Then
			Session("Month3") = 5
			Session("Days3") = 31

			Response.Redirect "Summary-Bootcamp.asp"
		
		End If
		
		If Request.Form("Month") = "June" Then
			Session("Month3") = 6
			Session("Days3") = 30

			Response.Redirect "Summary-Bootcamp.asp"
			
		End If
		
		If Request.Form("Month") = "July" Then
			Session("Month3") = 7
			Session("Days3") = 31

			Response.Redirect "Summary-Bootcamp.asp"
		
		End If
		
		If Request.Form("Month") = "August" Then
			Session("Month3") = 8
			Session("Days3") = 31

			Response.Redirect "Summary-Bootcamp.asp"
		
		End If	
		
		If Request.Form("Month") = "September" Then
			Session("Month3") = 9
			Session("Days3") = 30

			Response.Redirect "Summary-Bootcamp.asp"
			
		End If		
		
		If Request.Form("Month") = "October" Then
			Session("Month3") = 10
			Session("Days3") = 31

			Response.Redirect "Summary-Bootcamp.asp"
		
		End If
		
		If Request.Form("Month") = "November" Then
			Session("Month3") = 11
			Session("Days3") = 30

			Response.Redirect "Summary-Bootcamp.asp"
		
		End If
		
		If Request.Form("Month") = "December" Then
			Session("Month3") = 12
			Session("Days3") = 31

			Response.Redirect "Summary-Bootcamp.asp"
			
		End If

	End If


	If Session("Class") = "All-Classes" Then
		
		If Request.Form("Month") = "January" Then
			Session("Month3") = 1
			Session("Days3") = 31 

			Response.Redirect "AA-Report.asp"
		
		End If
		
		If Request.Form("Month") = "February" Then
			Session("Month3") = 2
			Session("Days3") = 28
			
			If Session("Year") MOD 4 = 0 Then		'Determines leap years.
				Session("Days3") = 29
			End If

			Response.Redirect "AA-Report.asp"
		
		End If
	
		If Request.Form("Month") = "March" Then
			Session("Month3") = 3
			Session("Days3") = 31

			Response.Redirect "AA-Report.asp"
		
		End If
		
		If Request.Form("Month") = "April" Then
			Session("Month3") = 4
			Session("Days3") = 30

			Response.Redirect "AA-Report.asp"
		
		End If
		
		If Request.Form("Month") = "May" Then
			Session("Month3") = 5
			Session("Days3") = 31

			Response.Redirect "AA-Report.asp"
		
		End If
	
		If Request.Form("Month") = "June" Then
			Session("Month3") = 6
			Session("Days3") = 30

			Response.Redirect "AA-Report.asp"
		
		End If
		
		If Request.Form("Month") = "July" Then
			Session("Month3") = 7
			Session("Days3") = 31

			Response.Redirect "AA-Report.asp"
			
		End If
		
		If Request.Form("Month") = "August" Then
			Session("Month3") = 8
			Session("Days3") = 31

			Response.Redirect "AA-Report.asp"
		
		End If	
		
		If Request.Form("Month") = "September" Then
			Session("Month3") = 9
			Session("Days3") = 30

			Response.Redirect "AA-Report.asp"
		
		End If		
		
		If Request.Form("Month") = "October" Then
			Session("Month3") = 10
			Session("Days3") = 31

			Response.Redirect "AA-Report.asp"
		
		End If
		
		If Request.Form("Month") = "November" Then
			Session("Month3") = 11
			Session("Days3") = 30

			Response.Redirect "AA-Report.asp"
		
		End If
	
		If Request.Form("Month") = "December" Then
			Session("Month3") = 12
			Session("Days3") = 31

			Response.Redirect "AA-Report.asp"
		
		End If

	End If

%>