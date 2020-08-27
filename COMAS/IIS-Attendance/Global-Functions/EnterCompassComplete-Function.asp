
<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
	Function CompleteCompass(strDc, strDate, strCompType)
    
        dim strCompass, rsCompassComplete
        
		If Len(strCompType) = 2 then

			strCompass = "SELECT CompassEduCompDate, CompassEduCompFac FROM master_roster WHERE dc_number = '" & strDc & "'"

			Set rsCompassComplete = Server.CreateObject("ADODB.Recordset")
			rsCompassComplete.Open strCompass, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText

			if IsNull(rsCompassComplete("CompassEduCompDate")) = True then
					rsCompassComplete("CompassEduCompDate") = strDate
					rsCompassComplete("CompassEduCompFac") = Session("Hybrid")
					rsCompassComplete.Update
			end if
			rsCompassComplete.close

		Else

			If strCompType = "Compass-Hybrid" then
				strCompass = "SELECT CompassHybCompDate, CompassHybCompFac FROM master_roster WHERE dc_number = '" & strDc & "'"

			Set rsCompassComplete = Server.CreateObject("ADODB.Recordset")
			rsCompassComplete.Open strCompass, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText

			if IsNull(rsCompassComplete("CompassHybCompDate")) = True then
					rsCompassComplete("CompassHybCompDate") = strDate
					rsCompassComplete("CompassHybCompFac") = Session("Hybrid")
					rsCompassComplete.Update
			end if
			rsCompassComplete.close

			Else

				strCompass = "SELECT CompassVocCompDate, CompassVocCompFac FROM master_roster WHERE dc_number = '" & strDc & "'"

					Set rsCompassComplete = Server.CreateObject("ADODB.Recordset")
					rsCompassComplete.Open strCompass, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText

					if IsNull(rsCompassComplete("CompassVocCompDate")) = True then
							rsCompassComplete("CompassVocCompDate") = strDate
							rsCompassComplete("CompassVocCompFac") = Session("Hybrid")
							rsCompassComplete.Update
					end if
					rsCompassComplete.close
			End if
		End if			
	
    End Function
%>