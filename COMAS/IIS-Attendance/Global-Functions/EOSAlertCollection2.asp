<!--#Include File="Connection.asp" -->
<!--#MetaData Type="TypeLib"
	      File="H:\Program files\Common Files\system\ado\msado15.dll"-->

<%
Function EOSAlert(dateArg)
    dim strEOS, rsSoonEOS, Alertdate
'Defaults to a 60 day alert period if no date argument is sent.
    IF IsDate(dateArg) = false Then 
        Alertdate = DateAdd("m", 2, Date)
    Else
        Alertdate = dateArg
    End if

'Creates and opens a EOS recordset object.
    strEOS = "SELECT dc_number, Last_Name, First_Name, Facility, EOS FROM Master_Roster where  EOS <= '" & Alertdate & "'"
    Set rsSoonEOS = Server.CreateObject("ADODB.Recordset")
    rsSoonEOS.Open strEOS, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

'Creates a variable array for the EOS data.
    EOSAlert = rsSoonEOS.GetRows
    rsSoonEOS.Close
End Function   
%>
