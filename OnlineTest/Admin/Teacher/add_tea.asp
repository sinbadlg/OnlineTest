<!--#include file="../../conn.asp"-->
<link rel="stylesheet" type="text/css" href="../../Style.css">
<%
if session("managerID")="" then
	response.write "����û�е�¼,�����µ�¼!"
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
                <p align="center">��ӽ�ʦ��Ϣ</td>
            </tr>
            <tr>
              <td width="37%" align="right" valign="top">������</td>
              <td width="63%" align="left"><input type="text" name="name_tea" size="20"></td>
            </tr>
            <tr>
              <td width="37%" align="right" valign="top">����ѧԺ��</td>
              <td width="63%" align="left">
              <select name="college">
                <option value="" selected="selected">...
                <option value="�����ѧԺ">�����ѧԺ
                <option value="�˳������ѧԺ">�˳������ѧԺ
                <option value="��������ѧԺ">��������ѧԺ
                <option value="����ѧԺ">����ѧԺ
                <option value="����ѧԺ">����ѧԺ
              </select>
              </td>
            </tr>
          	<tr>
              <td width="37%" align="right">�û�����</td>
              <td width="63%" align="left"><input type="text" name="username" size="20"></td>
            </tr>
            <tr>
              <td width="37%" align="right">���룺</td>
              <td width="63%" align="left"><input type="text" name="password" size="20"></td>
            </tr>
            <tr>
              <td width="100%" colspan="2">
                <p align="center"><input type="submit" value="�ύ" name="B1"><input type="reset" value="��д" name="B2"></td>
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
