
<!--#MetaData Type="TypeLib"
	      File="H:\Program Files\Common Files\system\ado\msado15.dll"-->

<%
	
	Function getTotalHours(strDc)
    
        dim strPullAmHours, strPullPmHours, rsPullHours, hoursTotalam, hoursTotalpm, hoursTotal

        hoursTotalam = 0
        hoursTotalpm = 0
        hoursTotal = 0
        strPullAmHours = "select hours_am from attend_am_compass where dc_number = '" & strDc & "'"
        strPullPmHours = "select hours_Pm from attend_pm_compass where dc_number = '" & strDc & "'"
        Set rsPullHours = Server.CreateObject("ADODB.Recordset")
        rsPullHours.Open strPullAmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

        do while not rsPullHours.EOF

            hoursTotalam = hoursTotalam + rsPullHours("Hours_am")
            rsPullHours.MoveNext

        loop
        rsPullHours.close

        rsPullHours.Open strPullPmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

        do while not rsPullHours.EOF

            hoursTotalpm = hoursTotalpm + rsPullHours("Hours_pm")
            rsPullHours.MoveNext

        loop

        hoursTotal = hoursTotalam + hoursTotalpm

        set rsPullHours = nothing

    getTotalHours = hoursTotal

    End Function
%>