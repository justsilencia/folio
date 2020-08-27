<!-- #Include File="Connection.asp" -->
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->

<html>
<body bgcolor="#FFFAF0" alink="Green" vlink="Green" Link="Green">




<Form Name="Master" Action="RosterView-Master.asp" Method="Post">

<Table Border="0">
  <TR>
    <TD><Font Size="+1">DC#:</Font></TD>
    <TD><Input Type="Text" Name="DC" Size="8" MaxLength="6"></TD>
    <TD><Input Type="Submit" Value="Search">

    <TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
    <TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>

    <TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
    <TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-<a href="Monthly-View.asp">Home</a>
    <TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-<a href="AddStudent.asp">Add Student</a>
      
    </TR>

 


	    
<Input Type="Hidden" Name="Class" Value="Masonry">

</Form>

</Table>
<BR>


<Table Border="0" alink="RED" Align = "CENTER">

    
    
    <TD><B><a href="RosterView-Alphabet.asp?alpha=A">A</a></TD>
    <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=B">B</a>
    <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=C">C</a>
    <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=D"><Font Color="Red">D</Font></a></B></TD>
    <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=E">E</a></TD>

     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=F">F</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=G">G</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=H">H</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=I"><Font Color="Red">I</Font></a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=J">J</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=K">K</a></TD>

     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=L">L</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=M">M</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=N"><Font Color="Red">N</Font></a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=O">O</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=P">P</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=Q">Q</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=R">R</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=S"><Font Color="Red">S</Font></a></TD>

     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=T">T</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=U">U</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=V">V</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=W">W</a></TD>

     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=X"><Font Color="Red">X</Font></a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=Y">Y</a></TD>
     <TD><B>&nbsp;&nbsp;&nbsp;&nbsp;-<a href="RosterView-Alphabet.asp?alpha=Z">Z</a></TD>
     	
     	
     	
</Table Border="0">
<hr width="80%">

<%

	Dim strSQL
	Dim elecRS

	strSQL = "Select Subject, m.*, shift, dept_job from master_roster_tbl m " & _
                 "INNER JOIN class_assignment_tbl c ON m.dc_number = c.dc_Number WHERE m.dc_number LIKE '%" & Request.Form("DC") & "%' Order By LastName " 

	          
	Set elecRS = Server.CreateObject("ADODB.RecordSet")
	elecRS.Open strSQL, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write _

	"<Table Border=""1"" CellSpacing=""3"" CellPadding=""6"" Align =""CENTER""><Caption><H2><U>Youth-Masonry - Master Roster</U></H2></Caption>" & _
        "<Thread>" &_
	"<TR>" & _
	  "<TH>DC#</TH>" & _
	  "<TH>Name</TH>" & _
	  
	  "<TH>Class</TH>" & _
	  "<TH>Shift</TH>" & _
	  "<TH>Modify</TH>" & _
          "&nbsp;&nbsp;&nbsp;&nbsp;" & _

          "<td  bordercolorlight=""#000000"" bgcolor=""#808000"" bordercolor=""#008000""  >&nbsp;&nbsp;&nbsp;&nbsp;</td>"  & _

          
         "<TH>DC#</TH>" & _
	  "<TH>Name</TH>" & _
	  
	  "<TH>Class</TH>" & _
	  "<TH>Shift</TH>" & _
	  "<TH>Modify</TH>" & _

         
	"</TR>" & _
        "<TBODY>" & _
        "</Thread>"

	Do While Not elecRS.EOF


	If Not elecRS.EOF Then

	Response.Write _



	  "<tr>" & _
	    "<td>" & elecRS("dc_number") & "</td>" & _
	    "<td>" & elecRS("LastName") & ",&nbsp;" & elecRS("first_name") & "</td>" & _
	    
	    "<td>" & elecRS("subject") & "</td>" & _
	    "<td>" & elecRS("Shift") & "</td>" & _
	    "<td><a href=""ModifyStudent-AM.asp?DC=" & elecRS("dc_Number") & " "">Modify/Delete</a></td>" 
            
	
		End If
		
		If Not elecRS.EOF Then  
	
	   elecRS.MoveNext
	
			If Not elecRS.EOF Then

          Response.Write _

            "<td  bordercolorlight=""#000000"" bgcolor=""#FFFFFF"" bordercolor=""#008000"" background=""../images/Greenstone.bmp"" >&nbsp;&nbsp;&nbsp;&nbsp;</td>"  & _
          

	  
	    "<td>" & elecRS("dc_number") & "</td>" & _
	    "<td>" & elecRS("LastName") & ",&nbsp;" & elecRS("first_name") & "</td>" & _
	    
	    "<td>" & elecRS("subject") & "</td>" & _
	    "<td>" & elecRS("Shift") & "</td>" & _
	    "<td><a href=""ModifyStudent-AM.asp?DC=" & elecRS("dc_Number") & " "">Modify/Delete</a></td>" 

       
	
        elecRS.MoveNext
    
    End If    
        
	End If
        

        Response.Write _

        "</tr>"
	Loop	

	Response.Write "</table>"
 

	elecRS.Close
	Set elecRS = Nothing
%>



</body>
</html>