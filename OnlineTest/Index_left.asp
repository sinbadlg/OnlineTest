<!--#include file="Conn.asp"-->
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
<br>
<table width="170" align="center" bgcolor="#FFFFFF" cellspacing="1" cellpadding="4" border="0">
	<tr>
    	<td>����ʱ���ǣ�
		<DIV id="linkweb"> </DIV>
    	<SCRIPT>
		setInterval("linkweb.innerHTML=new Date().toLocaleString()+' ����'+'��һ����������'.charAt(new Date().getDay());",1000);
        </SCRIPT>
        </td>
    </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
</table>
<table width="170" align="center" bgcolor="#FFFFFF" cellspacing="1" cellpadding="4" border="0">
	<tr>
    	<%if Session("studentID") <> "" then %>
		<td align="center"><strong>������Ϣ</strong></td>
        <% end if %>
	</tr>
	<tr>
		<td align="left" style="line-height:18px;">
<%if Session("studentID") <> "" then
set rs=Server.CreateObject("adodb.recordset")
rs.Open "select * from [student] where cstr(ID) = '"&Session("ID")&"'",conn,1,1
session("college_11")=rs("college")
%>
			����������<%=rs("name")%><br />
			&nbsp;&nbsp;ѧ&nbsp;&nbsp;�ţ�<%=rs("studentID")%><br />
			&nbsp;&nbsp;��&nbsp;&nbsp;��<%=rs("sex")%><br />
			����ѧԺ��<%=rs("college")%><br />
<%End if%>
			&nbsp;&nbsp;״&nbsp;&nbsp;̬��
			<%if Session("studentID") <> "" then
				Response.Write "<font color='blue'>�ѵ�¼</font>"
			else
				Response.Write "<font color='#BB7700'>δ��¼</font>"
			End if
			rs.close
			set rs=nothing%>
		</td>
	</tr>
</table>
<%if Session("studentID") <> "" then %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
</table>
<table width="170" align="center" bgcolor="#FFFFFF" cellspacing="1" cellpadding="4" border="0">
	<tr>
		<td align="center">
			<strong>������Ŀ</strong>
		</td>
	</tr>
    <tr>
		<td align="center">
		<%	
			Dim MyDate
			MyDate = Date
			set rs_exam=Server.CreateObject("adodb.recordset")
			rs_exam.Open "select * from [course] where cstr(starttime) = '"&MyDate&"' and college='" & session("college_11") & "'" ,conn,1,3
			session("exam_id")=rs_exam("ID")
			session("exam_time")=rs_exam("time")
			session("starttime")=rs_exam("starttime")
			session("course")=rs_exam("course")
		%>
        	�����Ծ�<% =rs_exam("course") %> <br />
            &nbsp;&nbsp;����ʱ�䣺<% =rs_exam("starttime") %> <br />
            ����ʱ�䣺<% =rs_exam("time") %>����&nbsp;
        </td>
	</tr>
</table>
<% end if %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
</table>
<table width="170" align="center" bgcolor="#FFFFFF" cellspacing="1" cellpadding="4" border="0">
	<tr>
    	<td>���߿���ϵͳASP�� v1.0 <br>
        С�� ����<br>
        @����������  QQ 1009086653
        </td>
    </tr>
</table>
</body>
</html>
