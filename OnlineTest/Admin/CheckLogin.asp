<%Response.Expires = 0%>
<!--#include file="../Conn.asp"-->
<%dim teacherID,teacherpwd
managerID = Trim(Request.Form("managerID"))
managerpwd = Trim(Request.Form("managerpwd"))
CheckCode = Replace(Trim(Request("verifycode")),"'","")
if managerID = "" or managerpwd = "" then
  Response.Write "<script language='javascript'>alert('�����˻������벻��Ϊ�գ�');history.go(-1);</script>"
  Response.End
End if
if CheckCode <> CStr(session("GetCode")) then
  Response.Write "<script language='javascript'>alert('��������ȷ����֤�룡');history.go(-1);</script>"
  Response.End
End if
set rs=Server.CreateObject("ADODB.Recordset")
rs.Open "select * from [manager] where username = '"&managerID&"' and password = '"&managerpwd&"'",conn,1,3
if rs.EOF then
  Response.Write "<script language='javascript'>alert('�����˻����������󣡣���½ʧ�ܣ�');history.go(-1);</script>"
else
  Session("managerID") = managerID
  Session("managerpwd") = managerpwd
  Session("ID_man")=rs("ID")
  Response.Redirect "Index.asp" 
End if
rs.Close
set rs=nothing
Call CloseConn()%>
