<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>在线出卷</title>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body topmargin="0" leftmargin="0">
<%
	collegege=Session("college")
	coursese=trim(request.Form("course"))
	starttimeme=trim(request.Form("starttime"))
	endtimeme=trim(request.Form("endtime"))
	timeme=trim(request.Form("timemm"))
	sql_1="Insert into [course] (course,college,starttime,endtime,[time]) values('" & coursese & "','" & college & "','" & starttimeme & "','" & endtimeme & "','" & timeme & "')"
	conn.execute sql_1
%>

<%
	set rs_2=server.CreateObject("ADODB.RecordSet")
	sql_2="select top 1 * from [course] order by ID desc"
	rs_2.open sql_2,conn,1,3
	session("courseIDID")=rs_2("ID")
	'session("courseIDID")=rs_1("ID")
%>
<form name="paper2" action="chose.asp" method="post">
<br><br><br>
<p align="center"><input type="submit" name="submit" align="middle" value="&nbsp;开&nbsp;始&nbsp;出&nbsp;题">
</form>
</body>
</html>
