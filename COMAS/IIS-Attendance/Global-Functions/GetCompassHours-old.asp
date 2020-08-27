<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
	Function getTotalHours(strDc)    
     dim strPullHours, rsPullHours, strPullAmHours, strPullPmHours, hoursTotalam, hoursTotalpm, hoursTotalbtu, hoursTotalHybrid  		
		
		hoursTotalbtu = 0
		hoursTotalam = 0
		hoursTotalpm = 0
		hoursTotalHybrid = 0
		hoursTotal = 0

			strPullHours = "select hours from attend_btu_compass where dc_number = '" & strDc & "'"

					Set rsPullHours = Server.CreateObject("ADODB.Recordset")
			        rsPullHours.Open strPullHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

			        do while not rsPullHours.EOF
							  hoursTotalbtu = hoursTotalbtu + rsPullHours("hours")
							  rsPullHours.MoveNext
					loop
		  
					rsPullHours.close
					
			strPullAmHours = "select hours_am from attend_am_compass where dc_number = '" & strDc & "'"
			strPullPmHours = "select hours_Pm from attend_pm_compass where dc_number = '" & strDc & "'"
					
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
					rsPullHours.close
					
			strPullHours = "SELECT hours FROM attend_hybrid_compass WHERE dc_number = '" & strDc & "'"

					rsPullHours.Open strPullHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

					do while not rsPullHours.EOF
							  hoursTotalHybrid = hoursTotalHybrid + rsPullHours("hours")
							  rsPullHours.MoveNext
					loop
       				rsPullHours.close
					   
		set rsPullHours = nothing

		hoursTotal = hoursTotalbtu + hoursTotalam + hoursTotalpm + hoursTotalHybrid

		  If IsNull(hoursTotal) = True or hoursTotal = "" then
			getTotalHours = 0
		  else
			getTotalHours = hoursTotal 
		End If
    End Function

	Function getBTUHours(strDc)    
     	dim strPullBTUHours, rsPullBTUHours, hoursTotalbtu
		
		hoursTotalbtu = 0
		
			strPullBTUHours = "select hours from attend_btu_compass where dc_number = '" & strDc & "'"

					Set rsPullBTUHours = Server.CreateObject("ADODB.Recordset")
			        rsPullBTUHours.Open strPullBTUHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

			        do while not rsPullBTUHours.EOF
							  hoursTotalbtu = hoursTotalbtu + rsPullBTUHours("hours")
							  rsPullBTUHours.MoveNext
					loop
		  
					rsPullBTUHours.close
			
		set rsPullBTUHours = nothing

		If IsNull(hoursTotalbtu) = True or hoursTotalbtu = "" then
			getBTUHours = 0
		  else
			getBTUHours = hoursTotalbtu 
		End If
    End Function

	Function getEduHours(strDc)    
     dim rsPullHours, strPullAmHours, strPullPmHours, hoursTotalam, hoursTotalpm
		
		hoursTotalam = 0
		hoursTotalpm = 0
		hoursTotalEdu = 0
						
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
			
				rsPullHours.close
		
			set rsPullHours = nothing

			hoursTotalEdu = hoursTotalam + hoursTotalpm

		  If IsNull(hoursTotalEdu) = True or hoursTotalEdu = "" then
			getEduHours = 0
		  else
			getEduHours = hoursTotalEdu 
		End If
    End Function

	Function getHybridHours(strDc)    
     dim strPullHours, rsPullHours, hoursTotalHybrid  		
		
		hoursTotalHybrid = 0
						
			strPullHours = "SELECT hours FROM attend_hybrid_compass WHERE dc_number = '" & strDc & "'"
			Set rsPullHours = Server.CreateObject("ADODB.Recordset")

					rsPullHours.Open strPullHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

					do while not rsPullHours.EOF
							  hoursTotalHybrid = hoursTotalHybrid + rsPullHours("hours")
							  rsPullHours.MoveNext
					loop
       				rsPullHours.close
					   
		set rsPullHours = nothing

		  If IsNull(hoursTotalHybrid) = True or hoursTotalHybrid = "" then
			getHybridHours = 0
		  else
			getHybridHours = hoursTotalHybrid 
		End If
    End Function

%>