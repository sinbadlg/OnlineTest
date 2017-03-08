<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../conn.asp"-->
<%
	courseIDID=session("courseIDID")
	problem=trim(request.Form("problem"))
	AA=trim(request.Form("A"))
	BB=trim(request.Form("B"))
	CC=trim(request.Form("C"))
	DD=trim(request.Form("D"))
	answerer=trim(request.Form("answer"))
	sql_1="Insert into [test] (courseID,t,question,choose1,choose2,choose3,choose4,answer) values('" & courseIDID & "','选择题','" & problem & "','A." & AA & "','B." & BB & "','C." & CC & "','D." & DD & "','" & answerer & "')"
	conn.execute sql_1
	Response.Write "<script language='javascript'>alert('出题成功,继续下一题!');window.location.href='chose.asp';</script>"
%>
