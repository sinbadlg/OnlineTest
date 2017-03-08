<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../conn.asp"-->
<%
getcollege = Session("college")
getstudentID = Session("studentID")
If(getcollege = "" or getstudentID = "")Then
	Response.Write("您没有登录,请重新登录!")
	Response.End()
End If
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>成绩查询</title>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body topmargin="0" leftmargin="0"> 
<table width="770" height="470" border="0" align="center" cellpadding="0" cellspacing="0"> 
                                <tr> 
                                  <td align="center" height="24"> <font color="blue"> 考生<font color="red"></font><font color="blue"><font color="red"><% =session("name")%>
                                  </font></font>的所有考试成绩列表如下 </font> </td> 
                                </tr> 
                                <tr> 
                                  <td valign="top"> <table cellpadding="0" cellspacing="0" border=1 bordercolor="#FFFFFF" bordercolordark="#1985DB" bordercolorlight="#FFFFFF" align="center" width="100%"> 
                                                                        <%
sql_1 = "Select * from score where studentID='" & session("studentID") & "' order by ID asc"
set rs_1 = server.createobject("adodb.recordset")
rs_1.open sql_1,conn,1,3
rs_1_num = 0
For i=1 to rs_1.recordcount
rs_1_num = rs_1_num + 1
%> 
                                      <tr align=center> 
                                        <td height="25" colspan=4 align=left><% =rs_1("course") %></td> 
                                      </tr> 
                                      <tr align=center> 
                                        <td width="21%" nowrap>选择成绩</td> 
                                        <td width="24%" nowrap>判断成绩</td> 
                                        <td width="20%" nowrap>填空成绩</td> 
                                        <td width="25%" nowrap>总成绩</td> 
                                      </tr> 
                                      <tr align=center>  
                                        <td nowrap><%=server.htmlencode(rs_1("score_chose"))%></td> 
                                        <td nowrap><%=server.htmlencode(rs_1("score_ture"))%></td> 
                                        <td nowrap><%=server.htmlencode(rs_1("score_make"))%></td> 
                                        <td nowrap> <%=server.htmlencode(rs_1("score_total"))%> </td> 
                                      </tr> 
                                      <%
	rs_1.movenext
	next
%> 
</table> 
</body>
</html>
