<!--#include file="../../conn.asp"-->
<link rel="stylesheet" type="text/css" href="../../Style.css">
<%
if session("managerID")="" then
	response.write "����û�е�¼,�����µ�¼!"
	response.end
end if
%>
<%
set rst=server.createobject("adodb.recordset")
sql="select * from teacher order by id"
rst.open sql,conn,1,1
%>

<table width="768" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
  <td bgcolor="#58CCE9">&nbsp; <a href="adm_tea.asp">��ʦ��Ϣ�б�</a> 
    | <a href="add_tea.asp">��ӽ�ʦ��Ϣ</a>
  </table>
  <table width="768" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="100%" height="25"><%       
	if Not(rst.bof and rst.eof) then'�б����ݱ����Ƿ�Ϊ�ռ�¼
			NumRecord=rst.recordcount
			rst.pagesize=10
			NumPage=rst.Pagecount
			if request("page")=empty then 
			NoncePage=1
		else
		if Cint(request("page"))<1 then
			NoncePage=1
		else
			NoncePage=request("page")
		end if
		if Cint(Trim(request("page")))>Cint(NumPage) then NoncePage=NumPage
	end if
else
	NumRecord=0
	NumPage=0
	NoncePage=0
	end if
%>
        <table border="0" width="768" bordercolorlight="#000000" cellspacing="1" cellpadding="0" bordercolordark="#FFFFFF">
          <tr>
            <td width="83" bgcolor="#F4FBFB" align="center">����</td>
            <td width="84" bgcolor="#F4FBFB" align="center">����ѧԺ</td>
            <td width="84" bgcolor="#F4FBFB" align="center">�û���</td>
            <td width="84" bgcolor="#F4FBFB" align="center">����</td>
            <td width="84" align="center">�޸�</td>
            <td width="77" align="center">ɾ��</td>
          </tr>
            <%if Not(rst.bof and rst.eof) then
	rst.move (Cint(NoncePage)-1)*10,1
	for i=1 to rst.pagesize
%>

          <tr>
            <td width="83" height="25" align="center"><%=rst("name_tea")%></td>
            <td width="84" align="center"><%=rst("college")%></td>
            <td width="84" align="center"><%=rst("username")%></td>
            <td width="84" align="center"><%=rst("password")%></td>
            <td width="84" align="center"><a href=mod_tea.asp?id=<%=rst("ID")%>>�޸�</a></td>
            <td width="77" align="center"><a href=del_tea.asp?id=<%=rst("ID")%>>ɾ��</a></td>
          </tr>
           <%		 		rst.movenext
			   		if rst.eof then exit for
					next
else
	response.write "<tr><td colspan=13><marquee scrolldelay=120 behavior=alternate>û���ҵ��κμ�¼!!!</marquee></td></tr>"
end if	

rst.close
set rst=nothing

%>
        </table>
</table>

<table width="768" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
          <td height="25"> 
            
      <div align="right"> 
        <input type="hidden" name="page" value="<%=NoncePage%>">
<%
if NoncePage>1 then
	response.write "<a href=adm_stu.asp?page=1>�� ҳ</a>&nbsp;|&nbsp;<a href=adm_stu.asp?page="&NoncePage-1&">��һҳ</a>&nbsp|"
else
	response.write "�� ҳ&nbsp;|&nbsp;��һҳ&nbsp|"
end if
if Cint(Trim(NoncePage))<Cint(Trim(NumPage)) then
	response.write "<a href=adm_stu.asp?page="&NoncePage+1&">&nbsp;��һҳ</a>&nbsp;|&nbsp;<a href=adm_stu.asp?page="&NumPage&">β ҳ</a>"
else
	response.write "&nbsp;��һҳ&nbsp;|&nbsp;β ҳ"
end if
%>
              &nbsp;ҳ�Σ�<font color="#0033CC"><%=NoncePage%></font>/<font color="#0033CC"><%=NumPage%></font> 
              ��<font color="#0033CC"><%=NumRecord%></font>����¼&nbsp; </div>                        
    </td>
  </tr>
</table>