<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
	Function getTotalHours(strDc, strSource)    
     dim strPullHours, rsPullHours, strPullEduAmHours, strPullEduPmHours, strPullVocAmHours, strPullVocPmHours, hoursTotalEduam, hoursTotalEdupm, hoursTotalVocam, hoursTotalVocpm, hoursTotalbtu, hoursTotalHybrid 

			hoursTotalbtu = 0
			hoursTotalEduam = 0
			hoursTotalEdupm = 0
			hoursTotalVocam = 0
			hoursTotalVocpm =0
			hoursTotalHybrid = 0
			hoursTotal = 0

			'BTU Compass Hours
			strPullHours = "select Sum(cast(hours as int)) as hours from attend_btu_compass where hours <> 'P' and dc_number = '" & strDc & "'"

					Set rsPullHours = Server.CreateObject("ADODB.Recordset")
							rsPullHours.Open strPullHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
						
									If IsNull(rsPullHours("hours")) = True then
										hoursTotalbtu = 0
									else
										hoursTotalbtu = rsPullHours("hours")
									End if
								
							rsPullHours.close

			'Education Compass Hours				
			strPullEduAmHours = "select Sum(cast(hours_am as int)) as hours from attend_am_compass where hours_am <> 'P' and Len(subject) = '2' and dc_number = '" & strDc & "'"
			strPullEduPmHours = "select Sum(cast(hours_Pm as int)) as hours from attend_pm_compass where hours_pm <> 'P' and Len(subject) = '2' and dc_number = '" & strDc & "'"
											
							rsPullHours.Open strPullEduAmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

							  	If IsNull(rsPullHours("hours")) = True then
										hoursTotalEduam = 0
									else
										hoursTotalEduam = rsPullHours("hours")
									End if
										
							rsPullHours.close
							
							rsPullHours.Open strPullEduPmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

									If IsNull(rsPullHours("hours")) = True then
										hoursTotalEdupm = 0
									else
										hoursTotalEdupm = rsPullHours("hours")
									End if
					
							rsPullHours.close

			'Vocation Compass Hours				
			strPullVocAMHours = "select Sum(cast(hours_am as int)) as hours from attend_am_compass where hours_am <> 'P' and Len(subject) > 2 and dc_number = '" & strDc & "'"
			strPullVocPmHours = "select Sum(cast(hours_Pm as int)) as hours from attend_pm_compass where hours_pm <> 'P' and Len(subject) > 2 and dc_number = '" & strDc & "'"
											
							rsPullHours.Open strPullVocAmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

							  	If IsNull(rsPullHours("hours")) = True then
										hoursTotalVocam = 0
									else
										hoursTotalVocam = rsPullHours("hours")
									End if
										
							rsPullHours.close
							
							rsPullHours.Open strPullVocPmHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

									If IsNull(rsPullHours("hours")) = True then
										hoursTotalVocpm = 0
									else
										hoursTotalVocpm = rsPullHours("hours")
									End if
					
							rsPullHours.close


			'Hybrid Hours
			strPullHours = "SELECT Sum(cast(hours as int)) as hours FROM attend_hybrid_compass WHERE hours <> 'P' and dc_number = '" & strDc & "'"

						rsPullHours.Open strPullHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

									if IsNull(rsPullHours("hours")) = True then
										hoursTotalHybrid = 0
									Else
								  	hoursTotalHybrid = rsPullHours("hours")
									End if
							  
       				rsPullHours.close
					   
				set rsPullHours = nothing

				'Determine Total to Return
				If Len(strSource) = 2 then 
					hoursTotal = hoursTotalbtu + hoursTotalEduam + hoursTotalEdupm
				
				Else 
					If strSource = "btu" then
						hoursTotal = hoursTotalbtu
					else

						If strSource = "Compass-Hybrid" then 
							hoursTotal = hoursTotalHybrid

						Else 
							hoursTotal = hoursTotalVocam + hoursTotalVocpm

						End if
					End if
				End if 

				If IsNull(hoursTotal) = True or hoursTotal = "" then
						getTotalHours = 0
						else
						getTotalHours = hoursTotal 
				End If		 
				
  End Function

	Function getBTUHours(strDc)    
     	dim strPullBTUHours, rsPullBTUHours, hoursTotalbtu
		
		hoursTotalbtu = 0
		
			strPullBTUHours = "select Sum(cast(hours as int)) as hours from attend_btu_compass where hours <> 'P' and dc_number = '" & strDc & "'"

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
						
			strPullAmHours = "select Sum(cast(hours_am as int)) as hours from attend_am_compass where hours_am <> 'P' and Len(subject) = '2' and dc_number = '" & strDc & "'"
			strPullPmHours = "select Sum(cast(hours_Pm as int)) as hours from attend_pm_compass where hours_pm <> 'P' and Len(subject) = '2' and dc_number = '" & strDc & "'"
			
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

Function getVocHours(strDc)    
     dim rsPullHours, strPullAmHours, strPullPmHours, hoursTotalam, hoursTotalpm
		
		hoursTotalam = 0
		hoursTotalpm = 0
		hoursTotalVoc = 0
						
			strPullAmHours = "select Sum(cast(hours_am as int)) as hours from attend_am_compass where hours_am <> 'P' and Len(subject) > '2' and dc_number = '" & strDc & "'"
			strPullPmHours = "select Sum(cast(hours_Pm as int)) as hours from attend_pm_compass where hours_pm <> 'P' and Len(subject) > '2' and dc_number = '" & strDc & "'"
			
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

			hoursTotalVoc = hoursTotalam + hoursTotalpm

		  If IsNull(hoursTotalVoc) = True or hoursTotalVoc = "" then
			getVocHours = 0
		  else
			getVocHours = hoursTotalVoc 
		End If
End Function

Function getHybridHours(strDc)    
     dim strPullHours, rsPullHours, hoursTotalHybrid  		
		
		hoursTotalHybrid = 0
						
			strPullHours = "SELECT Sum(cast(hours as int)) as hours FROM attend_hybrid_compass WHERE hours <> 'P' and dc_number = '" & strDc & "'"
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