<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<!--#include file="../Conn.asp"-->
<%
if(Session("studentID") = "" or Session("college") = "")then
Response.Redirect("../Login.asp")
Response.End()
end if

studentIDID=Session("studentID")
exam_idid=Session("exam_id")
collegege=session("college_11")

response.write("<form name='hid_form' method='post' action='exam_result.asp'>")
dim exam_chose,exam_tureorfalse,exam_make
exam_chose = 0   '记载回答正确的选择题个数
exam_tureorfalse = 0    '记载回答正确的判断题的个数
exam_make = 0 '记载回答正确填空题的个数


sql_1 = "Select * from [test] where courseID = '"& session("exam_id") & "' and t = '选择题'"
set rs_1 = server.CreateObject("adodb.recordset")  
rs_1.open sql_1,conn,1,3
for i=1 to rs_1.recordcount
getchose_answer = request("chose_answer["&i&"]")
response.write("<input type='hidden' name='chose_answer["&i&"]' value='"&getchose_answer&"'>")
if(instr(rs_1("answer"),getchose_answer) > 0 and (len(getchose_answer) = len(trim(rs_1("answer"))))) then
exam_chose = exam_chose + 1
end if
rs_1.movenext
next
rs_1.close
set rs_1 = nothing

sql_2 = "Select * from [test] where courseID = '"& session("exam_id") & "' and t = '判断题'"
set rs_2 = server.CreateObject("adodb.recordset")
rs_2.open sql_2,conn,1,3
for i=1 to rs_2.recordcount
gettureorfalse_answer = request("ture_answer["&i&"]")
Response.write("<input type='hidden' name='ture_answer["&i&"]' value='"&gettureorfalse_answer&"'>")
if((instr(rs_2("answer"),gettureorfalse_answer) > 0 ) and (len(gettureorfalse_answer) = len(trim(rs_2("answer"))))) then
exam_tureorfalse = exam_tureorfalse + 1
end if
rs_2.movenext
next
rs_2.close
set rs_2 = nothing
response.write("</form>")


sql_3 = "Select * from [test] where courseID = '"& session("exam_id") & "' and t = '填空题'"
set rs_3 = server.CreateObject("adodb.recordset")
set rs_4 = server.CreateObject("adodb.recordset")
rs_3.open sql_3,conn,1,3
for i=1 to rs_3.recordcount
getmake_question = rs_3("question")
getmake_answer = request("make_answer["&i&"]")
sql_4="Insert into make(studentID,college,courseID,course,question,answer_stu,defen,status) values('" & Session("studentID") & "','" & collegege & "','" & session("exam_id") & "','" & session("course") & "','" & getmake_question & "','" & getmake_answer & "',0,0)"
rs_4.open sql_4,conn,1,3
rs_3.movenext
next
rs_3.close
rs_4.close
set rs_3 = nothing
set rs_3 = nothing

chose_total = exam_chose * 4 '选择题得分
tureorfalse_total = exam_tureorfalse * 4  '判断题得分
score_totalal=chose_total+tureorfalse_total '总分
getcollege = Session("college")
if(session("studentID") <> "" and getcollege <> "")then
'更新学生成绩表中的数据
sql="update score set score_chose="& chose_total & ",score_ture=" & tureorfalse_total & ",score_total=" & score_totalal & " where studentID='"& studentIDID &"' and courseID='" & exam_idid & "'"
conn.Execute(sql)
end if
Response.Write("<script>alert('试卷已提交');</script>")
Response.Write("<script>hid_form.submit();</script>")
%>
