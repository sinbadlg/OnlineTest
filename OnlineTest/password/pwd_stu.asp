<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="javascript">
	function dosubmit()
	{
		if (document.form_pwd.pwd_jiu.value=="" || document.form_pwd.pwd_new.value=="" || document.form_pwd.pwd_query.value=="")
		{
			alert("������Ĳ���Ϊ��!");
			document.form_pwd.pwd_jiu.focus();
			return false;
		}
		if (document.form_pwd.pwd_new.value!=document.form_pwd.pwd_query.value)
		{
			alert("������Ķ��������벻һ��,����������");
			document.form_pwd.pwd_new.foucs();
			return false;
		}
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�����޸�</title>
<link rel="stylesheet" type="text/css" href="../Style.css">
</head>
<body>
<br />
<br />
<form name="form_pwd" action="../Check/checkpwd_stu.asp" method="post" onsubmit="return dosubmit();">
<table  align="center" cellspacing="1" cellpadding="0" border="0" bgcolor="#FFFFFF">
	<tr>
		<td height="30" colspan="2" align="center"><strong>�� �� �� ��</strong></td>
	</tr>
	<tr>
		<td width="380" height="28" align="right">�����룺</td>
		<td width="551" align="left">&nbsp;<input name="pwd_jiu" class="text" type="password" style="width:150px; height:15px;"></td>
	</tr>
	<tr>
		<td width="380" height="28" align="right">�����룺</td>
		<td align="left">&nbsp;<input name="pwd_new" class="text" type="password" style="width:150px; height:15px;"></td>
	</tr>
	<tr>
		<td width="380" height="28" align="right">ȷ�������룺</td>
		<td align="left">&nbsp;<input name="pwd_query" class="text" type="password" style="width:150px; height:15px;"></td>
	</tr>
	<tr>
		<td height="50" colspan="2" align="center">
			<input type="submit" value="ȷ&nbsp;��">&nbsp;&nbsp;
			<input type="reset" value="��&nbsp;��">
		</td>
	</tr>
</table>
</form>
</body>
</html>
