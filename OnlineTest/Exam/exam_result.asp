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
<title>考试成绩</title>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body topmargin="0" leftmargin="0"> 
<table width="770" height="470" border="0" align="center" cellpadding="0" cellspacing="0"> 
  <tr> 
    <td height="324" align="center" valign="top"> <table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%"> 
        <tr> 
          <td width="26"> </td> 
          <td  height="324"> <table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%"> 
              <tr> 
                <td  height="300" align="center"> <table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%"> 
                    <tr> 
                      <td > <table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%"> 
                          <tr> 
                            <td width="28"> </td> 
                            <td valign="top" height="243"> <table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%"> 
                                <tr> 
                                  <td align="center" height="24"> <font color="blue"> 考生<font color="red"></font><font color="blue"><font color="red"><% =session("name")%>
                                  </font></font>的考试成绩如下 </font> <font color="#FF0000">(注:主观题部分将由老师在线阅卷后评分后计入总成绩,请稍候几天查询,谢谢)</font></td> 
                                </tr> 
                                <tr> 
                                  <td valign="top"> <table cellpadding="0" cellspacing="0" border=1 bordercolor="#FFFFFF" bordercolordark="#1985DB" bordercolorlight="#FFFFFF" align="center" width="100%"> 
                                      <tr align=center> 
                                        <td height="25" colspan=4 align=left>选择题</td> 
                                      </tr> 
                                      <tr align=center> 
                                        <td width="10%" height="24" nowrap>题号</td> 
                                        <td width="41%" nowrap>考试题目</td> 
                                        <td width="24%" nowrap>正确答案</td> 
                                        <td width="25%" nowrap>考生答案</td> 
                                      </tr> 
                                      <%
sql_1 = "Select * from test where courseID = '"& session("exam_id") & "' and t = '选择题'"
set rs_1 = server.createobject("adodb.recordset")
rs_1.open sql_1,conn,1,3
rs_1_num = 0
For i=1 to rs_1.recordcount
rs_1_num = rs_1_num + 1
%> 
                                      <tr align=center> 
                                        <td height="25" nowrap>&nbsp;<%=rs_1_num%>&nbsp;</td> 
                                        <td nowrap><%=server.htmlencode(rs_1("question"))%></td> 
                                        <td nowrap><%=server.htmlencode(rs_1("answer"))%></td> 
                                        <td nowrap> <%
	if(request("chose_answer["&i&"]") = "")then
	response.write("无")
	else
	response.write(request("chose_answer["&i&"]"))
	end if
%> </td> 
                                      </tr> 
                                      <%
	rs_1.movenext
	next
%> 
                                      <tr align=center> 
                                        <td height="25" colspan=4 align=left nowrap>判断题</td> 
                                      </tr> 
                                      <tr align=center> 
                                        <td height="24" nowrap>题
                                        号</td> 
                                        <td nowrap>考试题目</td> 
                                        <td nowrap>正确答案</td> 
                                        <td nowrap>考生答案</td> 
                                      </tr> 
                                      <%
sql_2 = "Select * from test where courseID = '"& session("exam_id") & "' and t = '判断题'"
set rs_2 = server.createobject("adodb.recordset")
rs_2.open sql_2,conn,1,3
rs_2_num = 0
For i=1 to rs_2.recordcount
rs_2_num = rs_2_num + 1
%> 
                                      <tr align=center> 
                                        <td height="27" nowrap>&nbsp;<%=rs_2_num%>&nbsp;</td> 
                                        <td nowrap><%=server.htmlencode(rs_2("question"))%></td> 
                                        <td nowrap><%=server.htmlencode(rs_2("answer"))%></td> 
                                        <td nowrap> <%
	if(request("ture_answer["&i&"]") = "")then
	response.write("无")
	else
	response.write(request("ture_answer["&i&"]"))
	end if
%> </td> 
                                      </tr> 
                                      <%
	rs_2.movenext
	next
%> 
                                      <tr> 
                                        <td height="25" colspan="4" align="center"> <table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%"> 
                                            <tr> 
                                              <td width="28%" align="right"> 选择题成绩 </td> 
                                              <td width="11%" align="center"> <%
	sql_3 = "Select * from score where studentID='" & session("studentID") & "' and courseID='" & session("exam_id") & "'"
	set rs_3 = conn.Execute(sql_3)
	response.write(server.htmlencode(rs_3("score_chose")))
%> 
                                                分 </td> 
                                              <td width="12%" align="center"> 判断题成绩 </td> 
                                              <td width="12%" align="center"> <%
																									response.write(server.htmlencode(rs_3("score_ture")))
																								%> 
                                                分 </td> 
                                              <td width="13%" align="center"> 总成绩 </td> 
                                              <td width="24%" align="left"> <%
	response.write(server.htmlencode(rs_3("score_total")))
	rs_3.close
	set rs_3 = nothing
%> 
                                                分 </td> 
                                            </tr> 
                                          </table></td> 
                                      </tr> 
                                    </table></td> 
                                </tr> 
                              </table></td> 
                            <td width="25"> </td> 
                          </tr> 
                        </table></td> 
                    </tr> 
                    <tr> 
                      <td height="33" align="center"><input onClick="window.open('exam_word.asp','main')" type="button" value="导出&nbsp;Word"></td> 
                    </tr> 
                  </table></td> 
              </tr> 
            </table></td> 
          <td width="27"> </td> 
        </tr> 
      </table></td> 
  </tr> 
  <tr> 
    <td height="40">&nbsp;</td> 
  </tr> 
</table> 
</body>
</html>
