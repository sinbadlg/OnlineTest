<%@ LANGUAGE = VBScript.Encode %>
<%Session.Abandon()
Response.Write "<script language='javascript'>alert('你已成功退出！');location.href('index.asp');</script>"%>
