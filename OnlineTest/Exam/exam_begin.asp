<!--#include file="../Conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="../style.css">
<title>考试开始</title>
</head>
<script language="javascript">
window.status = "考试开始"
</script>
<script language=javascript>
function keydown(){
	if(event.keyCode==8){
		event.keyCode=0;
		event.returnValue=false;
		alert("当前设置不允许使用退格键");
	  }if(event.keyCode==13){
		event.keyCode=0;
		event.returnValue=false;
		alert("当前设置不允许使用回车键");
	  }if(event.keyCode==116){
		event.keyCode=0;
		event.returnValue=false;
		alert("当前设置不允许使用F5刷新键");
	  }if((event.altKey)&&((window.event.keyCode==37)||(window.event.keyCode==39))){
		event.returnValue=false;
		alert("当前设置不允许使用Alt+方向键←或方向键→");
	  }if((event.ctrlKey)&&(event.keyCode==78)){
	   event.returnValue=false;
	   alert("当前设置不允许使用Ctrl+n新建IE窗口");
	  }if((event.shiftKey)&&(event.keyCode==121)){
	   event.returnValue=false;
	   alert("当前设置不允许使用shift+F10");
	  }
}
</script>
<script language=javascript>
  function click() {
     event.returnValue=false;
	 alert("当前设置不允许使用右键！");
  }
  document.oncontextmenu=click;
</script>
<body  topmargin ="0" leftmargin = "0"  onkeydown="keydown()">
<%
'考试开始,获取考试ID和考试时间变量
id=session("exam_id")
exam_time=session("exam_time")
exam_totaltime=exam_time*60 
'考生开始考试，则将考试的初始结果插入到学生成绩表中
	
	sql="Insert into score(studentID,course,courseID,score_chose,score_ture,score_make,score_total) values('" & Session("studentID") & "','" & session("course") & "','" & id & "',0,0,0,0)"
	conn.execute(sql)
	
%>
<form action="exam_action.asp" method="post" name="exam_begin">
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<%set rs=Server.CreateObject("adodb.recordset")
rs.Open "select * from [course] where cstr(ID) = '"&id&"'",conn,1,1%> 
	<tr>
    <td height="50" align="center" style="font-size:14px; font-weight:bold;"><%=rs("course")%></td>
  </tr>
  <tr align=center valign=middle>
		<td width="23%" nowrap height=23 align=left bgcolor="#58CCE9">考试时间：
		<% =exam_time %>分钟
        剩余时间：<span id="endtime"><% =exam_totaltime %></span>

<script type="text/javascript">
    var CID = "endtime";
    if (window.CID != null) {
        var iTime = document.getElementById(CID).innerText;
        var Account;
        RemainTime();
    }
    function RemainTime() {
        var iDay, iHour, iMinute, iSecond;
        var sDay = "", sHour = "", sMinute = "", sSecond = "", sTime = "";
        if (iTime >= 0) {
            iDay = parseInt(iTime / 24 / 3600);
            if (iDay > 0) {
                sDay = iDay + "天";
            }
            iHour = parseInt((iTime / 3600) % 24);
            if (iHour > 0) {
                sHour = iHour + "小时";
            }
            iMinute = parseInt((iTime / 60) % 60);
            if (iMinute > 0) {
                sMinute = iMinute + "分钟";
            }
            iSecond = parseInt(iTime % 60);
            if (iSecond >= 0) {
                sSecond = iSecond + "秒";
            }
            if ((sDay == "") && (sHour == "")) {
                sTime = "<span style='color:darkorange'>" + sMinute + sSecond + "</font>";
            }
            else {
                sTime = sDay + sHour + sMinute + sSecond;
            }
            if (iTime == 0) {
                clearTimeout(Account);
                sTime = "<span style='color:green'>考试时间到,自动提交试卷</span>";
				document.exam_begin.submit();
               // document.getElementById('<%= imgBtnSubmit.ClientID %>').click(); // ImageButton 
               
            }
            else {
                Account = setTimeout("RemainTime()", 1000);
            }
            iTime = iTime - 1;
        }
        else {
            sTime = "<span style='color:red'>时间倒计时意外结束,发生错误,联系管理员!</span>";
        }
        document.getElementById(CID).innerHTML = sTime;
    }
 </script>

 </tr>
<%rs.Close
rs.Open "select * from [test] where t='选择题' and courseID = '"&id&"' order by ID asc",conn,1,1
if not rs.EOF then%>
  <tr>
    <td height="25" style="font-weight:bold;">一、选择题</td>
  </tr> 
  <%rs_1_num=1
  do while not rs.EOF%>
  <tr>
    <td height="22" style="font-weight:bold;"><%=rs_1_num & "、"%><%=rs("question")%></td>
  </tr>  
	<tr>
    <td><input name="chose_answer[<%=rs_1_num%>]" type="radio" value="<%=rs("choose1")%>" /><%=rs("choose1")%>&nbsp;&nbsp;&nbsp;&nbsp;<input name="chose_answer[<%=rs_1_num%>]" type="radio" value="<%=rs("choose2")%>" /><%=rs("choose2")%>&nbsp;&nbsp;&nbsp;&nbsp;<input name="chose_answer[<%=rs_1_num%>]" type="radio" value="<%=rs("choose3")%>" /><%=rs("choose3")%>&nbsp;&nbsp;&nbsp;&nbsp;<input name="chose_answer[<%=rs_1_num%>]" type="radio" value="<%=rs("choose4")%>" /><%=rs("choose4")%></td>
  </tr>
  <%rs_1_num=rs_1_num+1
	rs.MoveNext
	loop
End if
rs.Close%>

<%rs.Open "select * from [test] where t='判断题' and courseID = '"&id&"' order by ID asc",conn,1,1
if not rs.EOF then%>
  <tr>
    <td height="15"></td>
  </tr> 
  <tr>
    <td height="25" style="font-weight:bold;">二、判断题</td>
  </tr> 
  <%rs_3_num=1
  do while not rs.EOF%>
  <tr>
    <td height="22" style="font-weight:bold;"><%=rs_3_num & "、"%><%=rs("question")%></td>
  </tr>  
	<tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs("choose")%><input name="ture_answer[<%=rs_3_num%>]" type="radio" value="<%=rs("choose1")%>" /><%=rs("choose1")%>&nbsp;&nbsp;&nbsp;&nbsp;<input name="ture_answer[<%=rs_3_num%>]" type="radio" value="<%=rs("choose2")%>" /><%=rs("choose2")%></td>
  </tr>
  <%rs_3_num=rs_3_num+1
	rs.MoveNext
	loop
End if
rs.Close%>

<%rs.Open "select * from [test] where t='填空题' and courseID = '"&id&"' order by ID asc",conn,1,1
if not rs.EOF then%>
  <tr>
    <td height="10"></td>
  </tr> 
  <tr>
    <td height="25" style="font-weight:bold;">三、填空题</td>
  </tr> 
  <%rs_4_num=1
  do while not rs.EOF%>
  <tr>
    <td height="22" style="font-weight:bold;"><%=rs_4_num & "、"%><%=rs("question")%>&nbsp;<input name="make_answer[<%=rs_4_num%>]" type="text" style="width:100px;" /></td>
  </tr>  
  <%rs_4_num=rs_4_num+1
	rs.MoveNext
	loop
End if
rs.Close%>
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
  <tr>
    <td align="center"><input type="submit" value="提交试卷" /></td>
  </tr>
</table>
</form>
</body>
</html>
