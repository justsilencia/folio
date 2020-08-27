<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
Function EOSAlert(dateArg, groupArg)
    dim strEOS, rsSoonEOS, Alertdate, intCol, intRow, checkhours,checkEduHours, checkVocHours, checkHybHours
    dim alertEos()
'Defaults to a 60 day alert period if no date argument is sent.
    IF IsDate(dateArg) = false Then 
        Alertdate = DateAdd("m", 2, Date)
    Else
        Alertdate = dateArg
    End if

    If groupArg = "" Then
        AlertGroup = "All"
    Else
        AlertGroup = groupArg
    End if

'Creates and opens a EOS recordset object.
'Add strSource to these statements - used by getTotalHours 
    Select Case AlertGroup
        Case "All"
            strEOS = "SELECT dc_number, Last_Name, First_Name, Job_AM = Job_Code_AM, Job_PM = Job_Code_PM, Facility, Housing, EOS, Job_Code_AM, Job_Code_PM FROM Master_Roster " & _
                " Where Facility Is Not Null AND Housing <> '" & "" & "' AND CompassEduCompDate is Null AND CompassVocCompDate is Null AND CompassHybCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                "Order by Facility, Last_Name, First_Name"
 
        Case "All Academic Classes"
            strEOS = "SELECT m.dc_number, m.Last_Name, m.First_Name, Job_AM = m.Class_am, Job_PM = m.Class_pm, m.Facility, m.Housing, m.EOS, m.Job_Code_AM, m.Job_Code_PM " & _
                "FROM Master_Roster m Inner Join class_assignment a on m.dc_number = a.dc_number " & _
                "Where m.Job_Code_am = 'E15' and Housing <> '' AND CompassEduCompDate is Null AND EOS <= '" & Alertdate & "' " & _ 
                " or m.Job_Code_pm = 'E15' and Housing <> '' AND CompassEduCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                " Order by Job_Code_AM, Job_am, Job_Code_PM, Job_pm, Last_Name, First_Name"
            strSource = "Ed"

        Case "All Vocational Classes"
            strEOS = "SELECT m.dc_number, m.Last_Name, m.First_Name, Job_AM = m.Class_am, Job_PM = m.Class_pm, m.Facility, m.Housing, m.EOS, m.Job_Code_AM, m.Job_Code_PM " & _
                "FROM Master_Roster m Inner Join class_assignment a on m.dc_number = a.dc_number " & _
                "Where m.Job_Code_am = 'V90' and Housing <> '' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _ 
                " or m.Job_Code_pm = 'V90' and Housing <> '' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                " or m.Job_Code_am = 'V91' and Housing <> '' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _ 
                " or m.Job_Code_pm = 'V91' and Housing <> '' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                " or m.Job_Code_am = 'V92' and Housing <> '' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _ 
                " or m.Job_Code_pm = 'V92' and Housing <> '' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                " or m.Job_Code_am = 'V89' and Housing <> '' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _ 
                " or m.Job_Code_pm = 'V89' and Housing <> '' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                " Order by Job_Code_AM, Job_am, Job_Code_PM, Job_pm, Last_Name, First_Name"
            StrSource = "Voc"

        Case "308 Bootcamp"
            strEOS = "SELECT dc_number, Last_Name, First_Name, Job_AM = Job_Code_AM, Job_PM = Job_Code_PM, Facility, Housing, EOS, Job_Code_AM, Job_Code_PM FROM Master_Roster " & _
                " Where Facility = '308' AND Housing <> '" & "" & "' AND CompassEduCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                "Order by Last_Name, First_Name"
            strSource = "BootCamp"
 
        Case "365 Workcamp Hybrid"
            strEOS = "SELECT dc_number, Last_Name, First_Name, Job_AM = Job_Code_AM, Job_PM = Job_Code_PM, Facility, Housing, EOS, Job_Code_AM, Job_Code_PM FROM Master_Roster " & _
                " Where Facility = '365' AND Housing <> '" & "" & "' AND CompassHybCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                "Order by Last_Name, First_Name"
            strSource = "Compass-Hybrid"

        Case "305 Hybrid"
            strEOS = "SELECT dc_number, Last_Name, First_Name, Job_AM = Job_Code_AM, Job_PM = Job_Code_PM, Facility, Housing, EOS, Job_Code_AM, Job_Code_PM FROM Master_Roster " & _
                " Where Job_Code_AM <> 'E15' AND Job_Code_AM <> 'V28' AND Job_Code_AM <> 'V90' AND Job_Code_AM <> 'V92' " & _ 
                "AND Job_Code_PM <> 'E15' AND Job_Code_PM <> 'V28' AND Job_Code_PM <> 'V90' AND Job_Code_PM <> 'V92' " & _
                "AND Facility = '305' AND Housing <> '" & "" & "' AND CompassHybCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                "Order by Last_Name, First_Name"      
            strSource = "Compass-Hybrid"

        Case "307 Hybrid"
            strEOS = "SELECT dc_number, Last_Name, First_Name, Job_AM = Job_Code_AM, Job_PM = Job_Code_PM, Facility, Housing, EOS, Job_Code_AM, Job_Code_PM FROM Master_Roster " & _
                " Where Job_Code_AM <> 'E15' AND Job_Code_AM <> 'V28' AND Job_Code_AM <> 'V90' AND Job_Code_AM <> 'V92' " & _ 
                "AND Job_Code_PM <> 'E15' AND Job_Code_PM <> 'V28' AND Job_Code_PM <> 'V90' AND Job_Code_PM <> 'V92' " & _
                "AND Facility = '307' AND Housing <> '" & "" & "' AND CompassHybCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                "Order by Last_Name, First_Name"

        Case "Admin-Off-Spec"
            strEOS = "SELECT m.dc_number, m.Last_Name, m.First_Name, Job_AM = m.Job_Code_am, Job_PM = m.Job_Code_pm, m.Facility, m.Housing, m.EOS, a.subject_am, a.subject_pm, Job_Code_AM, Job_Code_PM " & _
                    "FROM Master_Roster m Inner Join class_assignment a on m.dc_number = a.dc_number " & _
                    "Where m.Job_Code_am = 'V89'" & _
                    " and Facility = '307' AND Housing <> '" & "" & "' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                    "OR m.Job_Code_pm = 'V89'" & _
                    " and Facility = '307' AND Housing <> '" & "" & "' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                    "Order by Last_Name, First_Name"
            strSource = "Admin-Off-Spec"        

        Case "Energy-Tech"
            strEOS = "SELECT m.dc_number, m.Last_Name, m.First_Name, Job_AM = m.Job_Code_am, Job_PM = m.Job_Code_pm, m.Facility, m.Housing, m.EOS, a.subject_am, a.subject_pm, Job_Code_AM, Job_Code_PM " & _
                    "FROM Master_Roster m Inner Join class_assignment a on m.dc_number = a.dc_number " & _
                    "Where m.Job_Code_am = 'V91'" & _
                    " and Facility = '307' AND Housing <> '" & "" & "' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                    "OR m.Job_Code_pm = 'V91'" & _  
                    " and Facility = '307' AND Housing <> '" & "" & "' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                    "Order by Last_Name, First_Name"
            strSource = "Energy"       

        Case "Horticulture"
            strEOS = "SELECT m.dc_number, m.Last_Name, m.First_Name, Job_AM = m.Job_Code_AM, Job_PM = m.Job_Code_pm, m.Facility, m.Housing, m.EOS, a.subject_am, a.subject_pm, Job_Code_AM, Job_Code_PM " & _
                    "FROM Master_Roster m Inner Join class_assignment a on m.dc_number = a.dc_number " & _
                    "Where m.Job_Code_am = 'V90'" & _
                    " and Facility = '307' AND Housing <> '" & "" & "' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                    "OR m.Job_Code_pm = 'V90'" & _
                    " and Facility = '307' AND Housing <> '" & "" & "' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                    "OR m.Job_Code_am = 'V90'" & _
                    " and Facility = '305' AND Housing <> '" & "" & "' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                    "OR m.Job_Code_pm = 'V90'" & _
                    " and Facility = '305' AND Housing <> '" & "" & "' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                    "Order by Last_Name, First_Name"
            strSource = "Horticulture"       

       Case "Marine-Tech"
            strEOS = "SELECT m.dc_number, m.Last_Name, m.First_Name, Job_AM = m.Job_Code_am, Job_PM = m.Job_Code_pm, m.Facility, m.Housing, m.EOS, a.subject_am, a.subject_pm, Job_Code_AM, Job_Code_PM " & _
                    "FROM Master_Roster m Inner Join class_assignment a on m.dc_number = a.dc_number " & _
                    "Where m.Job_Code_am = 'V92'" & _
                    " and Facility = '307' AND Housing <> '" & "" & "' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                    "OR m.Job_Code_pm = 'V92'" & _
                    " and Facility = '307' AND Housing <> '" & "" & "' AND CompassVocCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                    "Order by Last_Name, First_Name"
            strSource = "Marine"       

        Case Else
            strEOS = "SELECT m.dc_number, m.Last_Name, m.First_Name, Job_AM = m.Class_am, Job_PM = m.Class_pm, m.Facility, m.Housing, m.EOS, m.Job_Code_AM, m.Job_Code_PM " & _
                "FROM Master_Roster m Inner Join class_assignment a on m.dc_number = a.dc_number " & _
                "Where m.Class_am = '"&AlertGroup&"'" & _
                " and m.Job_Code_am = 'E15' and Facility = '307' AND Housing <> '" & "" & "' AND CompassEduCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                "OR m.Class_pm = '"&AlertGroup&"'" & _
                " and m.Job_Code_pm = 'E15' and Facility = '307' AND Housing <> '" & "" & "' AND CompassEduCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                "OR m.Class_am = '"&AlertGroup&"'" & _
                " and m.Job_Code_am = 'E15' and Facility = '305' AND Housing <> '" & "" & "' AND CompassEduCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                "OR m.Class_pm = '"&AlertGroup&"'" & _
                " and m.Job_Code_pm = 'E15' and Facility = '305' AND Housing <> '" & "" & "' AND CompassEduCompDate is Null AND EOS <= '" & Alertdate & "' " & _
                "Order by Last_Name, First_Name"
            strSource = "Ed"

    End Select
        
    Set rsSoonEOS = Server.CreateObject("ADODB.Recordset")
    rsSoonEOS.Open strEOS, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

