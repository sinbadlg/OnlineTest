<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%	
	response.Write("<font color=red>������ˣ�</font>")
	session("start_time") = now()  
	response.write("<script>location.href = 'exam_begin.asp';</script>")
%>

