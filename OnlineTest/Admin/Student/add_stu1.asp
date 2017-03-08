<!--#include file="../../conn.asp"-->
<link rel="stylesheet" type="text/css" href="../../Style.css">
<%
if session("managerID")="" then
	response.write "您还没有登录,请重新登录!"
	response.end
end if

%>

		
<%
	dim studentIDID,cardrd,nameme,sexex,collegege,passwordrd
	studentIDID=trim(request("studentID"))
	cardrd=trim(request("card"))
	nameme=trim(request("name"))
	sexex=trim(request("sex"))
	collegege=trim(request("college"))
	passwordrd=trim(request("password"))
%>

<%
set rs=createobject("adodb.recordset")
sql="select * from [student] where studentID='"&studentIDID&"' and card='"&cardrd&"'"
rs.open sql,conn,1,3
%>
<%
if not rs.eof then
	'response.write "准考证号"& user_testnumber &"该课程成绩已经存在，如要修改请到修改页面。"
	response.write "学号为"& studentIDID &"的该名学生已经存在，如要修改请到修改页面。"&"<a href='Javascript:window.history.go(-1)'>返回</a>"
	response.end
else
	rs.addnew
	rs("studentID")=studentIDID
	rs("card")=cardrd
	rs("name")=nameme
	rs("sex")=sexex
	rs("college")=collegege
	rs("password")=passwordrd
	rs.update
	rs.close
	set rs=nothing
	end if
%>
<%
Response.Write("<meta http-equiv=refresh content='1;URL=add_stu.asp'>"&Msg&"本页将在1秒内返回<BR>如果你的浏览器没有反应，请<a href=add_stu.asp>点击此处返回</a>")
Response.End()
%>
