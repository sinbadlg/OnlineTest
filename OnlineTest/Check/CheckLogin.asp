<%Response.Expires = 0%>
<!--#include file="../Conn.asp"-->
<%dim StudentID,Card,CheckCode
studentID = Trim(Request.Form("studentID"))
password = Trim(Request.Form("password"))
CheckCode = Replace(Trim(Request("verifycode")),"'","")
if studentID = "" or password = "" then
  Response.Write "<script language='javascript'>alert('����ѧ�Ż����벻��Ϊ�գ�');history.go(-1);</script>"
  Response.End
End if
if CheckCode <> CStr(session("GetCode")) then
  Response.Write "<script language='javascript'>alert('��������ȷ����֤�룡');history.go(-1);</script>"
  Response.End
End if
set rs=Server.CreateObject("ADODB.Recordset")
rs.Open "select * from [student] where studentID = '"&studentID&"' and password = '"&password&"'",conn,1,3
if rs.EOF then
  Response.Write "<script language='javascript'>alert('����ѧ�Ż��������󣡣���½ʧ�ܣ�');history.go(-1);</script>"
else
  Session("ID") = rs("ID")
  Session("college")=rs("college")
  Session("name")=rs("name")
  Session("studentID") = studentID
  Session("password") = password
  Response.Redirect "../Index.asp" 
End if
rs.Close
set rs=nothing
Call CloseConn()%>
