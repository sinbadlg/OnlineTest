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
		<td height="30" colspan="5" style="font-size:24px; font-weight:bold; text-align:center;">���߿���ϵͳ</td>
	</tr>
	<tr>
	  <td width="200"></td>
		<td align="center" width="100"><a href="Index_main.asp" target="main">����ҳ��</a></td>
		<td align="center" width="100">
        <% 
			if Session("managerID") <> "" then
				response.Write "<a href='../password/pwd_adm.asp' target='_blank'>���޸����롿</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("managerID") <> "" then
				response.Write "<a href='Student/adm_stu.asp' target='main'>��ѧ������</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("managerID") <> "" then
				response.Write "<a href='Teacher/adm_tea.asp' target='main'>����ʦ����</a>"
			end if
        %>
		</td>
         <td align="center" width="100">
        <% 
			if Session("managerID") <> "" then
				response.Write "<a href='Paper/adm_paper.asp' target='main'>���Ծ����</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("managerID") <> "" then
				response.Write "<a href='Score/adm_score.asp' target='main'>���ɼ�����</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("managerID") <> "" then
				response.Write "<a href='Message/adm_message.asp' target='main'>���������</a>"
			end if
        %>
		</td>
        <td align="center" width="100">
        <% 
			if Session("managerID") <> "" then
				response.Write "<a href='../Exam/exam_help.asp' target='main'>������ϵͳ��</a>"
			end if
        %>
		</td>
		<td align="right">
		<%
			if Session("managerID") <> "" then
				Response.Write "<a href='#' onClick=""if(confirm('��ȷ��Ҫע����¼��')) window.open('../Logout.asp','_self')"">��ע����¼��</a>&nbsp;&nbsp;"
			end if
		%>
		</td>
	</tr>
</table>
</body>
</html>
