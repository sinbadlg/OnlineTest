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
        <form method="POST" action="add_stu1.asp" name="add_stu">
          <table border="0" width="100%" bordercolorlight="#000000" cellspacing="0" cellpadding="5" bordercolordark="#FFFFFF">
            <tr>
              <td width="100%" colspan="2">
                <p align="center">���ѧ����Ϣ</td>
            </tr>
            <tr>
              <td width="37%" align="right" valign="top">ѧ�ţ�</td>
              <td width="63%" align="left"><input type="text" name="studentID" size="20"></td>
            </tr>
            <tr>
              <td width="37%" align="right">���֤�ţ�</td>
              <td width="63%" align="left"><input name="card" type="text"  size="20"></td>
            </tr>
            <tr>
              <td width="37%" align="right">���룺</td>
              <td width="63%" align="left"><input type="text" name="password" size="20"></td>
            </tr>
            <tr>
              <td width="37%" align="right">������</td>
              <td width="63%" align="left"><input type="text" name="name" size="20"></td>
            </tr>
            <tr>
            <tr>
              <td width="37%" align="right" valign="top">�Ա�</td>
              <td width="63%" align="left">
              <select name="sex">
              <option selected="selected" value="��"> ��
              <option value="Ů">Ů
              </select>
              </td>
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
