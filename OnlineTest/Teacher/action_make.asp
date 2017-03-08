<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../conn.asp"-->
<%
	courseIDID=session("courseIDID")
	problem=trim(request.Form("problem"))
	sql_1="Insert into [test] (courseID,t,question) values('" & courseIDID & "','填空题','" & problem & "')"
	conn.execute sql_1
	Response.Write "<script language='javascript'>alert('出题成功,继续下一题!');window.location.href='make.asp';</script>"
%>
