<!--#include file="../../conn.asp"-->
<link rel="stylesheet" type="text/css" href="../../Style.css">
<%
dim id
id=trim(request("id"))

set rs=server.createobject("adodb.recordset")
sql="select * from [score] where id="& id
rs.open sql,conn,1,1
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>修改成绩</title>

</head>

<body>

<div align="center">
  <center>
  <table border="0" width="400">
    <tr>
      <td width="100%">
        <form method="POST" action="mod_score2.asp" name="mod_score">
                  <table border="1" width="100%" bordercolorlight="#000000" cellspacing="0" cellpadding="5" bordercolordark="#FFFFFF">
            <tr>
              <td width="100%" colspan="2">
                <p align="center">修改成绩</td>
            </tr>
            <tr>
              <td width="61%" colspan="2"><input type="hidden" name="id" size="20" value="<%=rs("ID")%>" readonly></td>
            </tr>
            <tr>
              <td width="39%" align="right">学生学号：</td>
              <td width="61%"><input type="text" name="studentID" size="20" value="<%=rs("studentID")%>" readonly></td>
            </tr>
             <tr>
              <td width="39%" align="right">试卷名称：</td>
              <td width="61%"><input type="text" name="course" size="20" value="<%=rs("course")%>" readonly></td>
            </tr>
            <tr>
              <td width="39%" align="right">选择题得分：</td>
              <td width="61%"><input type="text" name="score_chose" size="20" value="<%=rs("score_chose")%>"></td>
            </tr>
            <tr>
              <td width="39%" align="right">判断题得分：</td>
              <td width="61%"><input type="text" name="score_ture" size="20" value="<%=rs("score_ture")%>"></td>
            </tr>
            <tr>
              <td width="39%" align="right">填空题得分：</td>
              <td width="61%"><input type="text" name="score_make" size="20" value="<%=rs("score_make")%>"></td>
            </tr>
            <tr>
              <td width="39%" align="right">总分：</td>
              <td width="61%"><input type="text" name="score_total" size="20" value="<%=rs("score_total")%>"></td>
            </tr>
            <tr>
              <td width="100%" colspan="2" align="right"><input type="submit" value="提交" name="B1"><input type="reset" value="重写" name="B2"></td>
            </tr>
          </table>
          <p>　</p>
        </form>
        <p>　</td>
    </tr>
    <%rs.close%>
  </table>
  </center>
</div>

</body>

</html>
