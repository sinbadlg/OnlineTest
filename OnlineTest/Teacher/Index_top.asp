<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
<link rel="stylesheet" type="text/css" href="../Style.css">
<style type="text/css">
<!--
body {
	background-color: #58CCE9;
}
-->
</style>
</head>
<body>
<table width="100%">
	<tr>
		<td height="30" colspan="5" style="font-size:24px; font-weight:bold; text-align:center;">在线考试系统</td>
	</tr>
	<tr>
	  <td width="200"></td>
		<td align="center" width="100"><a href="Index_main.asp" target="main">【首页】</a></td>
		<td align="center" width="100">
        <% 
			if Session("teacherID") <> "" then
				response.Write "<a href='../password/pwd_tea.asp' target='_blank'>【修改密码】</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("teacherID") <> "" then
				response.Write "<a href='exam_read.asp' target='main'>【在线阅卷】</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("teacherID") <> "" then
				response.Write "<a href='exam_paper.asp' target='main'>【在线出卷】</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("teacherID") <> "" then
				response.Write "<a href='../Exam/exam_help.asp' target='main'>【帮助系统】</a>"
			end if
        %>
		</td>
		<td align="right">
		<%
			if Session("teacherID") <> "" then
				Response.Write "<a href='#' onClick=""if(confirm('你确定要注销登录吗？')) window.open('../Logout.asp','_self')"">【注销登录】</a>&nbsp;&nbsp;"
			end if
		%>
		</td>
	</tr>
</table>
</body>
</html>
