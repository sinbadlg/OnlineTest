<!--#include file="../../conn.asp"-->
<%
if session("managerID")="" then
	response.write "����û�е�¼,�����µ�¼!"
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
	'response.write "׼��֤��"& user_testnumber &"�ÿγ̳ɼ��Ѿ����ڣ���Ҫ�޸��뵽�޸�ҳ�档"
	response.write "�û���Ϊ"& username &"�ĸ���ʦ�Ѿ����ڣ���Ҫ�޸��뵽�޸�ҳ�档"&"<a href='Javascript:window.history.go(-1)'>����</a>"
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
Response.Write("<meta http-equiv=refresh content='1;URL=add_tea.asp'>"&Msg&"��ҳ����1���ڷ���<BR>�����������û�з�Ӧ����<a href=add_tea.asp>����˴�����</a>")
Response.End()
%>
