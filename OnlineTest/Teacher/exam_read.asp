<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../conn.asp"-->
<%
getcollege = Session("college")
getteacherID = Session("teacherID")
If(getcollege = "" or getteacherID = "")Then
	Response.Write("��û�е�¼,�����µ�¼!")
	Response.End()
End If
%>
<html>
<head>
<Script Language=JavaScript>
	function onsubmit(id)
	{
		for (j=1;j<=rs_1_num;j++)
		{
		if (document.read.defen[j].value=="")
		{
			alert("��ȫ�����ֺ����ύ��");
			document.read.defen[j].focus();
			return false;
		}
		}
		if ((event.keyCode< 48 || event.keyCode > 57) && event.keyCode != 92)
		alert("������������0-100��");
		event.returnValue=false;
		if(isChineseOrOther(document.getElementById(id).value))
		alert("������������0-100��");
		document.getElementById(id).value='';
	}
</Script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����ľ�</title>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body topmargin="0" leftmargin="0">
<form name="read" action="exam_read2.asp" method="post" onClick="return onsubmit(id);">
<table cellpadding="0" cellspacing="0" border=1 bordercolor="#FFFFFF" bordercolordark="#1985DB" bordercolorlight="#FFFFFF" align="center" width="100%"> 
                                      <tr align=center> 
                                        <td width="10%" height="24" nowrap>���Կ�Ŀ</td> 
                                        <td width="41%" nowrap>��������</td> 
                                        <td width="24%" nowrap>������</td> 
                                        <td width="25%" nowrap>����</td> 
                                      </tr> 
                                      <%
sql_1 = "Select * from make where college='" & getcollege & "' order by id asc"
set rs_1 = server.createobject("adodb.recordset")
rs_1.open sql_1,conn,1,3
For i=1 to rs_1.recordcount
if rs_1("status")=0 then 
%> 
                                      <tr align=center> 
                                        <td height="25" nowrap>&nbsp;<%=rs_1("course")%>&nbsp;</td> 
                                        <td nowrap><%=server.htmlencode(rs_1("question"))%></td> 
                                        <td nowrap><%=server.htmlencode(rs_1("answer_stu"))%></td> 
                                        <td nowrap> <input type="text" name="defen[<% =rs_1("ID") %>]"></td> 
   </tr> 
<%
	end if
	rs_1.movenext
	next
%>                                  
</table>
<p align="center"><input type="submit" name="submit" align="middle" value="&nbsp;��&nbsp;��"></p>
</form>
</body>
</html>
