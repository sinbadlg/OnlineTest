<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../conn.asp"-->
<%
Response.ContentType ="application/vnd.ms-word"
Response.AddHeader "Content-Disposition", "attachment; filename=ѧ���ɼ���.doc"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����Word</title>
<style type="text/css">
<!--
#title{
font-family:"����";
font-size:16pt;
font-weight:bold;
text-align:center; 
margin-bottom:10px;
}
#bigtitle{
font-family:"����";
font-size:24pt;
font-weight:bold;
text-align:center;
margin-bottom:10px;
}
#bottom{
font-size:12pt;
text-align:left;
margin-left:40px;
margin-top:8px;
}

table{
border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
mso-yfti-tbllook:480;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:
.5pt solid windowtext;mso-border-insidev:.5pt solid windowtext;border-left:solid windowtext 1.0pt;border-top:solid windowtext 1.0pt;
}
td{
border-top:none;border-left:
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
}
-->
</style>
</head>

<body>
<div id="bigtitle">ѧ���ɼ��� </div>

<table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%"> 
                                <tr> 
                                  <td align="center" height="24"> <font color="blue"> ����<font color="red"></font><font color="blue"><font color="red"><% =session("name")%>
                                  </font></font>�Ŀ��Գɼ����� </font> </td> 
                                </tr> 
                                <tr> 
                                  <td valign="top"> <table cellpadding="0" cellspacing="0" border=1 bordercolor="#FFFFFF" bordercolordark="#1985DB" bordercolorlight="#FFFFFF" align="center" width="100%"> 
                                      <tr align=center> 
                                        <td height="25" colspan=4 align=left>ѡ����</td> 
                                      </tr> 
                                      <tr align=center> 
                                        <td width="10%" height="24" nowrap>���</td> 
                                        <td width="41%" nowrap>������Ŀ</td> 
                                        <td width="24%" nowrap>��ȷ��</td> 
                                        <td width="25%" nowrap>������</td> 
                                      </tr> 
                                      <%
sql_1 = "Select * from test where courseID = '"& session("exam_id") & "' and t = 'ѡ����'"
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
	response.write("��")
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
                                        <td height="25" colspan=4 align=left nowrap>�ж���</td> 
                                      </tr> 
                                      <tr align=center> 
                                        <td height="24" nowrap>��
                                        ��</td> 
                                        <td nowrap>������Ŀ</td> 
                                        <td nowrap>��ȷ��</td> 
                                        <td nowrap>������</td> 
                                      </tr> 
                                      <%
sql_2 = "Select * from test where courseID = '"& session("exam_id") & "' and t = '�ж���'"
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
	response.write("��")
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
                                              <td width="28%" align="right"> ѡ����ɼ� </td> 
                                              <td width="11%" align="center"> <%
	sql_3 = "Select * from score where studentID='" & session("studentID") & "' and courseID='" & session("exam_id") & "'"
	set rs_3 = conn.Execute(sql_3)
	response.write(server.htmlencode(rs_3("score_chose")))
%> 
                                                �� </td> 
                                              <td width="12%" align="center"> �ж���ɼ� </td> 
                                              <td width="12%" align="center"> <%
																									response.write(server.htmlencode(rs_3("score_ture")))
																								%> 
                                                �� </td> 
                                              <td width="13%" align="center"> �ܳɼ� </td> 
                                              <td width="24%" align="left"> <%
	response.write(server.htmlencode(rs_3("score_total")))
	rs_3.close
	set rs_3 = nothing
%> 
                                                �� </td> 
                                            </tr> 
                                          </table></td> 
                                      </tr> 
                                    </table></td> 
                                </tr> 
                              </table>

<div id="bottom">˵����1.���ɼ������Ϊ���Լ��ɼ��л��ɵ�ͬѧ��֤���ϴ����ον�ʦ�� <br />
2.δ�������������κ���ʽ͸¶�������ݡ� </div>
</body>
</html>
