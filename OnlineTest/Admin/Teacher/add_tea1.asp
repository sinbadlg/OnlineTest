<!--#include file="../../conn.asp"-->
<%
if session("managerID")="" then
	response.write "您还没有登录,请重新登录!"
	response.end
end if

%>

		
<%
	dim usernameme,name_teaea,collegege,passwordrd
	name_teaea=trim(request("name_tea"))
	usernameme=trim(request("username"))
	collegege=trim(request("college"))
	passwordrd=trim(request("password"))
%>

<%
set rs=createobject("adodb.recordset")
sql="select * from [teacher] where username='"&usernameme&"' and password='"&passwordrd&"'"
rs.open sql,conn,1,3
%>
<%
if not rs.eof then
	'response.write "准考证号"& user_testnumber &"该课程成绩已经存在，如要修改请到修改页面。"
	response.write "用户名为"& username &"的该老师已经存在，如要修改请到修改页面。"&"<a href='Javascript:window.history.go(-1)'>返回</a>"
	response.end
else
	rs.addnew
	rs("name_tea")=name_teaea
	rs("username")=usernameme
	rs("college")=collegege
	rs("password")=passwordrd
	rs.update
	rs.close
	set rs=nothing
	end if
%>
<%
Response.Write("<meta http-equiv=refresh content='1;URL=add_tea.asp'>"&Msg&"本页将在1秒内返回<BR>如果你的浏览器没有反应，请<a href=add_tea.asp>点击此处返回</a>")
Response.End()
%>
