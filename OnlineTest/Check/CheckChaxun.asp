<%Response.Expires = 0%>
<!--#include file="../Conn.asp"-->
<%	
	dim college,studentID,card
	college=trim(request.Form("college"))
    studentID=trim(request.Form("studentID"))
    card=trim(request.Form("card"))
	set rs=Server.CreateObject("ADODB.Recordset")
    rs.Open "select * from [student] where studentID = '"&studentID&"' and card = '"&card&"' and college = '" & college & "'",conn,1,3
	if rs.EOF then
  		response.Write("����ѧ�Ż������֤���������,����������")
		response.End
	else
		response.Write(rs("password"))
	End if
	rs.Close
	set rs=nothing
	Call CloseConn()
%>