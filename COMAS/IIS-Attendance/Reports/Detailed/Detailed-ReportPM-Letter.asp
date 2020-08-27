<!--#Include File="Connection.asp"-->
<!--#MetaData Type="TypeLib"
	      File="H:\program files\Common Files\system\ado\msado15.dll"-->

<%
	dim strClass
	dim strComp

	If Session("Class") = "Y1" Then

		strClass = "Y1"
		strComp = "18+Ac"

	End If

	If Session("Class") = "Y2" Then

		strClass = "Y2"
		strComp = "18+Ac"

	End If

	If Session("Class") = "Y3" Then

		strClass = "Y3"
		strComp = "18+Ac"

	End If

	If Session("Class") = "Y4" Then

		strClass = "Y4"
		strComp = "17-Ac"

	End If

	If Session("Class") = "Y5" Then

		strClass = "Y5"
		strComp = "17-Ac"

	End If
	
	If Session("Class") = "Horticulture" Then

		strClass = "Horticulture"
		strComp = "17-Ac"

	End If


	If Session("Class") = "S1" Then

		strClass = "S1"
		strComp = "Adult"

	End If

	If Session("Class") = "S2" Then

		strClass = "S2"
		strComp = "Adult"

	End If

	If Session("Class") = "S3" Then

		strClass = "S3"
		strComp = "Adult"

	End If

	If Session("Class") = "S4" Then

		strClass = "S4"
		strComp = "Adult"

	End If

	If Session("Class") = "Youth-Masonry" Then

		strClass = "yMasonry"
		strComp = "18+Ac"

	End If

	If Session("Class") = "Masonry" Then

		strClass = "Masonry"
		strComp = "Adult"

	End If

	If Session("Class") = "Electronics" Then

		strClass = "Elec"
		strComp = "Adult"

	End If
	
	If Session("Class") = "Automotive" Then

		strClass = "auto"
		strComp = "Adult"

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
	font-size:6.0pt;
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
	font-size:6.0pt;
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
	font-size:6.0pt;
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
	font-size:6.0pt;
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
	font-size:6.0pt;
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
	font-size:4.0pt;
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
	font-size:4.0pt;
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

<table border=0 cellpadding=0 cellspacing=0 width=500 class=xl6326149
 style='border-collapse:collapse;table-layout:fixed;width:500pt'>

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
  </span>#307</td>
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
  
  <td class=xl7226149 colspan=3><span style='mso-spacerun:yes'> </span>TEACHER</td>
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
  <td class=xl7426149 colspan=6><%=rsTeacher("Class")%></td>
  <td class=xl7426149>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>


  <td class=xl7226149 colspan=5><span style='mso-spacerun:yes'>   </span>COURSE CODE</td>
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
  %>

</td>
  <td class=xl7426149>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
   


  
  <td class=xl7226149 colspan=3>SECTION</td>
  <td class=xl7426149 colspan=5> 
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
		
		Response.Write "Z"

	End If

    If Session("Class") = "Y5" Then
		
		Response.Write "X"

	End If

    If Session("Class") = "Horticulture" Then
		
		Response.Write "2"

	End If

	If Session("Class") = "Youth-Masonry" Then
		
		Response.Write "A"

	End If

	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Electronics" _
	OR Session("Class") = "Automotive" Then 
		
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
  
  <td class=xl12026149 colspan=5>CLASS SESSION<span style='mso-spacerun:yes'>  </span></td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>AM<span
  style='mso-spacerun:yes'>  </span></td>
  <td class=xl12126149 style='border-left:none'><Center></Center></td>
  <td colspan=2 class=xl16226149 style='border-right:.5pt solid black;
  border-left:none'>PM<span style='mso-spacerun:yes'>  </span></td>
  <td class=xl12126149 style='border-left:none'><Center>X</Center></td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>All
  Day<span style='mso-spacerun:yes'>  </span></td>
  <td class=xl12126149 style='border-left:none'>&nbsp;</td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>Night<span
  style='mso-spacerun:yes'>  </span></td>
  <td class=xl12126149 style='border-left:none'>&nbsp;</td>
  <td class=xl6326149></td>
  
  
  <td class=xl12026149 colspan=4>CLASS PERIOD<span style='mso-spacerun:yes'>  </span></td>
  <td class=xl6326149></td>
  <td class=xl7426149>&nbsp;</td>
  
  <td class=xl7326149>TO</td>
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
  <td class=xl6926149 style='border-left:none'>1</td>
  <td class=xl7026149 style='border-left:none'>2</td>
  <td class=xl7026149 style='border-left:none'>3</td>
  <td class=xl7026149 style='border-left:none'>4</td>
  <td class=xl7026149 style='border-left:none'>5</td>
  <td class=xl7026149 style='border-left:none'>6</td>
  <td class=xl7026149 style='border-left:none'>7</td>
  <td class=xl7026149 style='border-left:none'>8</td>
  <td class=xl7026149 style='border-left:none'>9</td>
  <td class=xl7026149 style='border-left:none'>10</td>
  <td class=xl7026149 style='border-left:none'>11</td>
  <td class=xl7026149 style='border-left:none'>12</td>
  <td class=xl7026149 style='border-left:none'>13</td>
  <td class=xl7026149 style='border-left:none'>14</td>
  <td class=xl7026149 style='border-left:none'>15</td>
  <td class=xl7026149 style='border-left:none'>16</td>
  <td class=xl7026149 style='border-left:none'>17</td>
  <td class=xl7026149 style='border-left:none'>18</td>
  <td class=xl7026149 style='border-left:none'>19</td>
  <td class=xl7026149 style='border-left:none'>20</td>
  <td class=xl7026149 style='border-left:none'>21</td>
  <td class=xl7026149 style='border-left:none'>22</td>
  <td class=xl7026149 style='border-left:none'>23</td>
  <td class=xl7026149 style='border-left:none'>24</td>
  <td class=xl7026149 style='border-left:none'>25</td>
  <td class=xl7026149 style='border-left:none'>26</td>
  <td class=xl7026149 style='border-left:none'>27</td>
  <td class=xl7026149 style='border-left:none'>28</td>
  <td class=xl7026149 style='border-left:none'>29</td>
  <td class=xl7026149 style='border-left:none'>30</td>
  <td class=xl7126149 style='border-left:none'>31</td>
  <td colspan=2 rowspan=2 class=xl15126149 width=52 style='border-right:.5pt solid black;
  border-bottom:1.5pt solid black;width:40pt'>Ttl Days Attended</td>
  <td colspan=2 rowspan=2 class=xl15526149 width=52 style='border-right:.5pt solid black;
  border-bottom:1.5pt solid black;width:40pt'>Ttl Hrs Attended</td>
 </tr>
 <tr class=xl6526149 height=18 style='height:13.5pt'>
  <td height=18 class=xl6526149 style='height:13.5pt'></td>
  <td class=xl11326149>Y/N</td>
  <td class=xl9426149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9626149 style='border-left:none'>&nbsp;</td>
 </tr>

