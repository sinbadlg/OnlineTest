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
        <form method="POST" action="add_message1.asp" name="add_stu">
          <table border="0" width="100%" bordercolorlight="#000000" cellspacing="0" cellpadding="5" bordercolordark="#FFFFFF">
            <tr>
              <td width="100%" colspan="2">
                <p align="center">添加公告</td>
            </tr>
            <tr align="center">
              <td width="37%" align="right" valign="top">      公告内容：</td>
              <td width="63%" align="left"><input type="text" name="message" size="30"></td>
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
