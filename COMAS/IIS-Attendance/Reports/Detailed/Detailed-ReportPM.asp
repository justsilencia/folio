<!--#Include File="../../Global-Functions/Attend-Functions.asp"-->
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->

<%
	dim strClass
	dim strComp
    dim strClassName 

	If Session("Class") = "Y1" Then

        strClassName = "YO-GED"
		strClass = "Y1"
		strComp = "18+Ac"
        strCapacity = 18

	End If

	If Session("Class") = "Y2" Then

        strClassName = "YO-Intermediate"
		strClass = "Y2"
		strComp = "18+Ac"
        strCapacity = 18
        
	End If

	If Session("Class") = "Y3" Then

        strClassName = "YO-Basic"        
		strClass = "Y3"
		strComp = "18+Ac"
        strCapacity = 18

	End If

	If Session("Class") = "Y4" Then

        strClassName = "YO-GED"
		strClass = "Y4"
		strComp = "17-Ac"
        strCapacity = 18

	End If

	If Session("Class") = "Y5" Then

        strClassName = "YO-Basic"  
		strClass = "Y5"
		strComp = "17-Ac"
        strCapacity = 18

	End If
	
	If Session("Class") = "Admin-Off-Spec" Then

        strClassName = "Admin-Off-Spec"
		strClass = "AdminOffSpec"
		strComp = "17-Ac"
        strCapacity = 15

	End If

	If Session("Class") = "Horticulture" Then

        strClassName = "Landscaping"
		strClass = "Horticulture"
		strComp = "17-Ac"
        strCapacity = 15

	End If


	If Session("Class") = "S1" Then

        strClassName = "Adult-GED"
		strClass = "S1"
		strComp = "Adult"
        strCapacity = 18

	End If

	If Session("Class") = "S2" Then

        strClassName = "Adult-Basic"
		strClass = "S2"
		strComp = "Adult"
        strCapacity = 18

	End If

	If Session("Class") = "S3" Then

        strClassName = "Adult-Basic"
		strClass = "S3"
		strComp = "Adult"
        strCapacity = 18

	End If

	If Session("Class") = "S4" Then

        strClassName = "Adult-Basic"
		strClass = "S4"
		strComp = "Adult"
        strCapacity = 18

	End If

	If Session("Class") = "Youth-Masonry" Then
    
        strClassName = "Youth-Masonry"
		strClass = "yMasonry"
		strComp = "18+Ac"
        strCapacity = 15

	End If

	If Session("Class") = "Masonry" Then

        strClassName = "Masonry"
		strClass = "Masonry"
		strComp = "Adult"
        strCapacity = 15

	End If

	If Session("Class") = "Electronics" Then

        strClassName = "Electronics"
		strClass = "Elec"
		strComp = "Adult"
        strCapacity = 15

	End If

    If Session("Class") = "Energy-Tech" Then

        strClassName = "Energy-Tech"
		strClass = "Elec"
		strComp = "Adult"
        strCapacity = 15

	End If
	
	If Session("Class") = "Automotive" Then

        strClassName = "Automotive"
		strClass = "auto"
		strComp = "Adult"
        strCapacity = 15

	End If

    If Session("Class") = "Marine-Tech" Then

        strClassName = "Marine-Tech"
		strClass = "auto"
		strComp = "Adult"
        strCapacity = 15

	End If
%>


<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 12">
<link rel=File-List href="January%20-%20am_files/filelist.xml">
<style id="January - am_26149_Styles">
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.font526149
	{color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;}
.font626149
	{color:windowtext;
	font-size:4.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;}
.font726149
	{color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;}
.font826149
	{color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;}
.xl6326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6626149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:top;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6726149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6826149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6926149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7026149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7126149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:600;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7626149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7726149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7926149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8026149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8126149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:none;
	border-right:1.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8626149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8726149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8826149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8926149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl91
	{mso-style-parent:style0;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;}
.xl9026149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9126149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:1.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9626149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:none;
	border-right:1.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9726149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:1.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9826149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9926149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10026149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10126149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:5.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.Bottom
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:5.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.Middle
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:5.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10626149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10726149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10826149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10926149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.End
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11026149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11126149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl11226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:none;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:none;
	border-right:1.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:1.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11626149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11726149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11826149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11926149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12026149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12126149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl12326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl12426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:1.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12626149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:1.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12726149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12826149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12926149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13026149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13126149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:1.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:1.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13626149
	{color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border-top:1.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;
	padding-right:12px;
	mso-char-indent-count:1;}
.xl13726149
	{color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border-top:1.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;
	padding-right:12px;
	mso-char-indent-count:1;}
.xl13826149
	{color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border-top:1.5pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;
	padding-right:12px;
	mso-char-indent-count:1;}
.xl13926149
	{color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;
	padding-right:12px;
	mso-char-indent-count:1;}
.xl14026149
	{color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;
	padding-right:12px;
	mso-char-indent-count:1;}
.xl14126149
	{color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;
	padding-right:12px;
	mso-char-indent-count:1;}
.xl14226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14626149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14726149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14826149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:none;
	border-right:none;
	border-bottom:1.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14926149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:none;
	border-right:none;
	border-bottom:1.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl15026149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:top;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl15126149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:5.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl15226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl15326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:none;
	border-right:none;
	border-bottom:1.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl15426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl15526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:5.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl15626149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:top;
	border-top:none;
	border-right:none;
	border-bottom:1.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl15726149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl15826149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl15926149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl16026149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl16126149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl16226149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl16326149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:normal;}
.xl16426149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:normal;}
.xl16526149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:7.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:middle;
	vertical-align:middle;
	border-top:1.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl16626149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border-top:1.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl16726149
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:4.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border-top:1.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
-->
</style>
</head>

<body>
<!--[if !excel]>&nbsp;&nbsp;<![endif]-->
<!--The following information was generated by Microsoft Office Excel's Publish
as Web Page wizard.-->
<!--If the same item is republished from Excel, all information between the DIV
tags will be replaced.-->
<!----------------------------->
<!--START OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD -->
<!----------------------------->

<div id="January - AM_26149" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=940 class=xl6326149
 style='border-collapse:collapse;table-layout:auto;width:940pt'>

 <col class=xl6326149 width=15 style='mso-width-source:userset;mso-width-alt:
 841;width:12pt'>

 <col class=xl6326149 width=15 span=10 style='mso-width-source:userset;
 mso-width-alt:950;width:15pt'>

 <col class=xl6326149 width=18 style='mso-width-source:userset;mso-width-alt:
 1133;width:15pt'>

 <col class=xl6326149 width=15 span=35 style='mso-width-source:userset;
 mso-width-alt:950;width:15pt'>

 <tr height=17 style='height:12.75pt'>
  <td height=17 class=xl6626149 colspan=10 width=200 style='height:12.75pt;
  width:240pt'>CORRECTIONAL DAILY ATTENDANCE ROSTER</td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
<%
	dim rsPage
	dim strPage
	dim pageVar

	strPage = "SELECT COUNT(DISTINCT m.dc_number) FROM Master_Roster m INNER JOIN attend_pm_"&strClass&" a ON m.dc_number = a.dc_number WHERE a.subject LIKE '%" & Session("Class") & "%'" & _
		  "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'"

	Set rsPage = Server.CreateObject("ADODB.Recordset")
	rsPage.Open strPage, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	pageVar = rsPage("")
%>

  <td class=xl6826149 colspan=4 width=104 style='width:80pt'>ROSTER PAGE</td>
  <td colspan=2 class=xl14426149 width=52 style='width:40pt'><Center>1</Center></td>
  <td class=xl7326149 width=26 style='width:20pt'>OF</td>
  <td colspan=2 class=xl14426149 width=52 style='width:40pt'><Center>

<%
	If pageVar <= 25 Then

		Response.Write "1"

	Else 

		Response.Write "2"

	End If

	rsPage.Close
	Set rsPage = Nothing
%>

</Center></td>
 </tr>
 <tr height=17 style='mso-height-source:userset;height:12.75pt'>
  <td height=17 class=xl6326149 style='height:12.75pt'></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:15.95pt'>
  <td height=21 class=xl7226149 colspan=5 style='height:15.95pt'>YEAR AND MONTH</td>
  <td class=xl7426149 colspan=3><%=Session("Month")%>, <%=Session("Year")%></td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  
  <td class=xl7226149 colspan=9><span style='mso-spacerun:yes'>
  </span>INSTITUTION &amp; UNIT / FAC CODE #</td>
  <td class=xl11926149 colspan=5>Sumter C.I.<span style='mso-spacerun:yes'>
  </span>
      <%
            if strClass = "Y4" or strClass = "Y5" then
                response.write "#305"
            else
                if strClass = "Horticulture" then
            		If Session("Shift") = "AM" then
						response.write "#305"
            		End if
				End if
           		response.write "#307"
            end if

			
      %>
  </td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>

<%
	dim rsTeacher
	dim strTeacher

	strTeacher = "SELECT teacher, class FROM teachers_tbl WHERE class LIKE '%" & Session("Class") & "%'"

	Set rsTeacher = Server.CreateObject("ADODB.Recordset")	
	rsTeacher.Open strTeacher, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
