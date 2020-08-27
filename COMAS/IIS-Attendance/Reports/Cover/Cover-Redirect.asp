<%
	Session("Year") = Request.Form("Year")
	Session("Class") = Request.Form("Class")
	Session("Month") = Request.Form("Month")


	Response.Redirect "CoverPage-2.asp"

%>