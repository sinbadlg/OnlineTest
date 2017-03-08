<!--#include file="../../conn.asp"-->
<%
if session("managerID")="" then
	response.write "您还没有登录,请重新登录!"
	response.end
end if

%>

<%
dim id
id=trim(request("id"))

set rs=server.createobject("adodb.recordset")
sql="select * from [message] where id="& id
rs.open sql,conn,1,3
%>

<%
rs.delete
rs.update
rs.close
set rs=nothing
%>
<%
response.write "<script language='javascript'>window.confirm('公告信息已经成功的删除！')</script>"
response.write "<script language='javascript'>parent.window.history.go(-1);</script>"
%>