<!--#include file="../../conn.asp"-->
<%
if session("managerID")="" then
	response.write "����û�е�¼,�����µ�¼!"
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
response.write "<script language='javascript'>window.confirm('������Ϣ�Ѿ��ɹ���ɾ����')</script>"
response.write "<script language='javascript'>parent.window.history.go(-1);</script>"
%>