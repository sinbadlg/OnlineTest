<!--#include file="../../conn.asp"-->
<%
dim idid,score_chosese,score_turere,score_makeke,score_totalal
idid=trim(request("id"))
score_chosese=trim(request("score_chose"))
score_turere=trim(request("score_ture"))
score_makeke=trim(request("score_make"))
score_totalal=trim(request("score_total"))

set rs=server.createobject("adodb.recordset")
sql="select * from [score] where id="& idid
rs.open sql,conn,1,3
%>

<%
rs("score_chose")=score_chosese
rs("score_ture")=score_turere
rs("score_make")=score_makeke
rs("score_total")=score_totalal
rs.update
rs.close
set rs=nothing
response.write "<script language='javascript'>window.confirm('成绩已经成功修改')</script>"
response.write "<script language='javascript'>parent.window.history.go(-1);</script>"

%>