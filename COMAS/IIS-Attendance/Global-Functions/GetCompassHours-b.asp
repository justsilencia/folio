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

			strPullHours = "select Sum(cast(hours as int)) as hours from attend_btu_compass where dc_number = '" & strDc & "'"

					Set rsPullHours = Server.CreateObject("ADODB.Recordset")
			        rsPullHours.Open strPullHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		        
									If IsNull(rsPullHours("hours")) = True then
										hoursTotalbtu = 0
									else
							  		hoursTotalbtu = rsPullHours("hours")
									End if
							  
							rsPullHours.close
					
							strPullAmHours = "select Sum(cast(hours_am as int)) as hours from attend_am_compass where dc_number = '" & strDc & "'"
							strPullPmHours = "select Sum(cast(hours_Pm as int)) as hours from attend_pm_compass where dc_number = '" & strDc & "'"
									
							rsPullHours.Open strPullAmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

							  	If IsNull(rsPullHours("hours")) = True then
										hoursTotalam = 0
									else
										hoursTotalam = rsPullHours("hours")
									End if
										
							rsPullHours.close
							
							rsPullHours.Open strPullPmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

									If IsNull(rsPullHours("hours")) = True then
										hoursTotalpm = 0
									else
										hoursTotalpm = rsPullHours("hours")
									End if
					
							rsPullHours.close
					
							strPullHours = "SELECT Sum(cast(hours as int)) as hours FROM attend_hybrid_compass WHERE dc_number = '" & strDc & "'"

							rsPullHours.Open strPullHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

									if IsNull(rsPullHours("hours")) = True then
										hoursTotalHybrid = 0
									Else
								  	hoursTotalHybrid = rsPullHours("hours")
									End if
							  
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
		
			strPullBTUHours = "select Sum(cast(hours as int)) as hours from attend_btu_compass where dc_number = '" & strDc & "'"

					Set rsPullBTUHours = Server.CreateObject("ADODB.Recordset")
			        rsPullBTUHours.Open strPullBTUHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

									If IsNull(rsPullBTUHours("hours")) = True then
			      		  	hoursTotalbtu = 0
									Else
										hoursTotalbtu = rsPullBTUHours("hours")
									End if
						
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
						
			strPullAmHours = "select Sum(cast(hours_am as int)) as hours from attend_am_compass where dc_number = '" & strDc & "'"
			strPullPmHours = "select Sum(cast(hours_Pm as int)) as hours from attend_pm_compass where dc_number = '" & strDc & "'"
			
			Set rsPullHours = Server.CreateObject("ADODB.Recordset")		
					rsPullHours.Open strPullAmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		
							If IsNull(rsPullHours("hours")) = True	then
								hoursTotalam = 0
							Else
								hoursTotalam = hoursTotalam + rsPullHours("hours")
							End if	
								
				rsPullHours.close
				
				rsPullHours.Open strPullPmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

							If IsNull(rsPullHours("hours")) = True	then
								hoursTotalpm = 0
							Else
								hoursTotalpm = rsPullHours("hours")
							End if
							
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
						
			strPullHours = "SELECT Sum(cast(hours as int)) as hours FROM attend_hybrid_compass WHERE dc_number = '" & strDc & "'"
			Set rsPullHours = Server.CreateObject("ADODB.Recordset")
					rsPullHours.Open strPullHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

							If IsNull(rsPullHours("hours")) = True	then
								hoursTotalHybrid = 0
							Else
						  	hoursTotalHybrid = rsPullHours("hours")
							End if

   				rsPullHours.close
					   
			set rsPullHours = nothing

		  If IsNull(hoursTotalHybrid) = True or hoursTotalHybrid = "" then
			getHybridHours = 0
		  else
			getHybridHours = hoursTotalHybrid 
		End If
  End Function

%>