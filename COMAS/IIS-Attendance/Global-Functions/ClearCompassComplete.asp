
<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
	Function ClearCompassComplete(strDc, strSource)
    
        dim strCompass, rsCompassComplete
     
    If Len(strSource) = 2 then

		strCompass = "SELECT m.*, c.* FROM master_roster m INNER JOIN class_assignment c ON m.dc_number = c.dc_number WHERE m.dc_number = '" & strDc & "'"
	
        Set rsCompassComplete = Server.CreateObject("ADODB.Recordset")
        rsCompassComplete.Open strCompass, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText
		
        If rsCompassComplete("CompassEduCompFac") = "305" or rsCompassComplete("CompassEduCompFac") = "307" or rsCompassComplete("CompassEduCompFac") = "308" or rsCompassComplete("CompassEduCompFac") = "365" then 
			rsCompassComplete("compass") = "true"
			rsCompassComplete.Update
			rsCompassComplete("CompassEduCompDate") = Null
			rsCompassComplete("CompassEduCompFac") = Null
			rsCompassComplete.Update
		end if
		        
       rsCompassComplete.close
	Else

        If strSource = "Compass-Hybrid" then
            strCompass = "SELECT m.*, c.* FROM master_roster m INNER JOIN class_assignment c ON m.dc_number = c.dc_number WHERE m.dc_number = '" & strDc & "'"
        
            Set rsCompassComplete = Server.CreateObject("ADODB.Recordset")
            rsCompassComplete.Open strCompass, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText
            
            If rsCompassComplete("CompassHybCompFac") = "305" or rsCompassComplete("CompassHybCompFac") = "307" or rsCompassComplete("CompassHybCompFac") = "308" or rsCompassComplete("CompassHybCompFac") = "365" then 
                rsCompassComplete("compass") = "true"
                rsCompassComplete.Update
                rsCompassComplete("CompassHybCompDate") = Null
                rsCompassComplete("CompassHybCompFac") = Null
                rsCompassComplete.Update
            end if
                    
        rsCompassComplete.close

        Else
            strCompass = "SELECT m.*, c.* FROM master_roster m INNER JOIN class_assignment c ON m.dc_number = c.dc_number WHERE m.dc_number = '" & strDc & "'"
        
            Set rsCompassComplete = Server.CreateObject("ADODB.Recordset")
            rsCompassComplete.Open strCompass, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText
            
            If rsCompassComplete("CompassVocCompFac") = "305" or rsCompassComplete("CompassVocCompFac") = "307" or rsCompassComplete("CompassVocCompFac") = "308" or rsCompassComplete("CompassVocCompFac") = "365" then 
                rsCompassComplete("compass") = "true"
                rsCompassComplete.Update
                rsCompassComplete("CompassVocCompDate") = Null
                rsCompassComplete("CompassVocCompFac") = Null
                rsCompassComplete.Update
            end if
                    
        rsCompassComplete.close

        end if

    End if  
    End Function
%>