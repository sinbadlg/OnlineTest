<%option explicit
Response.Buffer = True 
Response.Expires = -1
Response.ExpiresAbsolute = Now() - 1 
Response.Expires = 0 
Response.CacheControl = "no-cache"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
<link rel="stylesheet" type="text/css" href="../Style.css">
<script type="text/javascript">
<!--
if(top!=self){
  top.location="Login.asp";
}
//-->
</script>
</head>
<body>
<br />
<br />
<form name="frmLogin" action="Checklogin.asp" method="post">
<table  align="center" cellspacing="1" cellpadding="0" border="0" bgcolor="#FFFFFF">
	<tr>
		<td height="30" colspan="2" align="center"><strong>�� �� �� ¼</strong></td>
	</tr>
	<tr>
		<td width="380" height="28" align="right">�˻���</td>
		<td width="551" align="left">&nbsp;<input name="managerID" class="text" type="text" style="width:150px; height:15px;"></td>
	</tr>
	<tr>
		<td width="380" height="28" align="right">���룺</td>
		<td align="left">&nbsp;<input name="managerpwd" class="text" type="password" style="width:150px; height:15px;"></td>
	</tr>
	<tr>
		<td width="380" height="28" align="right">��֤�룺</td>
		<td align="left">&nbsp;<input name="verifycode" class="text" type="text" style="width:50px; height:15px;">&nbsp;&nbsp;<img src="../Images/GetCode.asp"></td>
	</tr>
	<tr>
		<td height="50" colspan="2" align="center">
			<input type="submit" value="��&nbsp;¼">&nbsp;&nbsp;
			<input type="reset" value="��&nbsp;��">
		</td>
	</tr>
</table>
</form>
</body>
</html>