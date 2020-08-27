<!--#Include File="Connection.asp" -->
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->

<%
    strMonth = Session("strMonth")
    intMonth = Session("intMonth")
    intYear = Session("Year")
    intDays = Session("Days")

    dim classes()
    Select case Session("Group")
        case "17ac"
            redim classes(1)
            classes(0) = "Y4"
            classes(1) = "Y5"
            counter = 1
            strTitle = "17- Academic Membership Report"
        case "17voc"
            redim classes(0)
            classes(0) = "AdminOffSpec"
            counter = 0
            strTitle = "17- Vocation Membership Report"
        case "18ac"
            redim classes(2)
            classes(0) = "Y1"
            classes(1) = "Y2"
            classes(2) = "Y3"
            counter = 2
            strTitle = "18+ Academic Membership Report"
        case "18voc"
            redim classes(1)
            classes(0) = "Horticulture"
            classes(1) = "AdminOffSpec"
            counter = 1
            strTitle = "18+ Vocation Membership Report"
        case "adultac"
            redim classes(2)
            classes(0) = "S1"
            classes(1) = "S2"
            classes(2) = "S3"
            counter = 2
            strTitle = "Adult Academic Membership Report"
        case "adultvoc"
            redim classes(2)
            classes(0) = "elec"
            classes(1) = "auto"
            classes(2) = "Masonry"
            counter = 2
            strTitle = "Adult Vocation Membership"
    end select 
%>
<html>
<head>
    <title>Membership Report</title>
</head>
<body>
<center>

 <%
    Response.Write "<table border=1 cellpadding=5 cellspacing=0><caption><h2>" & strTitle & "</h2></caption>" & _
                   "<tr><td colspan=2><td colspan=2 align=center>AM</td><td colspan=2 align=center>PM</td>" & _
                   "<tr><td colspan=2><td>Enrolled</td><td>Attended</td><td>Enrolled</td><td>Attended</td>"
    
    set rsAMenrolled = Server.CreateObject("ADODB.Recordset")
    set rsPMenrolled = Server.CreateObject("ADODB.Recordset")
    set rsAMattended = Server.CreateObject("ADODB.Recordset")
    set rsPMattended = Server.CreateObject("ADODB.Recordset")
    intTotalAMEnrolled = 0
    intTotalPMEnrolled = 0
    intTotalAMAttended = 0 
    intTotalPMAttended = 0

    for d = 1 to intDays
            
            Select Case Weekday(intMonth & "/" & d & "/" & intYear)
		        Case 1
			        myDay = "Sun"
		        Case 2
			        myDay = "Mon"
		        Case 3
			        myDay = "Tue"
		        Case 4
			        myDay = "Wed"
		        Case 5
			        myDay = "Thu"
		        Case 6
			        myDay = "Fri"
		        Case 7
			        myDay = "Sat"
	        End Select

            if myDay <> "Sun" and myDay <> "Sat" Then
                Response.Write "<tr><td>" & myDay & "<td>" & d 

                for i = 0 to counter

                    strAMenrolled = "select count(status_am) from attend_am_" & classes(i) & " where " & _
                                    "class_date_am = '" & intMonth & "/" & d & "/" & intYear & "' and status_am <> 'RSD' and status_am <> 'RMV' " & _
                                    "and status_am <> 'ENR' and status_am <> 'ADC' and status_am <> 'NLH' and status_am <> 'CMP' and status_am <> 'WTD'"
                    strPMenrolled = "select count(status_pm) from attend_pm_" & classes(i) & " where " & _
                                    "class_date_pm = '" & intMonth & "/" & d & "/" & intYear & "' and status_pm <> 'RSD' and status_pm <> 'RMV' " & _
                                    "and status_pm <> 'ENR' and status_pm <> 'ADC' and status_pm <> 'NLH' and status_pm <> 'CMP' and status_pm <> 'WTD'"
                    strAMattended = "select count(status_am) from attend_am_" & classes(i) & " where " & _
                                    "class_date_am = '" & intMonth & "/" & d & "/" & intYear & "' and status_am = 'P' " & _
                                    "or class_date_am = '" & intMonth & "/" & d & "/" & intYear & "' and status_am = 'LP' " & _
                                    "or class_date_am = '" & intMonth & "/" & d & "/" & intYear & "' and status_am = 'E' "
                    strPMattended = "select count(status_pm) from attend_pm_" & classes(i) & " where " & _
                                    "class_date_pm = '" & intMonth & "/" & d & "/" & intYear & "' and status_pm = 'P' " & _
                                    "or class_date_pm = '" & intMonth & "/" & d & "/" & intYear & "' and status_pm = 'LP' " & _
                                    "or class_date_pm = '" & intMonth & "/" & d & "/" & intYear & "' and status_pm = 'E' "

                    
                    rsAMenrolled.Open strAMenrolled, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
                    rsPMenrolled.Open strPMenrolled, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
                    rsAMattended.Open strAMattended, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
                    rsPMattended.Open strPMattended, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

                    intTotalAMEnrolled = intTotalAMEnrolled + rsAMenrolled("")
                    intTotalPMEnrolled = intTotalPMEnrolled + rsPMenrolled("")
                    intTotalAMAttended = intTotalAMAttended + rsAMattended("")
                    intTotalPMAttended = intTotalPMAttended + rsPMattended("")

                    rsAMenrolled.Close
                    rsPMenrolled.Close
                    rsAMattended.Close
                    rsPMattended.Close
                next

                Response.Write "<td align=center>" & intTotalAMEnrolled & "<td align=center>" & intTotalAMAttended & "<td align=center>" & intTotalPMEnrolled & "<td align=center>" & intTotalPMAttended

                intTotalAMEnrolled = 0
                intTotalPMEnrolled = 0
                intTotalAMAttended = 0
                intTotalPMAttended = 0
            end if

    next

    
 %>
    
</center>
</body>
</html>