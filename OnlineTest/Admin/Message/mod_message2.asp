<!--#include file="../../conn.asp"-->
<%
dim idid,text_mm
idid=trim(request("id"))
text_mm=trim(request("message"))

set rs=server.createobject("adodb.recordset")
sql="select * from [message] where id="& idid
rs.open sql,conn,1,3
%>

<%
rs("text_m")=text_mm
rs.update
rs.close
set rs=nothing
response.write "<script language='javascript'>window.confirm('公告信息已经成功修改')</script>"
response.write "<script language='javascript'>parent.window.history.go(-1);</script>"

%>