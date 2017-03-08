<%
Response.CacheControl = "no-cache"
Response.Expires = 0 
'验证访问权限
If(Session("studentID") = "" or Session("college") = "")Then
	Response.Redirect("../index.asp")
	Response.End()
End If
If Application(Session("student"))=Session.SessionID then
Else
  Response.Write("<script language='javascript'>alert('您已经登录,当前页将自动关闭!');window.close();</script>")
  response.End()
end if

%>
