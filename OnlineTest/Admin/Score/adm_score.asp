<!--#include file="../../conn.asp"-->
<link rel="stylesheet" type="text/css" href="../../Style.css">
<%
if session("managerID")="" then
	response.write "您还没有登录,请重新登录!"
	response.end
end if
%>
<%
set rst=server.createobject("adodb.recordset")
sql="select * from [score] order by studentID"
rst.open sql,conn,1,3
%>
<table width="768" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="100%" height="25"><%       
	if Not(rst.bof and rst.eof) then'判别数据表中是否为空记录
			NumRecord=rst.recordcount
			rst.pagesize=10
			NumPage=rst.Pagecount
			if request("page")=empty then 
			NoncePage=1
		else
		if Cint(request("page"))<1 then
			NoncePage=1
		else
			NoncePage=request("page")
		end if
		if Cint(Trim(request("page")))>Cint(NumPage) then NoncePage=NumPage
	end if
else
	NumRecord=0
	NumPage=0
	NoncePage=0
	end if
%>
        <table border="0" width="768" bordercolorlight="#000000" cellspacing="1" cellpadding="0" bordercolordark="#FFFFFF">
          <tr>
            <td width="83" height="25" align="center" bgcolor="#58CCE9">学生姓名</td>
            <td width="84" align="center" bgcolor="#58CCE9">学生学号</td>
            <td width="84" align="center" bgcolor="#58CCE9">试卷名称</td>
            <td width="84" align="center" bgcolor="#58CCE9">选择题得分</td>
            <td width="84" align="center" bgcolor="#58CCE9">判断题得分</td>
            <td width="84" align="center" bgcolor="#58CCE9">填空题得分</td>
            <td width="84" align="center" bgcolor="#58CCE9">总分</td>
            <td width="84" align="center" bgcolor="#58CCE9">修改</td>
            <td width="77" align="center" bgcolor="#58CCE9">删除</td>
          </tr>
            <%if Not(rst.bof and rst.eof) then
	rst.move (Cint(NoncePage)-1)*10,1
	for i=1 to rst.pagesize
%>

<%
	'在学生信息表中通过学号得到学生姓名
	studentIDID=rst("studentID")
	set rst_2=server.createobject("adodb.recordset")
	sql_2="select * from [student] where studentID='" & studentIDID & "'" 
	rst_2.open sql_2,conn,1,3
%>

          <tr>
            <td width="83" height="25" align="center"><%=rst_2("name")%></td>
            <td width="84" align="center"><%=rst("studentID")%></td>
            <td width="84" align="center"><%=rst("course")%></td>
            <td width="84" align="center"><%=rst("score_chose")%></td>
            <td width="84" align="center"><%=rst("score_ture")%></td>
            <td width="84" align="center"><%=rst("score_make")%></td>
            <td width="84" align="center"><%=rst("score_total")%></td>
            <td width="84" align="center"><a href=mod_score.asp?id=<%=rst("ID")%>>修改</a></td>
            <td width="77" align="center"><a href=del_score.asp?id=<%=rst("ID")%>>删除</a></td>
          </tr>
           <%		 		rst.movenext
			   		if rst.eof then exit for
					next
else
	response.write "<tr><td colspan=13><marquee scrolldelay=120 behavior=alternate>没有找到任何记录!!!</marquee></td></tr>"
end if	

rst.close
set rst=nothing

%>
        </table>
</table>

<table width="768" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
          <td height="25"> 
            
      <div align="right"> 
        <input type="hidden" name="page" value="<%=NoncePage%>">
<%
if NoncePage>1 then
	response.write "<a href=adm_stu.asp?page=1>首 页</a>&nbsp;|&nbsp;<a href=adm_stu.asp?page="&NoncePage-1&">上一页</a>&nbsp|"
else
	response.write "首 页&nbsp;|&nbsp;上一页&nbsp|"
end if
if Cint(Trim(NoncePage))<Cint(Trim(NumPage)) then
	response.write "<a href=adm_stu.asp?page="&NoncePage+1&">&nbsp;下一页</a>&nbsp;|&nbsp;<a href=adm_stu.asp?page="&NumPage&">尾 页</a>"
else
	response.write "&nbsp;下一页&nbsp;|&nbsp;尾 页"
end if
%>
              &nbsp;页次：<font color="#0033CC"><%=NoncePage%></font>/<font color="#0033CC"><%=NumPage%></font> 
              共<font color="#0033CC"><%=NumRecord%></font>条记录&nbsp; </div>                        
    </td>
  </tr>
</table>