<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<meta http-equiv="refresh" content="1">
<%
if(session("start_time") = "")then
response.Redirect("exam_ready.asp")
response.End()
end if
	dim start_time,sec,min,hou
	start_time = session("start_time")
	sec = second(start_time)
	min = minute(start_time)
	hou = hour(start_time)
	sum = hou*3600 + min*60 + sec
	
	dim gettime
	gettime = session("exam_time")
	gettime = gettime*60	
	
	dim real_time,sec2,min2,hou2
	real_time = now()
	sec2 = second(real_time)
	min2 = minute(real_time)
	hou2 = hour(real_time)	
	sum2 = hou2*3600 + min2*60 + sec2
	
	sum_cha = sum2 - sum	
	ddd = gettime - sum_cha
	aaa =ddd\3600
	bbb = (ddd mod 3600)\60 + 1
	
	if(bbb = 1)then
	ccc = (ddd mod 3600) mod 60
	if(ccc = 0)then
	bbb = 0
	end if
	end if
	
	if(bbb < 10)then
	bbb = "0"&bbb
	end if
	if(aaa < 10)then
	aaa = "0"&aaa
	end if
	if(ddd = 0)then
	%>
	<script>
	parent.Examination.submit();
	</script>
	<%
	end if
	response.Write("<body topmargin=0 leftmargin=0><font style='font-size:9pt'>"&aaa&":"&bbb&"</font></body>")
	%>

