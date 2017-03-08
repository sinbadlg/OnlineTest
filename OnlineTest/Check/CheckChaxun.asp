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
  		response.Write("您的学号或者身份证号输入错误,请重新输入")
		response.End
	else
		response.Write(rs("password"))
	End if
	rs.Close
	set rs=nothing
	Call CloseConn()
%>