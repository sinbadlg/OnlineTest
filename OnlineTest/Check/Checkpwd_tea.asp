<!--#include file="../Conn.asp"-->
<%	
	dim pwd_jiu,pwd_new
	pwd_jiu=trim(request.Form("pwd_jiu"))
	pwd_new=trim(request.Form("pwd_new"))
	set rs=Server.CreateObject("ADODB.Recordset")
	rs.Open "select * from [teacher] where password = '"& pwd_jiu &"'",conn,1,3
	if not rs.eof then 
		rs("password")=pwd_new
		rs.update
		rs.close
		set rs=nothing
		response.Write("�����޸ĳɹ�")
	else
		response.Write("���ľ�������������")
		response.End
	end if
%>