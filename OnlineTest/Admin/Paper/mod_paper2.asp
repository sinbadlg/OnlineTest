<!--#include file="../../conn.asp"-->
<%
dim idid,coursese,starttimeme,endtimeme,timeme
idid=trim(request("id"))
coursese=trim(request("course"))
starttimeme=trim(request("starttime"))
endtimeme=trim(request("endtime"))
timeme=trim(request("time"))

set rs=server.createobject("adodb.recordset")
sql="select * from [course] where id="& idid
rs.open sql,conn,1,3
%>

<%
rs("course")=coursese
rs("starttime")=starttimeme
rs("endtime")=endtimeme
rs("time")=timeme
rs.update
rs.close
set rs=nothing
response.write "<script language='javascript'>window.confirm('试卷信息已经成功修改')</script>"
response.write "<script language='javascript'>parent.window.history.go(-1);</script>"

%>