<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../conn.asp"-->
<%
getcollege = Session("college")
getteacherID = Session("teacherID")
If(getcollege = "" or getteacherID = "")Then
	Response.Write("您没有登录,请重新登录!")
	Response.End()
End If
%>
	<Script Language=JavaScript>
	function dosubmit()
	{
		if (document.paper.course.value=="")
		{
			alert("请填写考试科目！");
			document.paper.course.focus();
			return false;
		}
		if (document.paper.starttime.value=="")
		{
			alert("请填写开始日期！");
			document.paper.starttime.focus();
			return false;
		}
	    if (document.paper.endtime.value=="")
		{
			alert("请填写结束日期！");
			document.paper.endtime.focus();
			return false;
		}
		if (document.paper.time.value=="")
		{
			alert("请填写考试用时！");
			document.paper.time.focus();
			return false;
		}
	}
	</Script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>在线出卷</title>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body topmargin="0" leftmargin="0">
<form name="paper" action="exam_paper2.asp" method="post">
<table cellpadding="0" cellspacing="0" border=1 bordercolor="#FFFFFF" bordercolordark="#1985DB" bordercolorlight="#FFFFFF" align="center" width="100%"> 
                                      <tr align=center> 
                                        <td width="10%" height="24" nowrap>考试科目</td> 
                                        <td width="41%" nowrap>开始日期</td> 
                                        <td width="24%" nowrap>结束日期</td> 
                                        <td width="25%" nowrap>考试用时</td> 
                                      </tr> 
                                      <tr align=center> 
                                        <td height="25" nowrap><input type="text" name="course"></td> 
                                        <td nowrap><input type="text" name="starttime"></td> 
                                        <td nowrap><input type="text" name="endtime"></td> 
                                        <td nowrap> <input type="text" name="timemm"></td> 
   </tr>                                  
</table>
<p align="center" ><font color="#FF0000" size="-1">注意：考试科目 填写中文 比如 大学物理 线性代数等　　日期均为2010-10-12这种格式　　考试用时为60-120之间的整数</p>
<p align="center"><input type="submit" name="submit" align="middle" value="&nbsp;提&nbsp;交" onClick="return dosubmit();"></p>
</form>
</body>
</html>