<%
	dim strDetail
	dim strStatus
	dim strCheckpm 
	dim rsDetail
	dim rsStatus	
	dim rsCheckpm
	dim rsHourpull
	dim strHourpull
	dim intAddHours

	Set rsHourpull = Server.CreateObject("ADODB.Recordset")
	intAddHours = 0

	strDetail = "SELECT DISTINCT m.dc_number, Last_Name, first_name, subject  FROM Master_Roster m INNER JOIN attend_pm_"&strClass&" a ON a.dc_number = m.dc_number WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    "AND Subject LIKE '%" & Session("Class") & "%' ORDER BY Last_Name, First_Name"

	
	Set rsDetail = Server.CreateObject("ADODB.Recordset")
	

	rsDetail.Open strDetail, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
%>

 <tr height=21 style='mso-height-source:userset;height:10.95pt'>
  <td height=21 class=xl9726149 style='height:10.95pt'>1</td>
  <td colspan=7 class=xl15926149 style='border-right:.5pt solid black;border-left:none'>

<% 	
	If Not rsDetail.EOF Then

	  Response.Write "" & rsDetail("Last_Name") & ", " & rsDetail("First_Name") & ""

	Else

	  Response.Write "&nbsp;"

	End If

	Response.Write 	"</td>" & _
  			"<td colspan=3 class=xl14226149 style='border-left:none'>"

	If Not rsDetail.EOF Then	

	strCheckpm = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'LP'"

		Set rsCheckpm = Server.CreateObject("ADODB.Recordset")

		rsCheckpm.Open strCheckpm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText		
	
	Response.Write "" & rsDetail("dc_number") & ""

	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Electronics" _
	OR Session("Class") = "Automotive" Then  

		If rsCheckpm("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(2)</B>"

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

		strHourpull = "SELECT Hours From ClassPM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + rsHourpull("Hours")

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

		strHourpull = "SELECT Hours From ClassPM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + rsHourpull("Hours")

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

	  If rsCheckpm("") >= 1 Then

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

		rsCheckpm.Close

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

		strCheckpm = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'LP'"

		Set rsCheckpm = Server.CreateObject("ADODB.Recordset")

		rsCheckpm.Open strCheckpm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write "" & rsDetail("dc_number") & ""


	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Electronics" _
	OR Session("Class") = "Automotive" Then 

		If rsCheckpm("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(2)</B>"

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

		strHourpull = "SELECT Hours From ClassPM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + rsHourpull("Hours")

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

		strHourpull = "SELECT Hours From ClassPM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + rsHourpull("Hours")

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

	  		If rsCheckpm("") >= 1 Then

				dayTotal = rsDays("")	
	
				Response.Write dayTotal 

	  		Else 

				Response.Write "" & rsDays("") & ""

	  		End If
			

  			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>"

				Response.Write intAddHours

				rsCheckpm.Close

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

		strCheckpm = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'LP'"

		Set rsCheckpm = Server.CreateObject("ADODB.Recordset")

		rsCheckpm.Open strCheckpm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
	Response.Write "" & rsDetail("dc_number") & ""


	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Electronics" _
	OR Session("Class") = "Automotive" Then  

		If rsCheckpm("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(2)</B>"

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

For cellCounter = 1 to 30

   Response.Write "<td class=xl9226149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = cellCounter Then

	  	Response.Write rsStatus("Status_pm") 

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

		strHourpull = "SELECT Hours From ClassPM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + rsHourpull("Hours")

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

	  		If rsCheckpm("") >= 1 Then

				dayTotal = rsDays("")	
	
				Response.Write dayTotal 

	  		Else 

				Response.Write "" & rsDays("") & ""

	  		End If
			

  			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>"

				Response.Write intAddHours

				rsCheckpm.Close

			Else

			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>&nbsp;"

			End If

			Response.Write "</td></tr>"

%>


 <tr height=21 style='mso-height-source:userset;height:10.95pt'>
  <td colspan=12 height=21 class=xl13626149 style='border-right:1.5pt solid black;
  height:10.95pt'>TOTAL MEMBERSHIP EACH DAY</td>
  <td class=xl8326149 style='border-left:none'>
<%
	dim wDay, total_Membership_count, daily_Membership_count

	wDay = Weekday(""&Session("Month3")&"/1/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	dim rsMember
	dim strMember

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

        daily_Membership_count = rsMember("")

        total_Membership_count = daily_membership_count

	Else

	Response.Write "&nbsp"

	End If

        
        
        
        

%>


</td>
  <td class=xl8426149 style='border-left:none'>

<%
	

	wDay = Weekday(""&Session("Month3")&"/2/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/2/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""



	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_membership_count

	Else

	Response.Write "&nbsp;"

	End If

        
	
        



%>
</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/3/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/3/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count

	Else

	Response.Write "&nbsp;"

	End If

       

        
%>
</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/4/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/4/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 
        
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
        
        Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count



	Else

	Response.Write "&nbsp;"
         
 
        

	End If

        
       
        

       

%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/5/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/5/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

        daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count

	Else

	Response.Write "&nbsp;"

	End If

       
        
        
      

%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/6/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/6/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


       daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count



	Else

	Response.Write "&nbsp;"

	End If

         



%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/7/"&Session("Year")&"")

        


	If wDay <> "1" AND wDay <> "7" Then

       
	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/7/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count



	Else

	Response.Write "&nbsp;"

	End If
	 
        
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/8/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/8/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""



	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count



	Else

	Response.Write "&nbsp;"

	End If
 	

	 


        

%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/9/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/9/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


        daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count

	Else


        


	Response.Write "&nbsp;"

	End If

        
	 
        

        
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/10/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/10/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

          
         

       


%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/11/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/11/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

        end if


	  
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/12/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/12/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If



          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/13/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/13/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "
 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

       
          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/14/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/14/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/15/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/15/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/16/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/16/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 


	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

         
        
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/17/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/17/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 


	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/18/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/18/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/19/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/19/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""



	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count

	Else

	Response.Write "&nbsp;"

	End If


          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/20/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/20/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


         
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/21/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/21/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If  
   


           
         
%>
</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/22/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/22/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "


	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/23/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/23/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


	  
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/24/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/24/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If



	  
         
%>
</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/25/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/25/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


	  
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/26/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/26/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If



	  
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/27/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/27/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


	  
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/28/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/28/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


	  
         
%>



</td>
  <td class=xl8426149 style='border-left:none'>
<%

	If Session("Days3") > 28 Then
	

	wDay = Weekday(""&Session("Month3")&"/29/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/29/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

	Else

	Response.Write "&nbsp;"

	End If
	
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	If Session("Days3") > 28 And Session("Days3") <> 29 Then

	wDay = Weekday(""&Session("Month3")&"/30/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/30/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

	Else

	Response.Write "&nbsp;"

	End If
         
%>

</td>


  <td class=xl8426149 style='border-left:none'>


<%
	If Session("Days3") > 30 Then
	

	wDay = Weekday(""&Session("Month3")&"/31/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/31/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

        Else

	Response.Write "&nbsp;"

	End If
	  
         
       



%>

</td>
  
  <td colspan=4 class=xl16326149 width=104 style='border-left:1.5pt solid black;  height:10.95pt' style='border-right:.5pt solid black; width:80pt'>


<%

        
<!--This line of code is the total_Membership_count to fill-in the Total Membership Column; obtained by adding all daily membership columns  using the variables-->
<!--total_Membership_count + daily_Membership_count in the previous lines of code-->
        

        

	IF total_Membership_count <> 0 THEN

	Response.Write  total_Membership_count & "</Center>"
        

        ELSE

        Response.Write 0

        END IF

	total_membership_count = "0"
        

%>




</td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:10.95pt'>
  <td colspan=12 height=21 class=xl13926149 style='border-right:1.5pt solid black;
  height:10.95pt'>TOTAL PRESENT EACH DAY</td>
  <td class=xl8626149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/1/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>


</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/2/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/2/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/2/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/2/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/3/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/3/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/3/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/3/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' "  

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/4/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/4/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/4/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/4/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/5/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/5/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/5/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/5/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/6/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/6/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/6/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/6/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/7/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/7/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/7/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/7/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/8/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/8/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/8/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/8/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/9/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/9/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/9/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/9/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/10/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/10/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P'  AND Subject LIKE '%" & Session("Class") & "%'" & _
                    ""  & _
                    "OR class_date_pm = '"&Session("Month3")&"/10/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/10/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 





	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/11/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/11/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/11/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/11/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/12/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/12/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/12/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/12/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/13/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/13/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/13/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/13/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/14/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/14/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/14/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/14/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/15/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/15/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/15/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/15/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/16/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then
	
	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/16/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/16/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/16/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/17/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/17/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/17/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/17/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/18/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/18/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/18/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/18/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/19/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/19/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/19/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/19/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/20/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/20/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/20/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/20/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/21/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/21/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/21/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/21/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If


%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/22/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then
	
	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/22/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/22/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/22/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/23/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then
	
	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/23/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/23/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/23/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/24/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/24/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/24/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/24/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/25/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/25/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/25/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/25/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/26/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/26/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/26/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/26/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/27/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/27/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/27/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/27/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/28/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/28/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/28/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/28/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	If Session("Days3") > 28 Then

	wDay = Weekday(""&Session("Month3")&"/29/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/29/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/29/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/29/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

	Else

	Response.Write "&nbsp;"
	
	End If

%>

</td>

  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	If Session("Days3") > 28 And Session("Days3") <> 29 Then

	wDay = Weekday(""&Session("Month3")&"/30/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/30/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/30/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/30/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>

  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	If Session("Days3") > 30 Then

	wDay = Weekday(""&Session("Month3")&"/31/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/31/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"
	
	End If

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  
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

%>

</td>
 </tr>
 <tr class=xl10426149 height=17 style='height:12.75pt'>
  <td height=17 class=xl10126149 colspan=7 style='height:12.75pt'>ATTENDANCE & ENROLLMENT CODES:</td>
  
  <td class=Middle colspan=18><B>E</b>=ENTRY; <B>P</b>=PRESENT; <B>LP</B>=LATE/PRESENT; <B>A</B>=ABSENT; <B>LA</B>=LATE/ABSENT; 
   <B>X</B>=NO CLASS SESSION;

  <TD>&nbsp;
  <td class=Middle colspan=4>STATUS CODES:</td>
  <td class=Middle colspan=15><B>ADC</B>=ADMINISTRATIVE CHANGE; <B>ATT</B>=ATTAINED EDUCATIONAL OBJECTIVE</TD>
  <td class=xl10426149>&nbsp;</td>
  <td class=xl10426149>&nbsp;</td>
  <td class=End>&nbsp;</td>
 </tr>

 <tr class=xl10426149 height=15 style='height:11.25pt'>
  <td height=15 class=Bottom colspan=44 style='height:11.25pt'><B>CMP</B> = COMPLETED; CXS = COMPLETED / NOT REQUIRED SCORES; ENR
   = ENROLLED; NLH = NO LONGER HOUSED; REF = REFUSED; RMV = REMOVED / BEHAVIOR; RSD = REMOVED SECURITY/INST. NEEDS;
  WTD = WITHDRAWAL / ED STAFF</font></td>
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
 		    " AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    " AND Subject LIKE '%" & Session("Class") & "%' AND status_pm = 'E'" & _
            " Or class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    " AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    " AND Subject LIKE '%" & Session("Class") & "%' AND status_pm = 'P'" & _
            " Or class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    " AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    " AND Subject LIKE '%" & Session("Class") & "%' AND status_pm = 'A'" 


               
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
        

       total_class_days = rsMember("")

       Response.Write "<Center>" & rsMember("") & "</Center>"


%>
</td>
  <TD>&nbsp;</td>
  <TD>&nbsp;</td>
  <td class=xl6726149 colspan=10>TOTAL STUDENT ATTEND. DAYS / MONTH:</td>

  <td colspan=2 class=xl12326149>


<%
        <!--This line of code is to fill-in the Total Student Attend Days/Month  Bottom-Middle of form; -->
        <!--Using information stored in the variable Total_Present declared and filled from the total -->
        <!--present each day SQL run; -->


	
	Response.Write "<Center>" & Total_present & "</Center>"
        
%>

</td>

  <td>&nbsp;</td>

  <td class=xl6726149 colspan=18>AVERAGE DAILY ATTENDANCE(Total Student Attendance Days divided by Total Class Days):</td>

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

DC5-149 (Revised 9/23/11)

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

<div id="January - AM_26149" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=500 class=xl6326149
 style='border-collapse:collapse;table-layout:fixed;width:500pt'>

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
  </span>#307</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td class=xl7226149 colspan=3><span style='mso-spacerun:yes'> </span>TEACHER</td>
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
  <td class=xl7426149 colspan=6><%=rsTeacher("Class")%></td>
  <td class=xl7426149>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>


  <td class=xl7226149 colspan=5><span style='mso-spacerun:yes'>   </span>COURSE CODE</td>
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
  %>

</td>
  <td class=xl7426149>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
   


  
  <td class=xl7226149 colspan=3>SECTION</td>
  <td class=xl7426149 colspan=5> 
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
		
		Response.Write "Z"

	End If

    If Session("Class") = "Y5" Then
		
		Response.Write "X"

	End If

    If Session("Class") = "Horticulture" Then
		
		Response.Write "2"

	End If

	If Session("Class") = "Youth-Masonry" Then
		
		Response.Write "A"

	End If

	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Electronics" _
	OR Session("Class") = "Automotive" Then 
		
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
  
  <td class=xl12026149 colspan=5>CLASS SESSION<span style='mso-spacerun:yes'>  </span></td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>AM<span
  style='mso-spacerun:yes'>  </span></td>
  <td class=xl12126149 style='border-left:none'><Center></Center></td>
  <td colspan=2 class=xl16226149 style='border-right:.5pt solid black;
  border-left:none'>PM<span style='mso-spacerun:yes'>  </span></td>
  <td class=xl12126149 style='border-left:none'><Center>X</Center></td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>All
  Day<span style='mso-spacerun:yes'>  </span></td>
  <td class=xl12126149 style='border-left:none'>&nbsp;</td>
  <td colspan=2 class=xl15726149 style='border-right:.5pt solid black'>Night<span
  style='mso-spacerun:yes'>  </span></td>
  <td class=xl12126149 style='border-left:none'>&nbsp;</td>
  <td class=xl6326149></td>
  
  
  <td class=xl12026149 colspan=4>CLASS PERIOD<span style='mso-spacerun:yes'>  </span></td>
  <td class=xl6326149></td>
  <td class=xl7426149>&nbsp;</td>
  
  <td class=xl7326149>TO</td>
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
  <td class=xl6926149 style='border-left:none'>1</td>
  <td class=xl7026149 style='border-left:none'>2</td>
  <td class=xl7026149 style='border-left:none'>3</td>
  <td class=xl7026149 style='border-left:none'>4</td>
  <td class=xl7026149 style='border-left:none'>5</td>
  <td class=xl7026149 style='border-left:none'>6</td>
  <td class=xl7026149 style='border-left:none'>7</td>
  <td class=xl7026149 style='border-left:none'>8</td>
  <td class=xl7026149 style='border-left:none'>9</td>
  <td class=xl7026149 style='border-left:none'>10</td>
  <td class=xl7026149 style='border-left:none'>11</td>
  <td class=xl7026149 style='border-left:none'>12</td>
  <td class=xl7026149 style='border-left:none'>13</td>
  <td class=xl7026149 style='border-left:none'>14</td>
  <td class=xl7026149 style='border-left:none'>15</td>
  <td class=xl7026149 style='border-left:none'>16</td>
  <td class=xl7026149 style='border-left:none'>17</td>
  <td class=xl7026149 style='border-left:none'>18</td>
  <td class=xl7026149 style='border-left:none'>19</td>
  <td class=xl7026149 style='border-left:none'>20</td>
  <td class=xl7026149 style='border-left:none'>21</td>
  <td class=xl7026149 style='border-left:none'>22</td>
  <td class=xl7026149 style='border-left:none'>23</td>
  <td class=xl7026149 style='border-left:none'>24</td>
  <td class=xl7026149 style='border-left:none'>25</td>
  <td class=xl7026149 style='border-left:none'>26</td>
  <td class=xl7026149 style='border-left:none'>27</td>
  <td class=xl7026149 style='border-left:none'>28</td>
  <td class=xl7026149 style='border-left:none'>29</td>
  <td class=xl7026149 style='border-left:none'>30</td>
  <td class=xl7126149 style='border-left:none'>31</td>
  <td colspan=2 rowspan=2 class=xl15126149 width=52 style='border-right:.5pt solid black;
  border-bottom:1.5pt solid black;width:40pt'>Ttl Days Attended</td>
  <td colspan=2 rowspan=2 class=xl15526149 width=52 style='border-right:.5pt solid black;
  border-bottom:1.5pt solid black;width:40pt'>Ttl Hrs Attended</td>
 </tr>
 <tr class=xl6526149 height=18 style='height:13.5pt'>
  <td height=18 class=xl6526149 style='height:13.5pt'></td>
  <td class=xl11326149>Y/N</td>
  <td class=xl9426149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9526149 style='border-left:none'>&nbsp;</td>
  <td class=xl9626149 style='border-left:none'>&nbsp;</td>
 </tr>

 <tr height=21 style='mso-height-source:userset;height:10.95pt'>
  <td height=21 class=xl9726149 style='height:10.95pt'>26</td>
  <td colspan=7 class=xl15926149 style='border-right:.5pt solid black;border-left:none'>

<% 
	intAddHours = 0
	
	If Not rsDetail.EOF Then

	  Response.Write "" & rsDetail("Last_Name") & ", " & rsDetail("First_Name") & ""

	Else

	  Response.Write "&nbsp;"

	End If

	Response.Write 	"</td>" & _
  			"<td colspan=3 class=xl14226149 style='border-left:none'>"

	If Not rsDetail.EOF Then	

	strCheckpm = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'LP'"

		Set rsCheckpm = Server.CreateObject("ADODB.Recordset")

		rsCheckpm.Open strCheckpm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText		
	
	Response.Write "" & rsDetail("dc_number") & ""

	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Electronics" _
	OR Session("Class") = "Automotive" Then  

		If rsCheckpm("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(2)</B>"

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

		strHourpull = "SELECT Hours From ClassPM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + rsHourpull("Hours")

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

		strHourpull = "SELECT Hours From ClassPM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + rsHourpull("Hours")

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

	  If rsCheckpm("") >= 1 Then

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

		rsCheckpm.Close

	End If
%>

</td>
 </tr>

<%
For bigCounter = 27 to 49
 	
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

		strCheckpm = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'LP'"

		Set rsCheckpm = Server.CreateObject("ADODB.Recordset")

		rsCheckpm.Open strCheckpm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText	


	Response.Write "" & rsDetail("dc_number") & ""


	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Electronics" _
	OR Session("Class") = "Automotive" Then 

		If rsCheckpm("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(2)</B>"

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

		strHourpull = "SELECT Hours From ClassPM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + rsHourpull("Hours")

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

		strHourpull = "SELECT Hours From ClassPM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + rsHourpull("Hours")

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

	  		If rsCheckpm("") >= 1 Then

				dayTotal = rsDays("")	
	
				Response.Write dayTotal 

	  		Else 

				Response.Write "" & rsDays("") & ""

	  		End If
			

  			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>"

				Response.Write intAddHours

				rsCheckpm.Close

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

		strCheckpm = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'P'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'E'" & _
			     "OR dc_number = '" & rsDetail("dc_number") & "'" & _
	   	     	     "AND class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"' AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
			     "AND status_pm = 'LP'"

		Set rsCheckpm = Server.CreateObject("ADODB.Recordset")

		rsCheckpm.Open strCheckpm, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
	
	Response.Write "" & rsDetail("dc_number") & ""


	If Session("Class") = "Masonry" OR Session("Class") = "Youth-Masonry" OR Session("Class") = "Electronics" _
	OR Session("Class") = "Automotive" Then  

		If rsCheckpm("") >= "1" Then

			Response.Write "&nbsp;<B>(1)</B>"

		Else

			Response.Write "&nbsp;<B>(2)</B>"

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

For cellCounter = 1 to 30

   Response.Write "<td class=xl9226149 style='border-left:none'>"
	
     If Not rsDetail.EOF Then

	If Not rsStatus.EOF Then

	   intDate = rsStatus("Class_Date_pm")
	   intDateCheck = day(intDate)

	    If intDateCheck = cellCounter Then

	  	Response.Write rsStatus("Status_pm") 

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

		strHourpull = "SELECT Hours From ClassPM_Hours WHERE Date = '"& rsStatus("Class_Date_pm") & "' AND Class = '"& strComp &"'"
		rsHourpull.Open strHourpull, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText


		If rsStatus("Status_pm") = "P" OR rsStatus("Status_pm") = "E" Then

		   If Not rsHourpull.EOF Then

		      If rsHourpull("Hours") > 0 And rsHourpull("Hours") <> "" And IsNull(rsHourpull("Hours")) = false Then

			intAddHours = intAddHours + rsHourpull("Hours")

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

	  		If rsCheckpm("") >= 1 Then

				dayTotal = rsDays("")	
	
				Response.Write dayTotal 

	  		Else 

				Response.Write "" & rsDays("") & ""

	  		End If
			

  			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>"

				Response.Write intAddHours

				rsCheckpm.Close

			Else

			Response.Write "</td>" & _
  		 			"<td colspan=2 class=xl12926149 style='border-right:.5pt solid black'>&nbsp;"

			End If

			Response.Write "</td></tr>"

%>


 <tr height=21 style='mso-height-source:userset;height:10.95pt'>
  <td colspan=12 height=21 class=xl13626149 style='border-right:1.5pt solid black;
  height:10.95pt'>TOTAL MEMBERSHIP EACH DAY</td>
  <td class=xl8326149 style='border-left:none'>
<%

	wDay = Weekday(""&Session("Month3")&"/1/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

        daily_Membership_count = rsMember("")

        total_Membership_count = daily_membership_count

	Else

	Response.Write "&nbsp"

	End If

        
        
        
        

%>


</td>
  <td class=xl8426149 style='border-left:none'>

<%
	

	wDay = Weekday(""&Session("Month3")&"/2/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/2/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""



	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_membership_count

	Else

	Response.Write "&nbsp;"

	End If

        
	
        



%>
</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/3/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/3/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count

	Else

	Response.Write "&nbsp;"

	End If

       

        
%>
</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/4/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/4/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 
        
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
        
        Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count



	Else

	Response.Write "&nbsp;"
         
 
        

	End If

        
       
        

       

%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/5/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/5/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

        daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count

	Else

	Response.Write "&nbsp;"

	End If

       
        
        
      

%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/6/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/6/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


       daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count



	Else

	Response.Write "&nbsp;"

	End If

         



%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/7/"&Session("Year")&"")

        


	If wDay <> "1" AND wDay <> "7" Then

       
	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/7/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count



	Else

	Response.Write "&nbsp;"

	End If
	 
        
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/8/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/8/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""



	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count



	Else

	Response.Write "&nbsp;"

	End If
 	

	 


        

%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/9/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/9/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


        daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count

	Else


        


	Response.Write "&nbsp;"

	End If

        
	 
        

        
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/10/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/10/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

          
         

       


%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/11/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/11/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

        end if


	  
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/12/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/12/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If



          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/13/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/13/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "
 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

       
          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/14/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/14/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/15/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/15/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/16/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/16/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 


	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

         
        
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/17/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/17/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 


	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/18/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/18/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/19/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/19/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""



	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count

	Else

	Response.Write "&nbsp;"

	End If


          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/20/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/20/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


         
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/21/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/21/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If  
   


           
         
%>
</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/22/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/22/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "


	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


          
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/23/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/23/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


	  
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/24/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/24/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If



	  
         
%>
</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/25/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/25/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


	  
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/26/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/26/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If



	  
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/27/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/27/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


	  
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	

	wDay = Weekday(""&Session("Month3")&"/28/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/28/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If


	  
         
%>



</td>
  <td class=xl8426149 style='border-left:none'>
<%

	If Session("Days3") > 28 Then
	

	wDay = Weekday(""&Session("Month3")&"/29/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/29/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

	Else

	Response.Write "&nbsp;"

	End If
	
         
%>

</td>
  <td class=xl8426149 style='border-left:none'>
<%
	If Session("Days3") > 28 And Session("Days3") <> 29 Then

	wDay = Weekday(""&Session("Month3")&"/30/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/30/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

	Else

	Response.Write "&nbsp;"

	End If
         
%>

</td>


  <td class=xl8426149 style='border-left:none'>


<%
	If Session("Days3") > 30 Then
	

	wDay = Weekday(""&Session("Month3")&"/31/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/31/"&Session("Year")&"'" & _
 		    "AND status_pm <> ''  AND status_pm <> 'H' AND status_pm <> 'ADC' AND status_pm <> 'ATT' AND status_pm <> 'CMP'" & _
                    "AND status_pm <> 'CXS' AND status_pm <> 'REF' AND status_pm <> 'WTD'" & _
                    "AND status_pm <> 'RMV' AND status_pm <> 'RSD'" & _
                    "AND status_pm <> 'NLH' AND Subject LIKE '%" & Session("Class") & "%' "

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""


	daily_Membership_count = rsMember("")

        total_Membership_count = total_Membership_count  + daily_Membership_count


	Else

	Response.Write "&nbsp;"

	End If

        Else

	Response.Write "&nbsp;"

	End If
	  
         
       



%>

</td>
  
  <td colspan=4 class=xl16326149 width=104 style='border-left:1.5pt solid black;  height:10.95pt' style='border-right:.5pt solid black; width:80pt'>


<%

        
<!--This line of code is the total_Membership_count to fill-in the Total Membership Column; obtained by adding all daily membership columns  using the variables-->
<!--total_Membership_count + daily_Membership_count in the previous lines of code-->
        

        

	IF total_Membership_count <> 0 THEN

	Response.Write  total_Membership_count & "</Center>"
        

        ELSE

        Response.Write 0

        END IF

	total_membership_count = "0"
        

%>




</td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:10.95pt'>
  <td colspan=12 height=21 class=xl13926149 style='border-right:1.5pt solid black;
  height:10.95pt'>TOTAL PRESENT EACH DAY</td>
  <td class=xl8626149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/1/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then


	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>


</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/2/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/2/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/2/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/2/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/3/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/3/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/3/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/3/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' "  

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/4/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/4/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/4/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/4/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/5/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/5/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/5/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/5/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/6/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/6/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/6/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/6/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/7/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/7/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/7/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/7/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/8/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/8/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/8/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/8/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/9/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/9/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/9/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/9/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/10/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/10/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P'  AND Subject LIKE '%" & Session("Class") & "%'" & _
                    ""  & _
                    "OR class_date_pm = '"&Session("Month3")&"/10/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/10/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 





	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/11/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/11/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/11/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/11/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/12/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/12/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/12/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/12/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/13/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/13/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/13/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/13/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/14/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/14/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/14/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/14/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/15/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/15/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/15/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/15/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/16/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then
	
	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/16/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/16/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/16/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/17/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/17/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/17/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/17/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/18/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/18/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/18/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/18/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/19/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/19/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/19/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/19/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/20/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/20/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/20/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/20/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/21/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/21/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/21/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/21/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If


%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/22/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then
	
	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/22/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/22/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/22/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/23/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then
	
	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/23/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/23/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/23/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/24/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/24/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/24/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/24/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/25/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/25/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/25/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/25/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/26/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/26/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/26/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/26/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/27/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/27/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/27/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/27/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	wDay = Weekday(""&Session("Month3")&"/28/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/28/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/28/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/28/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	If Session("Days3") > 28 Then

	wDay = Weekday(""&Session("Month3")&"/29/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/29/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/29/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/29/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

	Else

	Response.Write "&nbsp;"
	
	End If

%>

</td>

  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	If Session("Days3") > 28 And Session("Days3") <> 29 Then

	wDay = Weekday(""&Session("Month3")&"/30/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/30/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/30/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/30/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"

	End If

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>

  <td class=xl8726149 style='border-top:none;border-left:none'>
<%
	If Session("Days3") > 30 Then

	wDay = Weekday(""&Session("Month3")&"/31/"&Session("Year")&"")

	If wDay <> "1" AND wDay <> "7" Then

	strMember = "SELECT COUNT(status_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm = '"&Session("Month3")&"/31/"&Session("Year")&"'" & _
 		    "AND status_pm = 'P' AND Subject LIKE '%" & Session("Class") & "%' "  & _
                    "OR class_date_pm = '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                    "AND status_pm = 'E' AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "OR class_date_pm = '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
                    "AND status_pm = 'LP' AND Subject LIKE '%" & Session("Class") & "%' " 

	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText

	Response.Write "" & rsMember("") & ""

	Else

	Response.Write "&nbsp;"
	
	End If

	Else

	Response.Write "&nbsp;"

	End If

%>

</td>
  
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

%>

</td>
 </tr>
 <tr class=xl10426149 height=17 style='height:12.75pt'>
  <td height=17 class=xl10126149 colspan=7 style='height:12.75pt'>ATTENDANCE & ENROLLMENT CODES:</td>
  
  <td class=Middle colspan=18><B>E</b>=ENTRY; <B>P</b>=PRESENT; <B>LP</B>=LATE/PRESENT; <B>A</B>=ABSENT; <B>LA</B>=LATE/ABSENT; 
   <B>X</B>=NO CLASS SESSION;

  <TD>&nbsp;
  <td class=Middle colspan=4>STATUS CODES:</td>
  <td class=Middle colspan=15><B>ADC</B>=ADMINISTRATIVE CHANGE; <B>ATT</B>=ATTAINED EDUCATIONAL OBJECTIVE</TD>
  <td class=xl10426149>&nbsp;</td>
  <td class=xl10426149>&nbsp;</td>
  <td class=End>&nbsp;</td>
 </tr>

 <tr class=xl10426149 height=15 style='height:11.25pt'>
  <td height=15 class=Bottom colspan=44 style='height:11.25pt'><B>CMP</B> = COMPLETED; CXS = COMPLETED / NOT REQUIRED SCORES; ENR
   = ENROLLED; NLH = NO LONGER HOUSED; REF = REFUSED; RMV = REMOVED / BEHAVIOR; RSD = REMOVED SECURITY/INST. NEEDS;
  WTD = WITHDRAWAL / ED STAFF</font></td>
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

        strMember = "SELECT COUNT(DISTINCT class_date_pm) FROM attend_pm_"&strClass&" WHERE class_date_pm >= '"&Session("Month3")&"/1/"&Session("Year")&"'" & _
 		    "AND class_date_pm <= '"&Session("Month3")&"/"&Session("Days3")&"/"&Session("Year")&"'" & _
		    "AND Subject LIKE '%" & Session("Class") & "%' " & _
                    "AND status_pm <> 'X'" & _
                    "AND status_pm <> '' AND status_pm <> 'H' AND Status_pm <> 'RSD' AND Status_pm <> 'RMV' AND Status_pm <> 'CMP' AND Status_pm <> 'ADC' AND Status_pm <> 'NLH'"
                    
	Set rsMember = Server.CreateObject("ADODB.Recordset")
	rsMember.Open strMember, eduConn, adOpenForwardOnly, adLockReadOnly, adCmdText
        

       total_class_days = rsMember("")

       Response.Write "<Center>" & rsMember("") & "</Center>"


%>
</td>
  <TD>&nbsp;</td>
  <TD>&nbsp;</td>
  <td class=xl6726149 colspan=10>TOTAL STUDENT ATTEND. DAYS / MONTH:</td>

  <td colspan=2 class=xl12326149>


<%
        <!--This line of code is to fill-in the Total Student Attend Days/Month  Bottom-Middle of form; -->
        <!--Using information stored in the variable Total_Present declared and filled from the total -->
        <!--present each day SQL run; -->


	
	Response.Write "<Center>" & Total_present & "</Center>"
        
%>

</td>

  <td>&nbsp;</td>

  <td class=xl6726149 colspan=18>AVERAGE DAILY ATTENDANCE(Total Student Attendance Days divided by Total Class Days):</td>

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

DC5-149 (Revised 9/23/11)

<% 
	End If 

	rsTeacher.Close
	rsDetail.Close
	rsMember.Close
	Set rsCheckpm = Nothing
	Set rsDetail = Nothing
	Set rsTeacher = Nothing
	Set rsMember = Nothing
	
%>
</body>
</html>