'Creates a variable array for the EOS recordset.
    intRec = -1
    intRow = 0
    
    If rsSoonEOS.EOF = true Then
        redim alertEos(0,0)
        alertEOS(0,0) = "There are no inmates for this selection."
    Else
        Do While Not rsSoonEOS.EOF
            checkHours = 0
            checkEduHours = 0
            checkVocHours = 0
            checkHybHours = 0

            checkEduHours = getEduHours (rsSoonEOS("dc_number"))
            checkVocHours = getVocHours (rsSoonEOS("dc_number"))
            checkHybHours = getHybridHours (rsSoonEOS("dc_number"))
            
'Add something to diferentiate the requested groups.
        '    If AlertGroup = "All" then

        '    Else

        '        checkHours = getTotalHours (rsSoonEOS("dc_number"), strSource)
                If checkEduHours < 100 Then
                    If checkVocHours < 100 Then
                        If checkHybHours < 100 then
                            intRec = intRec + 1
                        End if
                    End if
                End If
        '    End if
                rsSoonEOS.MoveNext 
        Loop
        
        If intRec = -1 Then
            redim alertEos(0,0)
            alertEOS(0,0) = "There are no inmates for this selection."
        Else
            redim alertEos(10,intRec)
            rsSoonEOS.MoveFirst
            
            Do While Not rsSoonEOS.EOF
                If AlertGroup = "All" then
                    strAM = rsSoonEOS("Job_Code_AM")
                    strPM = rsSoonEOS("Job_Code_PM")
                Else
                    Select case rsSoonEOS("Job_Code_AM")
                        Case "E15"
                            strAM = rsSoonEOS("Job_AM")
                        Case "V90"
                            strAM = "Horticulture"
                        Case "V91"
                            strAM = "Energy-Tech"
                        Case "V92"
                            strAM = "Marine-Tech"
                        Case Else
                            strAM = rsSoonEOS("Job_Code_AM")
                    End Select
               
                    Select case rsSoonEOS("Job_Code_PM")
                        Case "E15"
                            strPM = rsSoonEOS("Job_PM")
                        Case "V90"
                            strPM = "Horticulture"
                        Case "V91"
                            strPM = "Energy-Tech"
                        Case "V92"
                            strPM = "Marine-Tech"
                        Case Else
                            strPM = rsSoonEOS("Job_Code_PM")
                    End Select
                End if

                checkEduHours = 0
                checkVocHours = 0
                checkHybHours = 0
                'checkhours = 0
                'checkHours = getTotalHours (rsSoonEOS("dc_number"), strSource)
                checkEduHours = getEduHours (rsSoonEOS("dc_number"))
                checkVocHours = getVocHours (rsSoonEOS("dc_number"))
                checkHybHours = getHybridHours (rsSoonEOS("dc_number"))
                If checkEduHours < 100 Then
                    If checkVocHours < 100 Then
                        If checkHybHours < 100 then
                            alertEos(0,intRow) = rsSoonEOS("dc_number")
                            alertEos(1,intRow) = rsSoonEOS("Last_Name")
                            alertEos(2,intRow) = rsSoonEOS("First_Name")
                            alertEos(3,intRow) = strAM
                            alertEos(4,intRow) = strPM
                            alertEos(5,intRow) = rsSoonEOS("Facility")
                            alertEOS(6,intRow) = rsSoonEOS("Housing")
                            alertEOS(7,intRow) = rsSoonEOS("EOS")
                            alertEOS(8,intRow) = checkEduHours
                            alertEOS(9,intRow) = checkVocHours
                            alertEOS(10,intRow) = checkHybHours
                            intRow = intRow + 1
                        End If
                    End If
                End If
                rsSoonEOS.MoveNext 
            Loop
        End if
    End if
    rsSoonEOS.Close
    EOSAlert = alertEos
End Function   
%>