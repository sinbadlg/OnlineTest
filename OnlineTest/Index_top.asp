<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
<link rel="stylesheet" type="text/css" href="Style.css">
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
		<td height="30" colspan="5" style="font-size:24px; font-weight:bold; text-align:center;">���߿���ϵͳ</td>
	</tr>
	<tr>
	  <td width="200"></td>
		<td align="center" width="100"><a href="Index_main.asp" target="main">����ҳ��</a></td>
		<td align="center" width="100">
        <% 
			if Session("studentID") <> "" then
				response.Write "<a href='password/pwd_stu.asp' target='_blank'>���޸����롿</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("studentID") <> "" then
				response.Write "<a href='Exam/exam_ready.asp' target='main'>����ʼ���ԡ�</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("studentID") <> "" then
				response.Write "<a href='Exam/exam_demand.asp' target='main'>�����Բ�ѯ��</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("studentID") <> "" then
				response.Write "<a href='Exam/exam_chengji.asp' target='main'>���ɼ���ѯ��</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("studentID") <> "" then
				response.Write "<a href='Exam/exam_help.asp' target='main'>������ϵͳ��</a>"
			end if
        %>
		</td>
		<td align="right">
		<%
			if Session("studentID") <> "" then
				Response.Write "<a href='#' onClick=""if(confirm('��ȷ��Ҫע����¼��')) window.open('Logout.asp','_self')"">��ע����¼��</a>&nbsp;&nbsp;"
			else
				Response.Write "<a href='Login.asp' target='main'>��������¼��</a>&nbsp;&nbsp;"
				Response.Write "<a href='Teacher/Login.asp' target='main'>����ʦ��½��</a>&nbsp;&nbsp;"
				Response.Write "<a href='Admin/Login.asp' target='main'>�������½��</a>&nbsp;&nbsp;"
			end if
		%>
		</td>
	</tr>
</table>
</body>
</html>
