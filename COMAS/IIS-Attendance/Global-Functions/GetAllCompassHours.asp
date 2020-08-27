<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
	Function getAllEduHours(strDc)    
     dim rsPullHours, strPullAmHours, strPullPmHours, hoursTotalbtu, hoursTotalEduam, hoursTotalEdupm, hoursTotalEdu
		
        hoursTotalbtu = 0
		hoursTotalEduam = 0
		hoursTotalEdupm = 0
		hoursTotalEdu = 0

            'BTU Compass Hours
			Set rsPullHours = Server.CreateObject("ADODB.Recordset")
            strPullHours = "select Sum(cast(hours as int)) as hours from attend_btu_compass where dc_number = '" & strDc & "'"

					Set rsPullHours = Server.CreateObject("ADODB.Recordset")
							rsPullHours.Open strPullHours, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
						
									If IsNull(rsPullHours("hours")) = True then
										hoursTotalbtu = 0
									else
										hoursTotalbtu = rsPullHours("hours")
									End if
								
							rsPullHours.close

			'Education Compass Hours				
			strPullEduAmHours = "select Sum(cast(hours_am as int)) as hours from attend_am_compass where Len(subject) = 2 and dc_number = '" & strDc & "'"
			strPullEduPmHours = "select Sum(cast(hours_Pm as int)) as hours from attend_pm_compass where Len(subject) = 2 and dc_number = '" & strDc & "'"
											
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

			set rsPullHours = nothing

			hoursTotalEdu = hoursTotalbtu + hoursTotalEduam + hoursTotalEdupm

		  If IsNull(hoursTotalEdu) = True or hoursTotalEdu = "" then
			getAllEduHours = 0
		  else
			getAllEduHours = hoursTotalEdu 
		End If
    End Function

    Function getAllVocHours(strDc)
     dim strPullHours, rsPullHours, strPullVocAmHours, strPullVocPmHours, hoursTotalVocam, hoursTotalVocpm, hoursTotalVoc

			hoursTotalVocam = 0
			hoursTotalVocpm = 0
	        hoursTotalVoc = 0 
	
            Set rsPullHours = Server.CreateObject("ADODB.Recordset")
            strPullVocAMHours = "select Sum(cast(hours_am as int)) as hours from attend_am_compass where Len(subject) > 2 and dc_number = '" & strDc & "'"
			strPullVocPmHours = "select Sum(cast(hours_pm as int)) as hours from attend_pm_compass where Len(subject) > 2 and dc_number = '" & strDc & "'"
											
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
          
            set rsPullHours = nothing

            hoursTotalVoc = hoursTotalVocam + hoursTotalVocpm

'            getAllVocHours = hoursTotalVocam + hoursTotalVocpm
                    If IsNull(hoursTotalVoc) = True or hoursTotalVoc = "" then
                        getAllVocHours = 0
                    else
                        getAllVocHours = hoursTotalVoc 
                    End If
    End Function

	Function getAllHybridHours(strDc)    
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
			getAllHybridHours = 0
		  else
			getAllHybridHours = hoursTotalHybrid 
		End If
  End Function

%>