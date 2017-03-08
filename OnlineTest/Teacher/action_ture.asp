<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../conn.asp"-->
<%
	courseIDID=session("courseIDID")
	problem=trim(request.Form("problem"))
	answerer=trim(request.Form("answer"))
	sql_1="Insert into [test] (courseID,t,question,choose1,choose2,answer) values('" & courseIDID & "','判断题','" & problem & "','对','错','" & answerer & "')"
	conn.execute sql_1
	Response.Write "<script language='javascript'>alert('出题成功,继续下一题!');window.location.href='ture.asp';</script>"
%>