%>
  
  <td class=xl7226149 colspan=3><span style='mso-spacerun:yes'></span>TEACHER</td>
  <td class=xl7426149 colspan=5><%=rsTeacher("Teacher")%></td>
  
 </tr>
 <tr class=xl6326149 height=5 style='mso-height-source:userset;height:3.95pt'>
  <td height=5 class=xl6326149 style='height:3.95pt'></td>
  <td class=xl6726149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:15.95pt'>
  <td height=21 class=xl7226149 colspan=4 style='height:15.95pt'>COURSE NAME</td>
  <td class=xl9026149></td>
  <td class=xl7426149 colspan=6><%=strClassName%>&nbsp;</td>
  <td>&nbsp;&nbsp;&nbsp;</td>
  <td class=xl7226149 style='height:15.95pt' colspan=3>&nbsp;&nbsp;CAPACITY</td>
  <td class=xl7426149 colspan=3>
    <%
        Response.Write strCapacity
    %>
  </td>
  <td>&nbsp;&nbsp;&nbsp;</td>


  <td class=xl7226149 colspan=4>COURSE CODE</td>
  <td class=xl7426149 colspan=11>
  <%
	If Session("Class") = "S1" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "Y1" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "S2" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "S3" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "S4" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "Y2" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "Y3" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "Y4" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "Youth-Masonry" Then
		
		Response.Write "I463112"

	End If

	If Session("Class") = "Masonry" Then
		
		Response.Write "I463112"

	End If

	If Session("Class") = "Electronics" Then
		
		Response.Write "I463112"

	End If

    If Session("Class") = "Energy-Tech" Then
		
		Response.Write "X600600-3"

	End If

    If Session("Class") = "Marine-Tech" Then
		
		Response.Write "T400210-3"

	End If

	If Session("Class") = "Admin-Off-Spec" Then
		
		Response.Write "B070330"

	End If
  %>

</td>
  <td class=xl7426149>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  
  <td class=xl7226149 colspan=3>SECTION</td>
  <td class=xl7426149 colspan=4> 
<%
	If Session("Class") = "S1" Then
		
		Response.Write "S"

	End If

	If Session("Class") = "Y1" Then
		
		Response.Write "8"

	End If

	If Session("Class") = "S2" Then
		
		Response.Write "U"

	End If

	If Session("Class") = "S3" Then
		
		Response.Write "K"

	End If

	If Session("Class") = "S4" Then
		
		Response.Write "I"

	End If

	If Session("Class") = "Y2" Then
		
		Response.Write "6"

	End If

	If Session("Class") = "Y3" Then
		
		Response.Write "2"

	End If

	If Session("Class") = "Y4" Then
		
		Response.Write "1"

	End If

    If Session("Class") = "Y5" Then
		
		Response.Write "X"

	End If

	If Session("Class") = "Youth-Masonry" Then
		
		Response.Write "A"

	End If

	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Energy-Tech" _
	OR Session("Class") = "Marine-Tech" Then 
		
		Response.Write "&nbsp;1(All-Day), 3(PM-Only)"

	End If
%>

</td>
  
 </tr>
<TR>
	<TD>&nbsp;
</TR>
 <tr height=5 style='mso-height-source:userset;height:3.95pt'>
  <td height=5 class=xl6326149 style='height:3.95pt'></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6426149 style='border-top:none'>&nbsp;</td>
  <td class=xl6426149 style='border-top:none'>&nbsp;</td>
  <td class=xl6426149 style='border-top:none'>&nbsp;</td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:10.95pt'>
  <td height=10 class=xl7226149 style='height:8.95pt' colspan=5>DAYS SCHEDULED</td>
  <td class=xl9926149 style='border-left:none'>Mon</td>
  <td class=xl8926149>X</td>
  <td class=xl9926149>Tue</td>
  <td class=xl8926149>X</td>
  <td class=xl9926149>Wed</td>
  <td class=xl8926149>X</td>
  <td class=xl9926149>Thu</td>
  <td class=xl8926149>X</td>
  <td class=xl9926149>Fri</td>
  <td class=xl8926149>X</td>
  <td class=xl9926149>Sat</td>
  <td class=xl8926149>&nbsp;</td>
  <td class=xl9926149>Sun</td>
  <td class=xl8926149>&nbsp;</td>
  <td class=xl6326149></td>
  
  <td class=xl12026149 colspan=3>CLASS SESSION<span style='mso-spacerun:yes'></span></td>

  <td class=xl15726149 style='border-right:.5pt solid black'>Hrs<span
  style='mso-spacerun:yes'>  </span></td>
  <td class=xl12126149 style='border-left:none'><Center>3</Center></td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>AM<span
  style='mso-spacerun:yes'></span></td>
  <td class=xl12126149 style='border-left:none'><Center></Center></td>
  <td colspan=2 class=xl16226149 style='border-right:.5pt solid black;
  border-left:none'>PM<span style='mso-spacerun:yes'></span></td>
  <td class=xl12126149 style='border-left:none'><Center>X</Center></td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>All
  Day<span style='mso-spacerun:yes'></span></td>
  <td class=xl12126149 style='border-left:none'>&nbsp;</td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>Night<span
  style='mso-spacerun:yes'></span></td>
  <td class=xl12126149 style='border-left:none'>&nbsp;</td>
  <td class=xl6326149></td>
  
  
  <td class=xl12026149 colspan=3>CLASS PERIOD<span style='mso-spacerun:yes'></span></td>
  <td class=xl6326149></td>
  <td class=xl7426149>&nbsp;</td>
  <td class=xl7426149>&nbsp;</td>
  
  <td class=xl7326149>TO</td>
  <td class=xl7426149>&nbsp;</td>
  <td class=xl7426149>&nbsp;</td>
  
 </tr>
  <TR>
    <TD>&nbsp;
  </TR>
 <tr height=5 style='mso-height-source:userset;height:3.95pt'>
  <td height=5 class=xl6326149 style='height:3.95pt'></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
 </tr>
 <tr class=xl6526149 height=17 style='mso-height-source:userset;height:12.75pt'>
  <td height=17 class=xl6526149 style='height:12.75pt'></td>
  <td colspan=7 rowspan=2 class=xl14526149 style='border-right:.5pt solid black;
  border-bottom:1.5pt solid black'>NAME (LAST, FIRST)</td>
  <td colspan=3 rowspan=2 class=xl14526149 style='border-bottom:1.5pt solid black'>DC#</td>
  <td class=xl11226149>MLP</td>
  <%
        for calDayCount = 1 to 31
                css = "xl7026149"
            if calDayCount = 1 then
                css = "xl6926149"
            elseif calDayCount = 31 then
                css = "xl7126149"
            end if

            Response.Write "<td class="&css&" style='border-left:none'>" & calDayCount & "</td>"
         
        next
  %>
  <td colspan=2 rowspan=2 class=xl15126149 width=52 style='border-right:.5pt solid black;
  border-bottom:1.5pt solid black;width:40pt'>Ttl Days Attended</td>
  <td colspan=2 rowspan=2 class=xl15526149 width=52 style='border-right:.5pt solid black;
  border-bottom:1.5pt solid black;width:40pt'>Ttl Hrs Attended</td>
 </tr>
 <tr class=xl6526149 height=18 style='height:13.5pt'>
  <td height=18 class=xl6526149 style='height:13.5pt'></td>
  <td class=xl11326149>Y/N</td>
  <%
        for calCount = 1 to 31
                css = "xl9526149"
            if calCount = 1 then
                css = "xl9426149"
            elseif calCount = 31 then
                css = "xl9626149"
            end if

            if calCount <= Session("Days3") then
                Select Case Weekday(Session("Month3") & "/"&calCount&"/" & Session("Year"))
		            Case 1
			            myDay = "Su"
		            Case 2
			            myDay = "M"
		            Case 3
			            myDay = "T"
		            Case 4
			            myDay = "W"
		            Case 5
			            myDay = "Th"
		            Case 6
			            myDay = "F"
		            Case 7
			            myDay = "Sa"
	            End Select
                Response.Write "<td class="&css&" align=center style='border-left:none'>"&myDay&"</td>"
            else
                Response.Write "<td class="&css&" style='border-left:none'>&nbsp;</td>"
            end if
        next
  %>
 </tr>

<%
	dim strDetail
	dim strStatus
	dim strCheckam 
	dim rsDetail
	dim rsStatus	
	dim rsCheckam
	

	strDetail = "SELECT DISTINCT m.dc_number, Last_Name, first_name, subject  FROM Master_Roster m INNER JOIN attend_pm_"&strClass&" a ON a.dc_number = m.dc_number WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    "AND Subject LIKE '%" & Session("Class") & "%' ORDER BY Last_Name"

	
	Set rsDetail = Server.CreateObject("ADODB.Recordset")
	

	rsDetail.Open strDetail, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
%>

 <tr height=21 style='mso-height-source:userset;height:10.95pt'>
  <td height=21 class=xl9726149 style='height:10.95pt'>1</td>
  <td colspan=7 class=xl15926149 style='border-right:.5pt solid black;border-left:none'>

