<!--#include file="../../conn.asp"-->
<link rel="stylesheet" type="text/css" href="../../Style.css">
<%
if session("managerID")="" then
	response.write "����û�е�¼,�����µ�¼!"
	response.end
end if

%>

		
<%
	dim text_mm
	text_mm=trim(request("message"))
%>

<%
set rs=createobject("adodb.recordset")
sql="select * from [message] order by id asc"
rs.open sql,conn,1,3
%>
<%
	if not rs.eof then

	rs.Movelast
	rs.addnew
	rs("text_m")=text_mm
	rs.update
	rs.close
	set rs=nothing
	
	end if
%>
<%
Response.Write("<meta http-equiv=refresh content='1;URL=add_message.asp'>"&Msg&"��ҳ����1���ڷ���<BR>�����������û�з�Ӧ����<a href=add_message.asp>����˴�����</a>")
Response.End()
%>
