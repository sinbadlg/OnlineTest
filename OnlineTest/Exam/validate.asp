<%
Response.CacheControl = "no-cache"
Response.Expires = 0 
'��֤����Ȩ��
If(Session("studentID") = "" or Session("college") = "")Then
	Response.Redirect("../index.asp")
	Response.End()
End If
If Application(Session("student"))=Session.SessionID then
Else
  Response.Write("<script language='javascript'>alert('���Ѿ���¼,��ǰҳ���Զ��ر�!');window.close();</script>")
  response.End()
end if

%>