<% 	
    Set rsHourpull = Server.CreateObject("ADODB.Recordset")

	If Not rsDetail.EOF Then

	  Response.Write "" & rsDetail("Last_Name") & ", " & rsDetail("First_Name") & ""

	Else

	  Response.Write "&nbsp;"

	End If

	Response.Write 	"</td>" & _
  			"<td colspan=3 class=xl14226149 style='border-left:none'>"

	If Not rsDetail.EOF Then	

	strCheckam = "SELECT COUNT(status_am) FROM attend_am_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'LP'"

		Set rsCheckam = Server.CreateObject("ADODB.Recordset")

		rsCheckam.Open strCheckam, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText		
	
	Response.Write "" & rsDetail("dc_number") & ""

	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Energy-Tech" _
	OR Session("Class") = "Marine-Tech" Then  

		If rsCheckam("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(3)</B>"

		End If

	End If

	

		

	strStatus = "SELECT status_pm, class_date_pm FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		    "AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
		    "ORDER BY class_date_pm"

	Set rsStatus = Server.CreateObject("ADODB.Recordset")	
	rsStatus.Open strStatus, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Else

	Response.Write "&nbsp;"

	End If

Response.Write _
		"</td>" & _
  		"<td class=xl11426149>"

	If Not rsDetail.EOF Then

	strLevel = "SELECT Level FROM Class_Assignment WHERE dc_number = '" & rsDetail("dc_number") & "'"

	Set rsLevel = Server.CreateObject("ADODB.Recordset")	
	rsLevel.Open strLevel, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	If Not rsLevel.EOF Then

		If Session("Class") <> "Masonry" Then

			If Session("Class") <> "Youth-Masonry" Then

				Response.Write rsLevel("Level")

			End If

		End If

	Else

		Response.Write "&nbsp;"

	End If

	rsLevel.Close
	Set rsLevel = Nothing

	End If

	Response.Write "</td>"

For cellCounter = 1 to 30

  Response.Write "<td class=xl9226149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = cellCounter Then
              
		Response.Write rsStatus("Status_pm")

		strHourpull = "SELECT Hours From ClassAM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + 3

		      Else

			intAddHours = intAddHours + 3

		      End If

		   Else

		     intAddHours = intAddHours + 3

		   End If

		Else

		  intAddHours = intAddHours + 0

		End If

	    rsHourpull.Close
	    rsStatus.MoveNext

       	    Else

	    Response.Write "&nbsp;"

	    End If

    	Else

    	Response.Write "&nbsp;"

	End If

    End If

  Response.Write "</td>"

Next

Response.Write "<td class=xl9326149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = 31 Then
              
		Response.Write rsStatus("Status_pm")

		strHourpull = "SELECT Hours From ClassAM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + 3

		      Else

			intAddHours = intAddHours + 3

		      End If

		   Else

		     intAddHours = intAddHours + 3

		   End If

		Else

		  intAddHours = intAddHours + 0

		End If

	    rsHourpull.Close
	    rsStatus.MoveNext

       	    Else

	    Response.Write "&nbsp;"

	    End If

    	Else

    	Response.Write "&nbsp;"

	End If

    End If

%>
</td>

    <td colspan=2 class=xl12726149 style='border-right:.5pt solid black;
  border-left:none'>

<%
	If Not rsDetail.EOF Then

	strDays = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		  " AND status_pm = 'P'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _

                  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  " AND status_pm = 'E'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _

                  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  " AND status_pm = 'LP'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'"
                  


	Set rsDays = Server.CreateObject("ADODB.Recordset")
	rsDays.Open strDays, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	  If rsCheckam("") >= 1 Then

		dayTotal = rsDays("")	
	
		Response.Write dayTotal 

	  Else 

		Response.Write "" & rsDays("") & ""

	  End If

	End If
%>
</td>
  <td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>
<%
	If Not rsDetail.EOF Then

		Response.Write intAddHours

		rsCheckam.Close

	End If
%>

</td>
 </tr>

<%
For bigCounter = 2 to 24
 	
	Response.Write  "<tr height=21 style='mso-height-source:userset;height:10.95pt'>" & _
  			"<td height=21 class=xl7526149 style='height:10.95pt;border-top:none'>"&bigCounter&"</td>" & _
  			"<td colspan=7 class=xl14226149 style='border-right:.5pt solid black;border-left:none'>" 
		

	If Not rsDetail.EOF Then

	   rsDetail.MoveNext

	   If Not rsDetail.EOF Then

	  Response.Write "" & rsDetail("Last_Name") & ", " & rsDetail("First_Name") & ""

	Else

	  Response.Write "&nbsp;"

	End If

	End If


	Response.Write  "</td>" & _
  			"<td colspan=3 class=xl14226149 style='border-left:none'>"

	If Not rsDetail.EOF Then

		strCheckam = "SELECT COUNT(status_am) FROM attend_am_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'LP'"

		Set rsCheckam = Server.CreateObject("ADODB.Recordset")

		rsCheckam.Open strCheckam, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write "" & rsDetail("dc_number") & ""


	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Energy-Tech" _
	OR Session("Class") = "Marine-Tech" Then 

		If rsCheckam("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(3)</B>"

		End If

	End If

	strStatus = "SELECT status_pm, class_date_pm FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		    "AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
		    " ORDER BY class_date_pm"

	Set rsStatus = Server.CreateObject("ADODB.Recordset")	
	rsStatus.Open strStatus, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Else

	Response.Write "&nbsp;"

	End If

Response.Write _
		"</td>" & _
  		"<td class=xl11526149 style='border-top:none'>"

	If Not rsDetail.EOF Then

	strLevel = "SELECT Level FROM Class_Assignment WHERE dc_number = '" & rsDetail("dc_number") & "'"

	Set rsLevel = Server.CreateObject("ADODB.Recordset")	
	rsLevel.Open strLevel, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	If Not rsLevel.EOF Then

		If Session("Class") <> "Masonry" Then

			If Session("Class") <> "Youth-Masonry" Then

				Response.Write rsLevel("Level")

			End If

		End If

	Else

		Response.Write "&nbsp;"

	End If

	rsLevel.Close
	Set rsLevel = Nothing

	End If

Response.Write "</td>"
  
intAddHours = 0
For cellCounter = 1 to 30

  Response.Write "<td class=xl9226149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = cellCounter Then
              
		Response.Write rsStatus("Status_pm")

		strHourpull = "SELECT Hours From ClassAM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + 3

		      Else

			intAddHours = intAddHours + 3

		      End If

		   Else

		     intAddHours = intAddHours + 3

		   End If

		Else

		  intAddHours = intAddHours + 0

		End If

	    rsHourpull.Close
	    rsStatus.MoveNext

       	    Else

	    Response.Write "&nbsp;"

	    End If

    	Else

    	Response.Write "&nbsp;"

	End If

    End If

  Response.Write "</td>"

Next

Response.Write "<td class=xl9326149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = 31 Then
              
		Response.Write rsStatus("Status_pm")

		strHourpull = "SELECT Hours From ClassAM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			  intAddHours = intAddHours + 3

		      Else

			  intAddHours = intAddHours + 3

		      End If

		   Else

		     intAddHours = intAddHours + 3

		   End If

		Else

		  intAddHours = intAddHours + 0

		End If

	    rsHourpull.Close
	    rsStatus.MoveNext

	    End If

	End if	

    End If    


'BELOW IS CODE FOR LAST TWO COLUMNS. TTL DAYS ATTENDED AND TTL HOURS ATTENDED.

    Response.Write "&nbsp;" & _
			"</td>" & _
    			"<td colspan=2 class=xl12726149 style='border-right:.5pt solid black;border-left:none'>" 

			If Not rsDetail.EOF Then

			strDays = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  		"AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		  		" AND status_pm = 'P'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
	
                  		"OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  		" AND status_pm = 'E'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _

                  		"OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  		" AND status_pm = 'LP'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'"
                  


			Set rsDays = Server.CreateObject("ADODB.Recordset")
			rsDays.Open strDays, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	  		If rsCheckam("") >= 1 Then

				dayTotal = rsDays("")	
	
				Response.Write dayTotal 

	  		Else 

				Response.Write "" & rsDays("") & ""

	  		End If
			

  			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>"

				Response.Write intAddHours

				rsCheckam.Close

			Else

			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>&nbsp;"

			End If

			Response.Write "</td></tr>"


Next

'END OF 2 - 24 LOOP FOR ROWS. BELOW BEGINS CODE FOR ROW 25

	Response.Write _
 		"<tr height=21 style='mso-height-source:userset;height:10.95pt'>" & _
  		"<td height=21 class=xl7526149 style='height:10.95pt;border-top:none'>25</td>" & _
		"<td colspan=7 class=xl14226149 style='border-right:.5pt solid black;border-left:none'>"
		

	If Not rsDetail.EOF Then

	   rsDetail.MoveNext

	   If Not rsDetail.EOF Then


	  Response.Write "" & rsDetail("Last_Name") & ", " & rsDetail("First_Name") & ""

	Else

	  Response.Write "&nbsp;"

	End If

	End If

	Response.Write 	"</td>" & _
  			"<td colspan=3 class=xl14226149 style='border-left:none'>"

	
	If Not rsDetail.EOF Then
	
		strCheckam = "SELECT COUNT(status_am) FROM attend_am_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'LP'"

		Set rsCheckam = Server.CreateObject("ADODB.Recordset")

		rsCheckam.Open strCheckam, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
	Response.Write "" & rsDetail("dc_number") & ""


	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Energy-Tech" _
	OR Session("Class") = "Marine-Tech" Then  

		If rsCheckam("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(3)</B>"

		End If

	End If


	strStatus = "SELECT status_pm, class_date_pm FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		    "AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
		    " ORDER BY class_date_pm"

	Set rsStatus = Server.CreateObject("ADODB.Recordset")	
	rsStatus.Open strStatus, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Else

	Response.Write "&nbsp;"

	End If


	Response.Write "</td>" & _
  			"<td class=xl11526149 style='border-top:none'>"

	If Not rsDetail.EOF Then

	strLevel = "SELECT Level FROM Class_Assignment WHERE dc_number = '" & rsDetail("dc_number") & "'"

	Set rsLevel = Server.CreateObject("ADODB.Recordset")	
	rsLevel.Open strLevel, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	If Not rsLevel.EOF Then

		If Session("Class") <> "Masonry" Then

			If Session("Class") <> "Youth-Masonry" Then

				Response.Write rsLevel("Level")

			End If

		End If

	Else

		Response.Write "&nbsp;"

	End If

	rsLevel.Close
	Set rsLevel = Nothing

	End If

	Response.Write "</td>"
    intAddHours = 0
For cellCounter = 1 to 30

   Response.Write "<td class=xl9226149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = cellCounter Then

	  	Response.Write rsStatus("Status_pm") 
        If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then
            intAddHours = intAddHours + 3
        end if 
		rsStatus.MoveNext

       	    Else

	    Response.Write "&nbsp;"
	    End If

	Else

	 Response.Write "&nbsp;"

	End If

    End If

Response.Write "</td>"

Next

Response.Write "<td class=xl9326149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = 31 Then
              
		Response.Write rsStatus("Status_pm")

		strHourpull = "SELECT Hours From ClassAM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + 3

		      Else

			intAddHours = intAddHours + 3

		      End If

		   Else

		     intAddHours = intAddHours + 3

		   End If

		Else

		  intAddHours = intAddHours + 0

		End If

	    rsHourpull.Close
	    rsStatus.MoveNext

	    End If

	End if	

    End If    


'BELOW IS CODE FOR LAST TWO COLUMNS. TTL DAYS ATTENDED AND TTL HOURS ATTENDED FOR ROW 25.

    Response.Write "&nbsp;" & _
			"</td>" & _
    			"<td colspan=2 class=xl12726149 style='border-right:.5pt solid black;border-left:none'>" 

			If Not rsDetail.EOF Then

		    strDays = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  		"AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		  		" AND status_pm = 'P'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
	
                  		"OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  		" AND status_pm = 'E'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _

                  		"OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  		" AND status_pm = 'LP'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'"       


			Set rsDays = Server.CreateObject("ADODB.Recordset")
			rsDays.Open strDays, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	  		If rsCheckam("") >= 1 Then

				dayTotal = rsDays("")	
	
				Response.Write dayTotal 

	  		Else 

				Response.Write "" & rsDays("") & ""

	  		End If
			

  			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>"

				Response.Write intAddHours

				rsCheckam.Close

			Else

			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>&nbsp;"

			End If

			Response.Write "</td></tr>"

'The following loop calls a global function to determine the total membership each day.

Response.Write "<tr height=21 style='mso-height-source:userset;height:10.95pt'>"
Response.Write "<td colspan=12 height=21 class=xl13626149 style='border-right:1.5pt solid black;"
Response.Write "height:10.95pt'>TOTAL MEMBERSHIP EACH DAY</td>"

	dim wDay, total_Membership_count, daily_Membership_count
	dim rsMember
	dim strMember

	dim intMembers
	intMembers = 0

	For intCount = 1 to 31

		Response.Write "<td class=xl8326149 style='border-left:none'>"

		argDay = Session("Month3")&"/"&intCount&"/"&Session("Year")

		If IsDate(argDay) = True then

			wDay = Weekday(argDay)
			
			If wDay <> "1" AND wDay <> "7" Then
				
				intMembers = getMembership("PM", strClass, Session("Class"), argDay, "No")
				daily_Membership_count = intMembers
				Response.Write intMembers
		
				If intCount = 1 then
					total_Membership_count = daily_Membership_count
				Else
					total_Membership_count = total_Membership_count  + daily_Membership_count
				End if 

				intMembers = 0

			Else

				Response.Write "&nbsp"

			End if
		Else 
			Response.Write "&nbsp"

		End If

		Response.Write "</td>"

	Next

	Response.Write "<td colspan=4 class=xl16326149 width=104 style='border-left:1.5pt solid black;  height:10.95pt' style='border-right:.5pt solid black; width:80pt'>"

<!--This line of code is the total_Membership_count to fill-in the Total Membership Column; obtained by adding all daily membership columns  using the variables-->
<!--total_Membership_count + daily_Membership_count in the previous lines of code-->
        
	IF total_Membership_count <> 0 THEN

	Response.Write  total_Membership_count & "</Center>"
        

        ELSE

        Response.Write 0

        END IF

	total_membership_count = "0"
        
	Response.Write "</td></tr>"

'The following loop calls a global function to determine the total students present each day.	

Response.Write "<tr height=21 style='mso-height-source:userset;height:10.95pt'>"
Response.Write "<td colspan=12 height=21 class=xl13926149 style='border-right:1.5pt solid black;"
Response.Write "height:10.95pt'>TOTAL PRESENT EACH DAY</td>"
  
For intCount = 1 to 31

		Response.Write "<td class=xl8326149 style='border-left:none'>"
		argDay = Session("Month3")&"/"&intCount&"/"&Session("Year")
	
		If IsDate(argDay) = True then
			
			wDay = Weekday(argDay)
			
			If wDay <> "1" AND wDay <> "7" Then
				
				intPresent =  getStudentsPresent("PM", strClass, Session("Class"), argDay, "No")
				
				Response.Write intPresent
		
			Else

				Response.Write "&nbsp"

			End if
		Else
			Response.Write "&nbsp"
		End if
	
		Response.Write "</td>"

	Next

%>

  
  <td colspan=4 class=xl16326149 width=104 style='border-left:1.5pt solid black;  height:10.95pt' style='border-right:.5pt solid black; width:80pt'>


<%

<!--This line of code is to fill-in the Total Present each day Column; Adding all the daily presents -->

        DIM Total_present

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_pm = 'P'" & _
		    "AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
        
        Total_present = rsMember("")

	Response.Write "" & rsMember("") & ""
	
Response.Write "</td></tr>"


'The following loop determines the percentage present each day.	


Response.Write "<tr height=21 style='mso-height-source:userset;height:10.95pt'>"
Response.Write "<td colspan=12 height=21 class=xl13926149 style='border-right:1.5pt solid black;height:10.95pt'>"
Response.Write " PERCENTAGE PRESENT EACH DAY</td>"

Set rsPresent = Server.CreateObject("ADODB.Recordset")
Set rsMember = Server.CreateObject("ADODB.Recordset")

For intCount = 1 to 31

	Response.Write "<td class=xl8626149 style='border-top:none;border-left:none'>"
	argDay = Session("Month3")&"/"&intCount&"/"&Session("Year")

	If IsDate(argDay) = True Then

		wDay = Weekday(argDay)

		If wDay <> "1" AND wDay <> "7" Then

		strPresent = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&argDay&"'" & _
 		         "AND status_pm = 'P' " & _
                 "OR class_date_pm = '"&argDay&"'" & _
                 "AND status_pm = 'E' " & _
                 "OR class_date_pm = '"&argDay&"'" & _
                 "AND status_pm = 'LP' " 

   		 strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&argDay&"'" & _
 		        "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                "AND status_pm <> 'RMV' AND status_pm <> 'RSD' AND status_pm <> 'ENR'" & _
                "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

    
		rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		rsPresent.Open strPresent, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

			if rsPresent("") > 0 and rsMember("") > 0 then

				strPercent = FormatPercent(rsPresent("") / rsMember(""), 1)
				Response.Write strPercent

			Else

				Response.Write "0"

			End If

		rsMember.Close
		rsPresent.Close

    	end if
	Else
		Response.Write "&nbsp"
	End if

    response.write "</td>"

	next

%>
<td colspan=4 class=xl16326149 width=104 style='border-left:1.5pt solid black;  height:10.95pt' style='border-right:.5pt solid black; width:80pt'>

</td>
</tr>
 <tr class=xl10426149 height=17 style='height:12.75pt'>
  <td height=17 class=xl10126149 colspan=7 style='height:12.75pt'>ATTENDANCE & ENROLLMENT CODES:</td>
  
  <td class=Middle colspan=18><B>E</b>=Entry; &nbsp;&nbsp; <B>P</b>=Present; &nbsp;&nbsp; <B>PP</b>=Present (All Day); &nbsp;&nbsp; <B>PA</b>=AM Present; &nbsp;&nbsp; <B>PM</b>=PM Present; &nbsp;&nbsp; <B>AA</b>=Absent (All Day); &nbsp;&nbsp; <B>LP</B>=Late Present; &nbsp;&nbsp; <B>AE</B>=Excused Absent; &nbsp;&nbsp; <B>AU</B>=Unexcused Absent; 
   <B>X</B>=No Class Session;
  <TD>&nbsp;
  <td class=Middle colspan=4></td>
  <td class=Middle colspan=14></TD>
  <td class=xl10426149>&nbsp;</td>
  <td class=xl10426149>&nbsp;</td>
  <td class=End>&nbsp;</td>
 </tr>

 <tr class=xl10426149 height=15 style='height:11.25pt'>
  <td height=15 class=Bottom colspan=44 style='height:11.25pt'><B>CMP</B> = Complete; &nbsp;&nbsp; <B>CXS</B> = Complete/Not Required Scores; &nbsp;&nbsp; <B>ENR</B> = Enrolled; &nbsp;&nbsp; <B>NLH</B> = No Longer Housed; &nbsp;&nbsp; <B>RSD</B> = Removed Security/Inst. Need; &nbsp;&nbsp; <B>WTD</B> = Withdrawal; &nbsp;&nbsp; <B>REF</B> = Refused; &nbsp;&nbsp; <B>RMV</B> = Removed from Class (CO approval); &nbsp;&nbsp; <B>ADC</B>=Admin Change; &nbsp;&nbsp; <B>ATT</B>=Attained Edu. Objective</font></td>
  <td class=xl10826149>&nbsp;</td>
  <td class=xl10826149>&nbsp;</td>
  <td class=xl10926149>&nbsp;</td>
 </tr>
 <tr class=xl6553526149 height=24 style='mso-height-source:userset;height:14.0pt'>
  <td height=24 class=xl6726149 style='height:14.0pt'></td>
  <td class=xl6553526149></td>
  
  <td class=xl6726149 colspan=6>TOTAL CLASS DAYS / MONTH:</td>
 
  
  
  <td colspan=2 class=xl12226149>
<%


 	DIM total_class_days

        strMember = "SELECT COUNT(DISTINCT class_date_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    "AND Subject LIKE '%" & Session("Class") & "%' " & _
            "AND status_pm <> 'X'" & _
            "AND status_pm <> '' AND status_pm <> 'ENR' AND status_pm <> 'H' " & _
            "AND Status_pm <> 'RSD' AND Status_pm <> 'RMV' AND Status_pm <> 'CMP' " & _ 
			"And Status_pm <> 'WTD' " & _ 
            "AND Status_pm <> 'ADC' AND Status_pm <> 'NLH' AND Status_pm <> 'REF'"
                    
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
        

       total_class_days = rsMember("")

       Response.Write "<Center>" & rsMember("") & "</Center>"


%>
</td>
  <TD>&nbsp;</td>
  <TD>&nbsp;</td>
  <td class=xl6726149 colspan=9>TOTAL STUDENT ATTEND. DAYS / MONTH:</td>

  <td colspan=2 class=xl12326149>


<%
        <!--This line of code is to fill-in the Total Student Attend Days/Month  Bottom-Middle of form; -->
        <!--Using information stored in the variable Total_Present declared and filled from the total -->
        <!--present each day SQL run; -->


	
	Response.Write "<Center>" & Total_present & "</Center>"
        
%>

</td>

  <td>&nbsp;</td>

  <td class=xl6726149 colspan=19>
    AVERAGE DAILY ATTENDANCE(Total Student Attendance Days divided by Total Class Days):
  </td>

  <td class=xl11726149 style='border-top:none'>&nbsp;</td>
  <td Colspan=2 class=xl10026149 style='border-top:none'>
<%
	
        <!--This line of code is to fill-in Average Daily Attendance  Bottom-right of form; -->
        <!--Using information stored in the variable Total_Present declared and filled from the total -->
        <!--present each day SQL run; and total_class_days variable declared and filled from SQL toal class per month-->

        dim intAverage
	dim intConvert
        
        If total_present <> 0 Then 

          If total_class_days <> 0 Then

	intAverage = total_present / total_class_days

	intConvert = Left(intAverage, 5)
	       

	Response.Write "<Center>" & intConvert & "</Center>"

	End If
	
	Else

	Response.Write "<Center>0</Center>"	
	
	End If
%>
</td>
</tr>
<tr class=xl6553526149 height=24 style='mso-height-source:userset;height:14.0pt'>
  <td height=24 class=xl6726149 style='height:14.0pt'></td>
  <td class=xl6553526149></td>
  <td class=xl6726149 colspan=6></td>
  <td colspan=2 class=xl6726149>
  </td>
  <TD>&nbsp;</td>
  <TD>&nbsp;</td>
  <td class=xl6726149 colspan=9></td>

  <td colspan=2 class=xl6726149>
  </td>

  <td>&nbsp;</td>

  <td class=xl6726149 colspan=19>
    MONTHLY ATTENDANCE PERCENTAGE(Average Daily Attendance divided by Capacity):
  </td>

  <td class=xl11726149 style='border-top:none'>&nbsp;</td>
  <td Colspan=2 class=xl10026149 style='border-top:none'>
    <%
        if intConvert > 0 and strCapacity > 0 then
            intMap = FormatPercent(intConvert / strCapacity)
            response.write "<center>"&intMap&"</center>"
        else
            response.write "<center>0</center>" 
        end if
    %>
  </td>
</tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=23 style='width:17pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=31 style='width:23pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
 </tr>
 <![endif]>
</table>

</div>
<BR>

DC5-149 (Revised 8/29/19)

<BR>
<BR>
<BR>
<BR>


<%
	If Not rsDetail.EOF Then

	rsDetail.MoveNext

	End If

	If Not rsDetail.EOF Then
%>

<!--[if !excel]>&nbsp;&nbsp;<![endif]-->
<!--The following information was generated by Microsoft Office Excel's Publish
as Web Page wizard.-->
<!--If the same item is republished from Excel, all information between the DIV
tags will be replaced.-->
<!----------------------------->
<!--START OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD -->
<!----------------------------->

<div id="Div1" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=940 class=xl6326149
 style='border-collapse:collapse;table-layout:auto;width:940pt'>

 <col class=xl6326149 width=15 style='mso-width-source:userset;mso-width-alt:
 841;width:12pt'>

 <col class=xl6326149 width=15 span=10 style='mso-width-source:userset;
 mso-width-alt:950;width:15pt'>

 <col class=xl6326149 width=18 style='mso-width-source:userset;mso-width-alt:
 1133;width:15pt'>

 <col class=xl6326149 width=15 span=35 style='mso-width-source:userset;
 mso-width-alt:950;width:15pt'>

 <tr height=17 style='height:12.75pt'>
  <td height=17 class=xl6626149 colspan=10 width=200 style='height:12.75pt;
  width:240pt'>CORRECTIONAL DAILY ATTENDANCE ROSTER</td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>
  <td class=xl6326149 width=26 style='width:20pt'></td>

  <td class=xl6826149 colspan=4 width=104 style='width:80pt'>ROSTER PAGE</td>
  <td colspan=2 class=xl14426149 width=52 style='width:40pt'><Center>2</Center></td>
  <td class=xl7326149 width=26 style='width:20pt'>OF</td>
  <td colspan=2 class=xl14426149 width=52 style='width:40pt'><Center>2</Center></td>
 </tr>
 <tr height=17 style='mso-height-source:userset;height:12.75pt'>
  <td height=17 class=xl6326149 style='height:12.75pt'></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:15.95pt'>
  <td height=21 class=xl7226149 colspan=5 style='height:15.95pt'>YEAR AND MONTH</td>
  <td class=xl7426149 colspan=3><%=Session("Month")%>, <%=Session("Year")%></td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  
  <td class=xl7226149 colspan=9><span style='mso-spacerun:yes'>
  </span>INSTITUTION &amp; UNIT / FAC CODE #</td>
  <td class=xl11926149 colspan=5>Sumter C.I.<span style='mso-spacerun:yes'>
  </span>
      <%
        if strClass = "Y4" or strClass = "Y5" then
                response.write "#305"
            else
                if strClass = "Horticulture" then
            		If Session("Shift") = "AM" then
						response.write "#305"
            		End if
				End if
           		response.write "#307"
            end if

      %>
  </td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  
  <td class=xl7226149 colspan=3><span style='mso-spacerun:yes'></span>TEACHER</td>
  <td class=xl7426149 colspan=5><%=rsTeacher("Teacher")%></td>
  
 </tr>
 <tr class=xl6326149 height=5 style='mso-height-source:userset;height:3.95pt'>
  <td height=5 class=xl6326149 style='height:3.95pt'></td>
  <td class=xl6726149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
  <td class=xl6553526149></td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:15.95pt'>
  <td height=21 class=xl7226149 colspan=4 style='height:15.95pt'>COURSE NAME</td>
  <td class=xl9026149></td>
  <td class=xl7426149 colspan=6><%=strClassName%>&nbsp;</td>
  <td>&nbsp;&nbsp;&nbsp;</td>
  <td class=xl7226149 style='height:15.95pt' colspan=3>&nbsp;&nbsp;CAPACITY</td>
  <td class=xl7426149 colspan=3>
    <%
        Response.Write strCapacity
    %>
  </td>
  <td>&nbsp;&nbsp;&nbsp;</td>


  <td class=xl7226149 colspan=4>COURSE CODE</td>
  <td class=xl7426149 colspan=11>
  <%
	If Session("Class") = "S1" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "Y1" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "S2" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "S3" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "S4" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "Y2" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "Y3" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "Y4" Then
		
		Response.Write "9900004 (ABE) / 9900150 (MLP) / 9900135 (GED)"

	End If

	If Session("Class") = "Youth-Masonry" Then
		
		Response.Write "I463112"

	End If

	If Session("Class") = "Masonry" Then
		
		Response.Write "I463112"

	End If

	If Session("Class") = "Electronics" Then
		
		Response.Write "I463112"

	End If

	If Session("Class") = "Admin-Off-Spec" Then
		
		Response.Write "B070330"

	End If
  %>

</td>
  <td class=xl7426149>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  
  <td class=xl7226149 colspan=3>SECTION</td>
  <td class=xl7426149 colspan=4> 
<%
	If Session("Class") = "S1" Then
		
		Response.Write "S"

	End If

	If Session("Class") = "Y1" Then
		
		Response.Write "8"

	End If

	If Session("Class") = "S2" Then
		
		Response.Write "U"

	End If

	If Session("Class") = "S3" Then
		
		Response.Write "K"

	End If

	If Session("Class") = "S4" Then
		
		Response.Write "I"

	End If

	If Session("Class") = "Y2" Then
		
		Response.Write "6"

	End If

	If Session("Class") = "Y3" Then
		
		Response.Write "2"

	End If

	If Session("Class") = "Y4" Then
		
		Response.Write "1"

	End If

    If Session("Class") = "Y5" Then
		
		Response.Write "X"

	End If

	If Session("Class") = "Youth-Masonry" Then
		
		Response.Write "A"

	End If

	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Energy-Tech" _
	OR Session("Class") = "Marine-Tech" Then 
		
		Response.Write "&nbsp;1(All-Day), 2(AM-Only)"

	End If
%>

</td>
  
 </tr>
<TR>
	<TD>&nbsp;
</TR>
 <tr height=5 style='mso-height-source:userset;height:3.95pt'>
  <td height=5 class=xl6326149 style='height:3.95pt'></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6426149 style='border-top:none'>&nbsp;</td>
  <td class=xl6426149 style='border-top:none'>&nbsp;</td>
  <td class=xl6426149 style='border-top:none'>&nbsp;</td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:10.95pt'>
  <td height=10 class=xl7226149 style='height:8.95pt' colspan=5>DAYS SCHEDULED</td>
  <td class=xl9926149 style='border-left:none'>Mon</td>
  <td class=xl8926149>X</td>
  <td class=xl9926149>Tue</td>
  <td class=xl8926149>X</td>
  <td class=xl9926149>Wed</td>
  <td class=xl8926149>X</td>
  <td class=xl9926149>Thu</td>
  <td class=xl8926149>X</td>
  <td class=xl9926149>Fri</td>
  <td class=xl8926149>X</td>
  <td class=xl9926149>Sat</td>
  <td class=xl8926149>&nbsp;</td>
  <td class=xl9926149>Sun</td>
  <td class=xl8926149>&nbsp;</td>
  <td class=xl6326149></td>
  
  <td class=xl12026149 colspan=2>CLASS SESSION<span style='mso-spacerun:yes'></span></td>

  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>Hrs<span
  style='mso-spacerun:yes'>  </span></td>
  <td class=xl12126149 style='border-left:none'><Center>3</Center></td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>AM<span
  style='mso-spacerun:yes'></span></td>
  <td class=xl12126149 style='border-left:none'><Center></Center></td>
  <td colspan=2 class=xl16226149 style='border-right:.5pt solid black;
  border-left:none'>PM<span style='mso-spacerun:yes'></span></td>
  <td class=xl12126149 style='border-left:none'><Center>X</Center></td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>All
  Day<span style='mso-spacerun:yes'></span></td>
  <td class=xl12126149 style='border-left:none'>&nbsp;</td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>Night<span
  style='mso-spacerun:yes'></span></td>
  <td class=xl12126149 style='border-left:none'>&nbsp;</td>
  <td class=xl6326149></td>
  
  
  <td class=xl12026149 colspan=3>CLASS PERIOD<span style='mso-spacerun:yes'></span></td>
  <td class=xl6326149></td>
  <td class=xl7426149>&nbsp;</td>
  <td class=xl7426149>&nbsp;</td>
  
  <td class=xl7326149>TO</td>
  <td class=xl7426149>&nbsp;</td>
  <td class=xl7426149>&nbsp;</td>
  
 </tr>
  <TR>
    <TD>&nbsp;
  </TR>
 <tr height=5 style='mso-height-source:userset;height:3.95pt'>
  <td height=5 class=xl6326149 style='height:3.95pt'></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
  <td class=xl6326149></td>
 </tr>
 <tr class=xl6526149 height=17 style='mso-height-source:userset;height:12.75pt'>
  <td height=17 class=xl6526149 style='height:12.75pt'></td>
  <td colspan=7 rowspan=2 class=xl14526149 style='border-right:.5pt solid black;
  border-bottom:1.5pt solid black'>NAME (LAST, FIRST)</td>
  <td colspan=3 rowspan=2 class=xl14526149 style='border-bottom:1.5pt solid black'>DC#</td>
  <td class=xl11226149>MLP</td>
  <%
        for calDayCount = 1 to 31
                css = "xl7026149"
            if calDayCount = 1 then
                css = "xl6926149"
            elseif calDayCount = 31 then
                css = "xl7126149"
            end if

            Response.Write "<td class="&css&" style='border-left:none'>" & calDayCount & "</td>"
         
        next
  %>
  
  <td colspan=2 rowspan=2 class=xl15126149 width=52 style='border-right:.5pt solid black;
  border-bottom:1.5pt solid black;width:40pt'>Ttl Days Attended</td>
  <td colspan=2 rowspan=2 class=xl15526149 width=52 style='border-right:.5pt solid black;
  border-bottom:1.5pt solid black;width:40pt'>Ttl Hrs Attended</td>
 </tr>
 <tr class=xl6526149 height=18 style='height:13.5pt'>
  <td height=18 class=xl6526149 style='height:13.5pt'></td>
  <td class=xl11326149>Y/N</td>
  <%
        for calCount = 1 to 31
                css = "xl9526149"
            if calCount = 1 then
                css = "xl9426149"
            elseif calCount = 31 then
                css = "xl9626149"
            end if

            if calCount <= Session("Days3") then
                Select Case Weekday(Session("Month3") & "/"&calCount&"/" & Session("Year"))
		            Case 1
			            myDay = "Su"
		            Case 2
			            myDay = "M"
		            Case 3
			            myDay = "T"
		            Case 4
			            myDay = "W"
		            Case 5
			            myDay = "Th"
		            Case 6
			            myDay = "F"
		            Case 7
			            myDay = "Sa"
	            End Select
                Response.Write "<td class="&css&" align=center style='border-left:none'>"&myDay&"</td>"
            else
                Response.Write "<td class="&css&" style='border-left:none'>&nbsp;</td>"
            end if
        next
  %>
 </tr>

 <tr height=21 style='mso-height-source:userset;height:10.95pt'>
  <td height=21 class=xl9726149 style='height:10.95pt'>26</td>
  <td colspan=7 class=xl15926149 style='border-right:.5pt solid black;border-left:none'>

<% 	
    Set rsHourpull = Server.CreateObject("ADODB.Recordset")

	If Not rsDetail.EOF Then

	  Response.Write "" & rsDetail("Last_Name") & ", " & rsDetail("First_Name") & ""

	Else

	  Response.Write "&nbsp;"

	End If

	Response.Write 	"</td>" & _
  			"<td colspan=3 class=xl14226149 style='border-left:none'>"

	If Not rsDetail.EOF Then	

	strCheckam = "SELECT COUNT(status_am) FROM attend_am_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'LP'"

		Set rsCheckam = Server.CreateObject("ADODB.Recordset")

		rsCheckam.Open strCheckam, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText		
	
	Response.Write "" & rsDetail("dc_number") & ""

	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Energy-Tech" _
	OR Session("Class") = "Marine-Tech" Then  

		If rsCheckam("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(3)</B>"

		End If

	End If

	
	strStatus = "SELECT status_pm, class_date_pm FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		    "AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
		    "ORDER BY class_date_pm"

	Set rsStatus = Server.CreateObject("ADODB.Recordset")	
	rsStatus.Open strStatus, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Else

	Response.Write "&nbsp;"

	End If

Response.Write _
		"</td>" & _
  		"<td class=xl11426149>"

	If Not rsDetail.EOF Then

	strLevel = "SELECT Level FROM Class_Assignment WHERE dc_number = '" & rsDetail("dc_number") & "'"

	Set rsLevel = Server.CreateObject("ADODB.Recordset")	
	rsLevel.Open strLevel, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	If Not rsLevel.EOF Then

		If Session("Class") <> "Masonry" Then

			If Session("Class") <> "Youth-Masonry" Then

				Response.Write rsLevel("Level")

			End If

		End If

	Else

		Response.Write "&nbsp;"

	End If

	rsLevel.Close
	Set rsLevel = Nothing

	End If

	Response.Write "</td>"
intAddHours = 0
For cellCounter = 1 to 30

  Response.Write "<td class=xl9226149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = cellCounter Then
              
		Response.Write rsStatus("Status_pm")

		strHourpull = "SELECT Hours From ClassAM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + 3

		      Else

			intAddHours = intAddHours + 3

		      End If

		   Else

		     intAddHours = intAddHours + 3

		   End If

		Else

		  intAddHours = intAddHours + 0

		End If

	    rsHourpull.Close
	    rsStatus.MoveNext

       	    Else

	    Response.Write "&nbsp;"

	    End If

    	Else

    	Response.Write "&nbsp;"

	End If

    End If

  Response.Write "</td>"

Next

Response.Write "<td class=xl9326149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = 31 Then
              
		Response.Write rsStatus("Status_pm")

		strHourpull = "SELECT Hours From ClassAM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + 3

		      Else

			intAddHours = intAddHours + 3

		      End If

		   Else

		     intAddHours = intAddHours + 3

		   End If

		Else

		  intAddHours = intAddHours + 0

		End If

	    rsHourpull.Close
	    rsStatus.MoveNext

       	    Else

	    Response.Write "&nbsp;"

	    End If

    	Else

    	Response.Write "&nbsp;"

	End If

    End If

%>
</td>

    <td colspan=2 class=xl12726149 style='border-right:.5pt solid black;
  border-left:none'>

<%
	If Not rsDetail.EOF Then

	strDays = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		  " AND status_pm = 'P'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _

                  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  " AND status_pm = 'E'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _

                  "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  " AND status_pm = 'LP'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'"
                  

	Set rsDays = Server.CreateObject("ADODB.Recordset")
	rsDays.Open strDays, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	  If rsCheckam("") >= 1 Then

		dayTotal = rsDays("")	
	
		Response.Write dayTotal 

	  Else 

		Response.Write "" & rsDays("") & ""

	  End If

	End If
%>
</td>
  <td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>
<%
	If Not rsDetail.EOF Then

		Response.Write intAddHours

		rsCheckam.Close

	End If
%>

</td>
 </tr>

<%
For bigCounter = 2 to 24
 	thisRowNum = bigCounter + 25
	Response.Write  "<tr height=21 style='mso-height-source:userset;height:10.95pt'>" & _
  			"<td height=21 class=xl7526149 style='height:10.95pt;border-top:none'>"&thisRowNum&"</td>" & _
  			"<td colspan=7 class=xl14226149 style='border-right:.5pt solid black;border-left:none'>" 
		

	If Not rsDetail.EOF Then

	   rsDetail.MoveNext

	   If Not rsDetail.EOF Then

	  Response.Write "" & rsDetail("Last_Name") & ", " & rsDetail("First_Name") & ""

	Else

	  Response.Write "&nbsp;"

	End If

	End If


	Response.Write  "</td>" & _
  			"<td colspan=3 class=xl14226149 style='border-left:none'>"

	If Not rsDetail.EOF Then

		strCheckam = "SELECT COUNT(status_am) FROM attend_am_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'LP'"

		Set rsCheckam = Server.CreateObject("ADODB.Recordset")

		rsCheckam.Open strCheckam, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write "" & rsDetail("dc_number") & ""


	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Energy-Tech" _
	OR Session("Class") = "Marine-Tech" Then 

		If rsCheckam("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(3)</B>"

		End If

	End If

	strStatus = "SELECT status_pm, class_date_pm FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		    "AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
		    " ORDER BY class_date_pm"

	Set rsStatus = Server.CreateObject("ADODB.Recordset")	
	rsStatus.Open strStatus, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Else

	Response.Write "&nbsp;"

	End If

Response.Write _
		"</td>" & _
  		"<td class=xl11526149 style='border-top:none'>"

	If Not rsDetail.EOF Then

	strLevel = "SELECT Level FROM Class_Assignment WHERE dc_number = '" & rsDetail("dc_number") & "'"

	Set rsLevel = Server.CreateObject("ADODB.Recordset")	
	rsLevel.Open strLevel, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	If Not rsLevel.EOF Then

		If Session("Class") <> "Masonry" Then

			If Session("Class") <> "Youth-Masonry" Then

				Response.Write rsLevel("Level")

			End If

		End If

	Else

		Response.Write "&nbsp;"

	End If

	rsLevel.Close
	Set rsLevel = Nothing

	End If

Response.Write "</td>"
  
intAddHours = 0
For cellCounter = 1 to 30

  Response.Write "<td class=xl9226149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = cellCounter Then
              
		Response.Write rsStatus("Status_pm")

		strHourpull = "SELECT Hours From ClassAM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + 3

		      Else

			intAddHours = intAddHours + 3

		      End If

		   Else

		     intAddHours = intAddHours + 3

		   End If

		Else

		  intAddHours = intAddHours + 0

		End If

	    rsHourpull.Close
	    rsStatus.MoveNext

       	    Else

	    Response.Write "&nbsp;"

	    End If

    	Else

    	Response.Write "&nbsp;"

	End If

    End If

  Response.Write "</td>"

Next

Response.Write "<td class=xl9326149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = 31 Then
              
		Response.Write rsStatus("Status_pm")

		strHourpull = "SELECT Hours From ClassAM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			  intAddHours = intAddHours + 3

		      Else

			  intAddHours = intAddHours + 3

		      End If

		   Else

		     intAddHours = intAddHours + 3

		   End If

		Else

		  intAddHours = intAddHours + 0

		End If

	    rsHourpull.Close
	    rsStatus.MoveNext

	    End If

	End if	

    End If    


'BELOW IS CODE FOR LAST TWO COLUMNS. TTL DAYS ATTENDED AND TTL HOURS ATTENDED.

    Response.Write "&nbsp;" & _
			"</td>" & _
    			"<td colspan=2 class=xl12726149 style='border-right:.5pt solid black;border-left:none'>" 

			If Not rsDetail.EOF Then

			strDays = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  		"AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		  		" AND status_pm = 'P'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
	
                  		"OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  		" AND status_pm = 'E'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _

                  		"OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  		" AND status_pm = 'LP'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'"
                  


			Set rsDays = Server.CreateObject("ADODB.Recordset")
			rsDays.Open strDays, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	  		If rsCheckam("") >= 1 Then

				dayTotal = rsDays("")	
	
				Response.Write dayTotal 

	  		Else 

				Response.Write "" & rsDays("") & ""

	  		End If
			

  			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>"

				Response.Write intAddHours

				rsCheckam.Close

			Else

			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>&nbsp;"

			End If

			Response.Write "</td></tr>"


Next

'END OF 2 - 24 LOOP FOR ROWS. BELOW BEGINS CODE FOR ROW 25

	Response.Write _
 		"<tr height=21 style='mso-height-source:userset;height:10.95pt'>" & _
  		"<td height=21 class=xl7526149 style='height:10.95pt;border-top:none'>50</td>" & _
		"<td colspan=7 class=xl14226149 style='border-right:.5pt solid black;border-left:none'>"
		

	If Not rsDetail.EOF Then

	   rsDetail.MoveNext

	   If Not rsDetail.EOF Then


	  Response.Write "" & rsDetail("Last_Name") & ", " & rsDetail("First_Name") & ""

	Else

	  Response.Write "&nbsp;"

	End If

	End If

	Response.Write 	"</td>" & _
  			"<td colspan=3 class=xl14226149 style='border-left:none'>"

	If Not rsDetail.EOF Then

		strCheckam = "SELECT COUNT(status_am) FROM attend_pm_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_am >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_am <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_am = 'LP'"

		Set rsCheckam = Server.CreateObject("ADODB.Recordset")

		rsCheckam.Open strCheckam, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
	Response.Write "" & rsDetail("dc_number") & ""


	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Energy-Tech" _
	OR Session("Class") = "Marine-Tech" Then  

		If rsCheckam("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(3)</B>"

		End If

	End If


	strStatus = "SELECT status_pm, class_date_pm FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		    "AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
		    " ORDER BY class_date_pm"

	Set rsStatus = Server.CreateObject("ADODB.Recordset")	
	rsStatus.Open strStatus, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Else

	Response.Write "&nbsp;"

	End If


	Response.Write "</td>" & _
  			"<td class=xl11526149 style='border-top:none'>"

	If Not rsDetail.EOF Then

	strLevel = "SELECT Level FROM Class_Assignment WHERE dc_number = '" & rsDetail("dc_number") & "'"

	Set rsLevel = Server.CreateObject("ADODB.Recordset")	
	rsLevel.Open strLevel, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	If Not rsLevel.EOF Then

		If Session("Class") <> "Masonry" Then

			If Session("Class") <> "Youth-Masonry" Then

				Response.Write rsLevel("Level")

			End If

		End If

	Else

		Response.Write "&nbsp;"

	End If

	rsLevel.Close
	Set rsLevel = Nothing

	End If

	Response.Write "</td>"
intAddHours = 0
For cellCounter = 1 to 30

   Response.Write "<td class=xl9226149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = cellCounter Then

	  	Response.Write rsStatus("Status_pm") 

        if rsStatus("Status_pm") = "P" or rsStatus("Status_pm") = "E" then
            intAddHours = intAddHours + 3
        end if

		rsStatus.MoveNext

       	    Else

	    Response.Write "&nbsp;"
	    End If

	Else

	 Response.Write "&nbsp;"

	End If

    End If

Response.Write "</td>"

Next

Response.Write "<td class=xl9326149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = 31 Then
              
		Response.Write rsStatus("Status_pm")

		strHourpull = "SELECT Hours From ClassAM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + 3

		      Else

			intAddHours = intAddHours + 3

		      End If

		   Else

		     intAddHours = intAddHours + 3

		   End If

		Else

		  intAddHours = intAddHours + 0

		End If

	    rsHourpull.Close
	    rsStatus.MoveNext

	    End If

	End if	

    End If    


'BELOW IS CODE FOR LAST TWO COLUMNS. TTL DAYS ATTENDED AND TTL HOURS ATTENDED FOR ROW 25.

    Response.Write "&nbsp;" & _
			"</td>" & _
    			"<td colspan=2 class=xl12726149 style='border-right:.5pt solid black;border-left:none'>" 

			If Not rsDetail.EOF Then

			strDays = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		  		"AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
		  		" AND status_pm = 'P'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _
	
                  		"OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  		" AND status_pm = 'E'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'" & _

                  		"OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'  AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND Subject LIKE '%" & Session("Class") & "%'" & _
                  		" AND status_pm = 'LP'  AND dc_number LIKE '%" & rsDetail("dc_number") & "%'"
                  


			Set rsDays = Server.CreateObject("ADODB.Recordset")
			rsDays.Open strDays, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	  		If rsCheckam("") >= 1 Then

				dayTotal = rsDays("")	
	
				Response.Write dayTotal 

	  		Else 

				Response.Write "" & rsDays("") & ""

	  		End If
			

  			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>"

				Response.Write intAddHours

				rsCheckam.Close

			Else

			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>&nbsp;"

			End If

			Response.Write "</td></tr>"

'The following loop calls a global function to determine the total membership each day.

Response.Write "<tr height=21 style='mso-height-source:userset;height:10.95pt'>"
Response.Write "<td colspan=12 height=21 class=xl13626149 style='border-right:1.5pt solid black;"
Response.Write "height:10.95pt'>TOTAL MEMBERSHIP EACH DAY</td>"

	
	intMembers = 0

	For intCount = 1 to 31

		Response.Write "<td class=xl8326149 style='border-left:none'>"

		argDay = Session("Month3")&"/"&intCount&"/"&Session("Year")

		If IsDate(argDay) = True then

			wDay = Weekday(argDay)
			
			If wDay <> "1" AND wDay <> "7" Then
				
				intMembers = getMembership("PM", strClass, Session("Class"), argDay, "No")
				daily_Membership_count = intMembers
				Response.Write intMembers
		
				If intCount = 1 then
					total_Membership_count = daily_Membership_count
				Else
					total_Membership_count = total_Membership_count  + daily_Membership_count
				End if 

				intMembers = 0

			Else

				Response.Write "&nbsp"

			End if
		Else 
			Response.Write "&nbsp"

		End If
	
		Response.Write "</td>"

	Next

	

	Response.Write "<td colspan=4 class=xl16326149 width=104 style='border-left:1.5pt solid black;  height:10.95pt' style='border-right:.5pt solid black; width:80pt'>"

<!--This line of code is the total_Membership_count to fill-in the Total Membership Column; obtained by adding all daily membership columns  using the variables-->
<!--total_Membership_count + daily_Membership_count in the previous lines of code-->
        
	IF total_Membership_count <> 0 THEN

	Response.Write  total_Membership_count & "</Center>"
        

        ELSE

        Response.Write 0

        END IF

	total_membership_count = "0"
        
	Response.Write "</td></tr>"

'The following loop calls a global function to determine the total students present each day.	

Response.Write "<tr height=21 style='mso-height-source:userset;height:10.95pt'>"
Response.Write "<td colspan=12 height=21 class=xl13926149 style='border-right:1.5pt solid black;"
Response.Write "height:10.95pt'>TOTAL PRESENT EACH DAY</td>"
  
For intCount = 1 to 31

		Response.Write "<td class=xl8326149 style='border-left:none'>"
		argDay = Session("Month3")&"/"&intCount&"/"&Session("Year")

		If IsDate(argDay) = True then
			
			wDay = Weekday(argDay)
			
			If wDay <> "1" AND wDay <> "7" Then
				
				intPresent =  getStudentsPresent("PM", strClass, Session("Class"), argDay, "No")
				
				Response.Write intPresent
		
			Else

				Response.Write "&nbsp"

			End if
		Else
			Response.Write "&nbsp"
		End if
	
		Response.Write "</td>"

	Next
%>
  
  <td colspan=4 class=xl16326149 width=104 style='border-left:1.5pt solid black;  height:10.95pt' style='border-right:.5pt solid black; width:80pt'>

<%

<!--This line of code is to fill-in the Total Present each day Column; Adding all the daily presents -->

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"' AND status_pm = 'P'" & _
		    "AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
        
        Total_present = rsMember("")

	Response.Write "" & rsMember("") & ""
	
Response.Write "</td></tr>"


'The following loop determines the percentage present each day.	


Response.Write "<tr height=21 style='mso-height-source:userset;height:10.95pt'>"
Response.Write "<td colspan=12 height=21 class=xl13926149 style='border-right:1.5pt solid black;height:10.95pt'>"
Response.Write " PERCENTAGE PRESENT EACH DAY</td>"

Set rsPresent = Server.CreateObject("ADODB.Recordset")
Set rsMember = Server.CreateObject("ADODB.Recordset")

For intCount = 1 to 31

	Response.Write "<td class=xl8626149 style='border-top:none;border-left:none'>"
	argDay = Session("Month3")&"/"&intCount&"/"&Session("Year")

	If IsDate(argDay) = True Then

		wDay = Weekday(argDay)

		If wDay <> "1" AND wDay <> "7" Then

		strPresent = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&argDay&"'" & _
 		         "AND status_pm = 'P' " & _
                 "OR class_date_pm = '"&argDay&"'" & _
                 "AND status_pm = 'E' " & _
                 "OR class_date_pm = '"&argDay&"'" & _
                 "AND status_pm = 'LP' " 

   		 strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&argDay&"'" & _
 		        "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                "AND status_pm <> 'RMV' AND status_pm <> 'RSD' AND status_pm <> 'ENR'" & _
                "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

    
		rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
		rsPresent.Open strPresent, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

			if rsPresent("") > 0 and rsMember("") > 0 then

				strPercent = FormatPercent(rsPresent("") / rsMember(""), 1)
				Response.Write strPercent

			Else

				Response.Write "0"

			End If

		rsMember.Close
		rsPresent.Close

    	end if
	Else
		Response.Write "&nbsp"
	End if

    response.write "</td>"

	next

%>
<td colspan=4 class=xl16326149 width=104 style='border-left:1.5pt solid black;  height:10.95pt' style='border-right:.5pt solid black; width:80pt'>

</td>
</tr>
 <tr class=xl10426149 height=17 style='height:12.75pt'>
  <td height=17 class=xl10126149 colspan=7 style='height:12.75pt'>ATTENDANCE & ENROLLMENT CODES:</td>
  
  <td class=Middle colspan=18><B>E</b>=Entry; &nbsp;&nbsp; <B>P</b>=Present; &nbsp;&nbsp; <B>PP</b>=Present (All Day); &nbsp;&nbsp; <B>PA</b>=AM Present; &nbsp;&nbsp; <B>PM</b>=PM Present; &nbsp;&nbsp; <B>AA</b>=Absent (All Day); &nbsp;&nbsp; <B>LP</B>=Late Present; &nbsp;&nbsp; <B>AE</B>=Excused Absent; &nbsp;&nbsp; <B>AU</B>=Unexcused Absent; 
   <B>X</B>=No Class Session;
  <TD>&nbsp;
  <td class=Middle colspan=4></td>
  <td class=Middle colspan=14></TD>
  <td class=xl10426149>&nbsp;</td>
  <td class=xl10426149>&nbsp;</td>
  <td class=End>&nbsp;</td>
 </tr>

 <tr class=xl10426149 height=15 style='height:11.25pt'>
  <td height=15 class=Bottom colspan=44 style='height:11.25pt'><B>CMP</B> = Complete; &nbsp;&nbsp; <B>CXS</B> = Complete/Not Required Scores; &nbsp;&nbsp; <B>ENR</B> = Enrolled; &nbsp;&nbsp; <B>NLH</B> = No Longer Housed; &nbsp;&nbsp; <B>RSD</B> = Removed Security/Inst. Need; &nbsp;&nbsp; <B>WTD</B> = Withdrawal; &nbsp;&nbsp; <B>REF</B> = Refused; &nbsp;&nbsp; <B>RMV</B> = Removed from Class (CO approval); &nbsp;&nbsp; <B>ADC</B>=Admin Change; &nbsp;&nbsp; <B>ATT</B>=Attained Edu. Objective</font></td>
  <td class=xl10826149>&nbsp;</td>
  <td class=xl10826149>&nbsp;</td>
  <td class=xl10926149>&nbsp;</td>
 </tr>
 <tr class=xl6553526149 height=24 style='mso-height-source:userset;height:14.0pt'>
  <td height=24 class=xl6726149 style='height:14.0pt'></td>
  <td class=xl6553526149></td>
  
  <td class=xl6726149 colspan=6>TOTAL CLASS DAYS / MONTH:</td>
 
  
  
  <td colspan=2 class=xl12226149>
<%
       Response.Write "<Center>" & total_class_days & "</Center>"
%>
</td>
  <TD>&nbsp;</td>
  <TD>&nbsp;</td>
  <td class=xl6726149 colspan=9>TOTAL STUDENT ATTEND. DAYS / MONTH:</td>

  <td colspan=2 class=xl12326149>


<%
        <!--This line of code is to fill-in the Total Student Attend Days/Month  Bottom-Middle of form; -->
        <!--Using information stored in the variable Total_Present declared and filled from the total -->
        <!--present each day SQL run; -->


	
	Response.Write "<Center>" & Total_present & "</Center>"
        
%>

</td>

  <td>&nbsp;</td>

  <td class=xl6726149 colspan=19>
    AVERAGE DAILY ATTENDANCE(Total Student Attendance Days divided by Total Class Days):
  </td>

  <td class=xl11726149 style='border-top:none'>&nbsp;</td>
  <td Colspan=2 class=xl10026149 style='border-top:none'>
<%
	
        <!--This line of code is to fill-in Average Daily Attendance  Bottom-right of form; -->
        <!--Using information stored in the variable Total_Present declared and filled from the total -->
        <!--present each day SQL run; and total_class_days variable declared and filled from SQL toal class per month-->
        
        If total_present <> 0 Then 

          If total_class_days <> 0 Then

	intAverage = total_present / total_class_days

	intConvert = Left(intAverage, 5)
	       

	Response.Write "<Center>" & intConvert & "</Center>"

	End If
	
	Else

	Response.Write "<Center>0</Center>"	
	
	End If
%>
</td>
</tr>
<tr class=xl6553526149 height=24 style='mso-height-source:userset;height:14.0pt'>
  <td height=24 class=xl6726149 style='height:14.0pt'></td>
  <td class=xl6553526149></td>
  <td class=xl6726149 colspan=6></td>
  <td colspan=2 class=xl6726149>
  </td>
  <TD>&nbsp;</td>
  <TD>&nbsp;</td>
  <td class=xl6726149 colspan=9></td>

  <td colspan=2 class=xl6726149>
  </td>

  <td>&nbsp;</td>

  <td class=xl6726149 colspan=19>
    MONTHLY ATTENDANCE PERCENTAGE(Average Daily Attendance divided by Capacity):
  </td>

  <td class=xl11726149 style='border-top:none'>&nbsp;</td>
  <td Colspan=2 class=xl10026149 style='border-top:none'>
    <%
        if intConvert > 0 and strCapacity > 0 then
            intMap = FormatPercent(intConvert / strCapacity)
            response.write "<center>"&intMap&"</center>"
        else
            response.write "<center>0</center>" 
        end if
    %>
  </td>
</tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=23 style='width:17pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=31 style='width:23pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
  <td width=26 style='width:20pt'></td>
 </tr>
 <![endif]>
</table>

</div>
<BR>

DC5-149 (Revised 8/29/19)

<% 
	End If 

	rsTeacher.Close
	rsDetail.Close
	Set rsCheckam = Nothing
	Set rsDetail = Nothing
	Set rsTeacher = Nothing
	Set rsMember = Nothing
	
%>
</body>
</html>




