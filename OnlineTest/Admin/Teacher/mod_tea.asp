<!--#include file="../../conn.asp"-->
<link rel="stylesheet" type="text/css" href="../../Style.css">
<%
dim id
id=trim(request("id"))

set rs=server.createobject("adodb.recordset")
sql="select * from [teacher] where id="& id
rs.open sql,conn,1,1
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>�޸Ľ�ʦ��Ϣ</title>

</head>

<body>

<div align="center">
  <center>
  <table border="0" width="400">
    <tr>
      <td width="100%">
        <form method="POST" action="mod_tea2.asp" name="mod_tea">
                  <table border="1" width="100%" bordercolorlight="#000000" cellspacing="0" cellpadding="5" bordercolordark="#FFFFFF">
            <tr>
              <td width="100%" colspan="2">
                <p align="center">�޸Ľ�ʦ��Ϣ</td>
            </tr>
            <tr>
              <td width="61%" colspan="2"><input type="hidden" name="id" size="20" value="<%=rs("ID")%>" readonly></td>
            </tr>
            <tr>
              <td width="39%" align="right">������</td>
              <td width="61%"><input type="text" name="name_tea" size="20" value="<%=rs("name_tea")%>"></td>
            </tr>
            <tr>
              <td width="39%" align="right">����ѧԺ��</td>
              <td width="61%"><input type="text" name="college" size="20" value="<%=rs("college")%>"></td>
            </tr>
             <tr>
              <td width="39%" align="right">�û�����</td>
              <td width="61%"><input type="text" name="username" size="20" value="<%=rs("username")%>"></td>
            </tr>
             <tr>
              <td width="39%" align="right">���룺</td>
              <td width="61%"><input type="text" name="password" size="20" value="<%=rs("password")%>"></td>
            </tr>
            <tr>
              <td width="100%" colspan="2" align="right"><input type="submit" value="�ύ" name="B1"><input type="reset" value="��д" name="B2"></td>
            </tr>
          </table>
          <p>��</p>
        </form>
        <p>��</td>
    </tr>
    <%rs.close%>
  </table>
  </center>
</div>

</body>

</html>
