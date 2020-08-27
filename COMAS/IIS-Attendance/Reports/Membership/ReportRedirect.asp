
<%
	Session("Year") = Request.Form("Year") 	
	Session("strMonth") = Request.Form("Month") 		
	Session("Group") = Request.Form("Group")

	Select Case Request.Form("Month")
		Case "January"
			Session("intMonth") = 1
			Session("Days") = 31
		
		Case "February"
			Session("intMonth") = 2
			If Session("Year") MOD 4 = 0 Then
				Session("Days") = 29
			Else
				Session("Days") = 28
			End if
		
		Case "March"
			Session("intMonth") = 3
			Session("Days") = 31

		Case "April"
			Session("intMonth") = 4
			Session("Days") = 30

		Case "May"
			Session("intMonth") = 5
			Session("Days") = 31

		Case "June"
			Session("intMonth") = 6
			Session("Days") = 30
		
		Case "July"
			Session("intMonth") = 7
			Session("Days") = 31
		
		Case "August"
			Session("intMonth") = 8
			Session("Days") = 31
		
		Case "September"
			Session("intMonth") = 9
			Session("Days") = 30

		Case "October"
			Session("intMonth") = 10
			Session("Days") = 31
		
		Case "November"
			Session("intMonth") = 11
			Session("Days") = 30

		Case "December"
			Session("intMonth") = 12
			Session("Days") = 31
	
	End Select

	Response.Redirect "Membership-Report.asp"	

%>									

