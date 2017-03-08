<!--#include file="../../conn.asp"-->
<%
dim passwordrd,usernameme,name_teaea,collegege,idid
idid=trim(request("id"))
usernameme=trim(request("username"))
passwordrd=trim(request("password"))
name_teaea=trim(request("name_tea"))
collegege=trim(request("college"))

set rs=server.createobject("adodb.recordset")
sql="select * from [teacher] where id="& idid
rs.open sql,conn,1,3
%>

<%
rs("name_tea")=name_teaea
rs("college")=collegege
rs("username")=usernameme
rs("password")=passwordrd
rs.update
rs.close
set rs=nothing
response.write "<script language='javascript'>window.confirm('教师信息已经成功修改')</script>"
response.write "<script language='javascript'>parent.window.history.go(-1);</script>"

%>