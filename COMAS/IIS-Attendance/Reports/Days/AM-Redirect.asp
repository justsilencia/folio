
<%




       dim mDate, yDate, mName, yydate
	
       mDate = DatePart("m", now)
       mName = monthname(mdate)


      
  
       
      
 
       yydate = DatePart("yyyy", now)





	





	Session("Year") = yyDate
	Session("Month") = mName
	Session("Dept") = "Masonry"

	If mDate = "1" Then

	

	Session("Day") = "31"

	Session("Month2") = "1"
	Response.Redirect "Monthly-View.asp"
	End If


	
	If mDate = "2" Then

	
	Session("Day") = "28"

	Session("Month2") = "2"
	Response.Redirect "Monthly-View.asp"

	End If


	
	If mDate = "3" Then

	Response.Redirect "Monthly-View.asp"

	Session("Day") = "31"

	Session("Month2") = "3"
	
	End If


	
	If mDate = "4" Then

	

	Session("Day") = "30"

	Session("Month2") = "4"
	Response.Redirect "Monthly-View.asp"

	End If


	
	If mDate = "5" Then

	

	Session("Day") = "31"

	Session("Month2") = "5"
	Response.Redirect "Monthly-View.asp"

	End If


	
	If mDate = "6" Then

	

	Session("Day") = "30"

	Session("Month2") = "6"
	Response.Redirect "Monthly-View.asp"

	End If


	
	If mDate = "7" Then

	Session("Day") = "31"

	Session("Month2") = "7"

	Response.Redirect "Monthly-View.asp"
	
	End If


	
	If mDate = "8" Then

	Session("Day") = "31"

	Session("Month2") = "8"

	Response.Redirect "Monthly-View.asp"
	
	End If	


	
	If mDate = "9" Then

	Session("Day") = "30"

	Session("Month2") = "9"

	Response.Redirect "Monthly-View.asp"
	
	End If		


	
	If mDate = "10" Then

	Session("Day") = "31"

	Session("Month2") = "10"

	Response.Redirect "Monthly-View.asp"
	
	End If


	
	If mDate = "11" Then

	Session("Day") = "30"

	Session("Month2") = "11"

	Response.Redirect "Monthly-View.asp"
	
	End If


	
	If mDate = "12" Then

	Session("Day") = "31"

	Session("Month2") = "12"

	Response.Redirect "Monthly-View.asp"
	
	End If

%>									

