<!--#include file="../../conn.asp"-->
<%
dim idid,studentIDID,cardrd,nameme,sexex,collegege
idid=trim(request("id"))
studentIDID=trim(request("studentID"))
cardrd=trim(request("card"))
nameme=trim(request("name"))
sexex=trim(request("sex"))
collegege=trim(request("college"))

set rs=server.createobject("adodb.recordset")
sql="select * from [student] where id="& idid
rs.open sql,conn,1,3
%>

<%
rs("studentID")=studentIDID
rs("card")=cardrd
rs("name")=nameme
rs("sex")=sexex
rs("college")=collegege
rs.update
rs.close
set rs=nothing
response.write "<script language='javascript'>window.confirm('学生信息已经成功修改')</script>"
response.write "<script language='javascript'>parent.window.history.go(-1);</script>"

%>