<!--#include file="../Conn.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>在线考试系统</title>
<link href="../style.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="90%" border="0" cellspacing="0" cellpadding="0" style="padding-left:20px;">
  <tr>
    <td height="50"><strong>考试课程</strong></td>
  </tr>
<%
collegege=session("college_11")
'response.Write(collegege)
startt=session("starttime")
set rs=Server.CreateObject("adodb.recordset")
rs.Open "select * from [course] where starttime>='" & startt & "' and college='" & collegege & "' order by starttime asc",conn,1,1
if not rs.EOF then
  do while not rs.EOF%>
  <tr>
    <td height="20" style="color:#666666">&nbsp;&nbsp;&nbsp;&nbsp;■ <%=rs("course")%></a>&nbsp;时间：<%=rs("starttime")%> 至 <%=rs("endtime")%></td>
  </tr>
  <%rs.MoveNext
	loop
End if%>
</table>

</body>
</html>
