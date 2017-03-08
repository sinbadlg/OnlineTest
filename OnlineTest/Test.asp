<!--#include file="Conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>
<%id=Trim(Request.QueryString("id"))%>
<form action="Test_action.asp" method="post">
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<%set rs=Server.CreateObject("adodb.recordset")
rs.Open "select * from [course] where cstr(ID) = '"&id&"'",conn,1,1%> 
	<tr>
    <td height="50" align="center" style="font-size:14px; font-weight:bold;"><%=rs("course")%></td>
  </tr>
<%rs.Close
rs.Open "select * from [test] where t='选择题' and courseID = '"&id&"' order by ID asc",conn,1,1
if not rs.EOF then%>
  <tr>
    <td height="25" style="font-weight:bold;">一、选择题</td>
  </tr> 
  <%i=1
  do while not rs.EOF%>
  <tr>
    <td height="22" style="font-weight:bold;"><%=i & "、"%><%=rs("question")%></td>
  </tr>  
	<tr>
    <td><input name="<%=rs("ID")%>" type="radio" value="<%=rs("choose1")%>" /><%=rs("choose1")%>&nbsp;&nbsp;&nbsp;&nbsp;<input name="<%=rs("ID")%>" type="radio" value="<%=rs("choose2")%>" /><%=rs("choose2")%>&nbsp;&nbsp;&nbsp;&nbsp;<input name="<%=rs("ID")%>" type="radio" value="<%=rs("choose3")%>" /><%=rs("choose3")%>&nbsp;&nbsp;&nbsp;&nbsp;<input name="<%=rs("ID")%>" type="radio" value="<%=rs("choose4")%>" /><%=rs("choose4")%></td>
  </tr>
  <%i=i+1
	rs.MoveNext
	loop
End if
rs.Close%>

<%rs.Open "select * from [test] where t='判断题' and courseID = '"&id&"' order by ID asc",conn,1,1
if not rs.EOF then%>
  <tr>
    <td height="15"></td>
  </tr> 
  <tr>
    <td height="25" style="font-weight:bold;">二、判断题</td>
  </tr> 
  <%i=1
  do while not rs.EOF%>
  <tr>
    <td height="22" style="font-weight:bold;"><%=i & "、"%><%=rs("question")%></td>
  </tr>  
	<tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs("choose")%><input name="<%=rs("ID")%>" type="radio" value="<%=rs("choose1")%>" /><%=rs("choose1")%>&nbsp;&nbsp;&nbsp;&nbsp;<input name="<%=rs("ID")%>" type="radio" value="<%=rs("choose2")%>" /><%=rs("choose2")%></td>
  </tr>
  <%i=i+1
	rs.MoveNext
	loop
End if
rs.Close%>

<%rs.Open "select * from [test] where t='填空题' and courseID = '"&id&"' order by ID asc",conn,1,1
if not rs.EOF then%>
  <tr>
    <td height="10"></td>
  </tr> 
  <tr>
    <td height="25" style="font-weight:bold;">三、填空题</td>
  </tr> 
  <%i=1
  do while not rs.EOF%>
  <tr>
    <td height="22" style="font-weight:bold;"><%=i & "、"%><%=rs("question")%>&nbsp;<input name="<%=rs("ID")%>" type="text" style="width:100px;" /></td>
  </tr>  
  <%i=i+1
	rs.MoveNext
	loop
End if
rs.Close%>
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
  <tr>
    <td align="center"><input type="submit" value="提交试卷" /></td>
  </tr>
</table>
</form>
</body>
</html>
