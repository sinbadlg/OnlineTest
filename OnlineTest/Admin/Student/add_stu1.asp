<!--#include file="../../conn.asp"-->
<link rel="stylesheet" type="text/css" href="../../Style.css">
<%
if session("managerID")="" then
	response.write "����û�е�¼,�����µ�¼!"
	response.end
end if

%>

		
<%
	dim studentIDID,cardrd,nameme,sexex,collegege,passwordrd
	studentIDID=trim(request("studentID"))
	cardrd=trim(request("card"))
	nameme=trim(request("name"))
	sexex=trim(request("sex"))
	collegege=trim(request("college"))
	passwordrd=trim(request("password"))
%>

<%
set rs=createobject("adodb.recordset")
sql="select * from [student] where studentID='"&studentIDID&"' and card='"&cardrd&"'"
rs.open sql,conn,1,3
%>
<%
if not rs.eof then
	'response.write "׼��֤��"& user_testnumber &"�ÿγ̳ɼ��Ѿ����ڣ���Ҫ�޸��뵽�޸�ҳ�档"
	response.write "ѧ��Ϊ"& studentIDID &"�ĸ���ѧ���Ѿ����ڣ���Ҫ�޸��뵽�޸�ҳ�档"&"<a href='Javascript:window.history.go(-1)'>����</a>"
	response.end
else
	rs.addnew
	rs("studentID")=studentIDID
	rs("card")=cardrd
	rs("name")=nameme
	rs("sex")=sexex
	rs("college")=collegege
	rs("password")=passwordrd
	rs.update
	rs.close
	set rs=nothing
	end if
%>
<%
Response.Write("<meta http-equiv=refresh content='1;URL=add_stu.asp'>"&Msg&"��ҳ����1���ڷ���<BR>�����������û�з�Ӧ����<a href=add_stu.asp>����˴�����</a>")
Response.End()
%>
