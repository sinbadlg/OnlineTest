<%Response.Expires = 0%>
<!--#include file="../Conn.asp"-->
<%
set rs_1=Server.CreateObject("ADODB.Recordset")
set rs_2=Server.CreateObject("ADODB.Recordset")
rs_1.Open "select * from [make] order by id asc",conn,1,3

for i=1 to rs_1.recordcount
j=rs_1("ID")
studentIDID=rs_1("studentID")
courseIDID=rs_1("courseID")
getdefen = request.Form("defen["&j&"]")
sql_2="update make set defen=" & getdefen & ",status=1 where studentID='" & studentIDID & "' and courseID='" & courseIDID & "'" 
rs_2.open sql_2,conn,1,3
rs_1.movenext
next 

rs_1.Close
rs_2.close
set rs_1=nothing
set rs_2=nothing

set rs_3=Server.CreateObject("ADODB.Recordset")
rs_3.Open "select * from [student] order by id asc",conn,3,3
for k=1 to rs_3.recordcount    '��ѧ����õ�ѧ�����
studentIIDD=rs_3("studentID") '�õ�ÿ��ѧ����ѧ��

set rs_4=Server.CreateObject("ADODB.Recordset")
sql_4="select * from [make] where studentID='" & studentIIDD & "' and status='1'"
rs_4.open sql_4,conn,3,3
for l=1 to rs_4.recordcount '����ձ�õ��γ����
courseIIDD=rs_4("courseID")
defen_defen=rs_4("defen")
'response.Write(courseIIDD)
'response.Write("<br>")
'response.Write(defen_defen)
'response.Write("<br>")
set rs_5=Server.CreateObject("ADODB.Recordset")
sql_5="select * from [score] where studentID='" & studentIIDD & "' and courseID='" & courseIIDD & "'" 'д��ɼ�
rs_5.open sql_5,conn,3,3
if not rs_5.eof then 
score_makeke=rs_5("score_make") '�Ȱ�ԭ���ĳɼ�ȡ��
'response.Write(score_makeke)
'response.Write("<br>")
score_makeke=score_makeke + defen_defen '���ϵõ��ĳɼ�
'response.Write(score_makeke)
'response.Write(studentIIDD)
'response.Write("<br>")
'response.Write(courseIIDD)
'response.Write("<br>")
set rs_6=Server.CreateObject("ADODB.Recordset")
sql_6="update [score] set score_make=" &  score_makeke & " where studentID='" & studentIIDD & "' and courseID='" & courseIIDD & "'"
rs_6.open sql_6,conn,3,3
'�ӳɼ����л�ȡ����ɼ�(ѡ���⡢�ж��⡢�����)
set rs_8=Server.CreateObject("ADODB.Recordset")
sql_8="select * from [score] where studentID='" & studentIIDD & "' and courseID='" & courseIIDD & "'"
rs_8.open sql_8,conn,3,3
chosesese=rs_8("score_chose")
turerere=rs_8("score_ture")
makekeke=rs_8("score_make")
score_totalalal=cint(chosesese)+cint(turerere)+cint(makekeke)
'�������ݱ����ܳɼ�
set rs_7=Server.CreateObject("ADODB.Recordset")
sql_7="update [score] set score_total=" &  score_totalalal & " where studentID='" & studentIIDD & "' and courseID='" & courseIIDD & "'"
rs_7.open sql_7,conn,3,3
end if

rs_4.movenext '�γ����
next

rs_3.movenext 'ѧ�����
next

Response.Write "<script language='javascript'>alert('�ύ���,��ʦ,�������ˣ�');</script>"

rs_3.Close
rs_4.close
set rs_3=nothing
set rs_4=nothing
Call CloseConn()%>
