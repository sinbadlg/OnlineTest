<!--#include file="../../conn.asp"-->
<link rel="stylesheet" type="text/css" href="../../Style.css">
<%
if session("managerID")="" then
	response.write "您还没有登录,请重新登录!"
	response.end
end if
%>
<table width="768" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="100%">
        <form method="POST" action="add_stu1.asp" name="add_stu">
          <table border="0" width="100%" bordercolorlight="#000000" cellspacing="0" cellpadding="5" bordercolordark="#FFFFFF">
            <tr>
              <td width="100%" colspan="2">
                <p align="center">添加学生信息</td>
            </tr>
            <tr>
              <td width="37%" align="right" valign="top">学号：</td>
              <td width="63%" align="left"><input type="text" name="studentID" size="20"></td>
            </tr>
            <tr>
              <td width="37%" align="right">身份证号：</td>
              <td width="63%" align="left"><input name="card" type="text"  size="20"></td>
            </tr>
            <tr>
              <td width="37%" align="right">密码：</td>
              <td width="63%" align="left"><input type="text" name="password" size="20"></td>
            </tr>
            <tr>
              <td width="37%" align="right">姓名：</td>
              <td width="63%" align="left"><input type="text" name="name" size="20"></td>
            </tr>
            <tr>
            <tr>
              <td width="37%" align="right" valign="top">性别：</td>
              <td width="63%" align="left">
              <select name="sex">
              <option selected="selected" value="男"> 男
              <option value="女">女
              </select>
              </td>
            </tr>
            <tr>
              <td width="37%" align="right" valign="top">所在学院：</td>
              <td width="63%" align="left">
              <select name="college">
                <option value="" selected="selected">...
                <option value="计算机学院">计算机学院
                <option value="运筹与管理学院">运筹与管理学院
                <option value="东方语言学院">东方语言学院
                <option value="音乐学院">音乐学院
                <option value="美术学院">美术学院
              </select>
              </td>
            </tr>
            <tr>
              <td width="100%" colspan="2">
                <p align="center"><input type="submit" value="提交" name="B1"><input type="reset" value="重写" name="B2"></td>
            </tr>
          </table>
        </form>
      </td>
    </tr>
</table>
  </center>
</div>
</body>

</html>
