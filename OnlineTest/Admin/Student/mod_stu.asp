<!--#include file="../../conn.asp"-->
<link rel="stylesheet" type="text/css" href="../../Style.css">
<%
dim id
id=trim(request("id"))

set rs=server.createobject("adodb.recordset")
sql="select * from [student] where id="& id
rs.open sql,conn,1,1
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>�޸�ѧ����Ϣ</title>

</head>

<body>

<div align="center">
  <center>
  <table border="0" width="400">
    <tr>
      <td width="100%">
        <form method="POST" action="mod_stu2.asp" name="mod_stu">
                  <table border="1" width="100%" bordercolorlight="#000000" cellspacing="0" cellpadding="5" bordercolordark="#FFFFFF">
            <tr>
              <td width="100%" colspan="2">
                <p align="center">�޸�ѧ����Ϣ</td>
            </tr>
            <tr>
              <td width="61%" colspan="2"><input type="hidden" name="id" size="20" value="<%=rs("ID")%>" readonly></td>
            </tr>
            <tr>
              <td width="39%" align="right">ѧ�ţ�</td>
              <td width="61%"><input type="text" name="studentID" size="20" value="<%=rs("studentID")%>"></td>
            </tr>
             <tr>
              <td width="39%" align="right">���֤�ţ�</td>
              <td width="61%"><input type="text" name="card" size="20" value="<%=rs("card")%>"></td>
            </tr>
            <tr>
              <td width="39%" align="right">������</td>
              <td width="61%"><input type="text" name="name" size="20" value="<%=rs("name")%>"></td>
            </tr>
            <tr>
              <td width="39%" align="right">�Ա�</td>
              <td width="61%"><input type="text" name="sex" size="20" value="<%=rs("sex")%>"></td>
            </tr>
            <tr>
              <td width="39%" align="right">����ѧԺ��</td>
              <td width="61%"><input type="text" name="college" size="20" value="<%=rs("college")%>"></td>
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
