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
        <form method="POST" action="add_tea1.asp" name="add_tea">
          <table border="0" width="100%" bordercolorlight="#000000" cellspacing="0" cellpadding="5" bordercolordark="#FFFFFF">
            <tr>
              <td width="100%" colspan="2">
                <p align="center">添加教师信息</td>
            </tr>
            <tr>
              <td width="37%" align="right" valign="top">姓名：</td>
              <td width="63%" align="left"><input type="text" name="name_tea" size="20"></td>
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
              <td width="37%" align="right">用户名：</td>
              <td width="63%" align="left"><input type="text" name="username" size="20"></td>
            </tr>
            <tr>
              <td width="37%" align="right">密码：</td>
              <td width="63%" align="left"><input type="text" name="password" size="20"></td>
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
