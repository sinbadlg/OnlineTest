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
	<Script Language=JavaScript>
	function dosubmit()
	{
		if (document.paper.course.value=="")
		{
			alert("����д���Կ�Ŀ��");
			document.paper.course.focus();
			return false;
		}
		if (document.paper.starttime.value=="")
		{
			alert("����д��ʼ���ڣ�");
			document.paper.starttime.focus();
			return false;
		}
	    if (document.paper.endtime.value=="")
		{
			alert("����д�������ڣ�");
			document.paper.endtime.focus();
			return false;
		}
		if (document.paper.time.value=="")
		{
			alert("����д������ʱ��");
			document.paper.time.focus();
			return false;
		}
	}
	</Script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>���߳���</title>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body topmargin="0" leftmargin="0">
<form name="paper" action="exam_paper2.asp" method="post">
<table cellpadding="0" cellspacing="0" border=1 bordercolor="#FFFFFF" bordercolordark="#1985DB" bordercolorlight="#FFFFFF" align="center" width="100%"> 
                                      <tr align=center> 
                                        <td width="10%" height="24" nowrap>���Կ�Ŀ</td> 
                                        <td width="41%" nowrap>��ʼ����</td> 
                                        <td width="24%" nowrap>��������</td> 
                                        <td width="25%" nowrap>������ʱ</td> 
                                      </tr> 
                                      <tr align=center> 
                                        <td height="25" nowrap><input type="text" name="course"></td> 
                                        <td nowrap><input type="text" name="starttime"></td> 
                                        <td nowrap><input type="text" name="endtime"></td> 
                                        <td nowrap> <input type="text" name="timemm"></td> 
   </tr>                                  
</table>
<p align="center" ><font color="#FF0000" size="-1">ע�⣺���Կ�Ŀ ��д���� ���� ��ѧ���� ���Դ����ȡ������ھ�Ϊ2010-10-12���ָ�ʽ����������ʱΪ60-120֮�������</p>
<p align="center"><input type="submit" name="submit" align="middle" value="&nbsp;��&nbsp;��" onClick="return dosubmit();"></p>
</form>
</body>
</html>
