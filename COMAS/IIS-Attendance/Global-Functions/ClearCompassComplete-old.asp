
<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
	Function ClearCompassComplete(strDc)
    
        dim strCompass, rsCompassComplete
     
		strCompass = "SELECT m.*, c.* FROM master_roster m INNER JOIN class_assignment c ON m.dc_number = c.dc_number WHERE m.dc_number = '" & strDc & "'"
	
        Set rsCompassComplete = Server.CreateObject("ADODB.Recordset")
        rsCompassComplete.Open strCompass, eduConn, adOpenForwardOnly, adLockOptimistic, adCmdText
		
        If rsCompassComplete("CompassCompFac") = "305" or rsCompassComplete("CompassCompFac") = "307" or rsCompassComplete("CompassCompFac") = "308" or rsCompassComplete("CompassCompFac") = "365" then 
			rsCompassComplete("compass") = "true"
			rsCompassComplete.Update
			rsCompassComplete("CompassCompDate") = Null
			rsCompassComplete("CompassCompFac") = Null
			rsCompassComplete.Update
		end if
		        
       rsCompassComplete.close
	  
    End Function
%>