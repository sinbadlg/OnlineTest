<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>�ޱ����ĵ�</title>
</head>
<body>
	<Script Language=JavaScript>
	function doSubmit()
	{
		if (document.form_chaxun.college.value=="")
		{
			alert("��ѡ������ѧԺ��");
			document.form_chaxun.college.focus();
			return false;
		}
		if (document.form_chaxun.studentID.value=="")
		{
				alert("������ѧԺѧ��!");
				document.form_chaxun.studentID.focus();
				return false;
		}
		if (document.form_chaxun.card.value=="")
		{
			alert("���������֤��!");
			document.form_chaxun.card.focus();
			return false;
			
		}
		if (document.form_chaxun.checkbox.checked==false)
		{
			alert("���Ķ���ϸ�����ǰ���");
			document.form_register.checkbox.focus();
			return false;
		}
	}
	</Script>
<table width="960" border="0" cellspacing="0" cellpadding="0" align="center">
		<tr>
		<td height="30" colspan="2" align="center"><strong>�� �� �� ѯ</strong></td>
		</tr>
  	<tr>
    <td><form id="form_register" name="form_chaxun" method="post" action="Check\CheckChaxun.asp" onsubmit="return doSubmit();">
     	<p align="center">����ѧԺ����<select name="college" style="width:140px;height:23px;">
        	<option value="" selected="selected">...</option>
            <option value="�����ѧԺ">�����ѧԺ</option>
            <option value="�˳������ѧԺ">�˳������ѧԺ</option>
            <option value="��������ѧԺ">��������ѧԺ</option>
            <option value="����ѧԺ">����ѧԺ</option>
            <option value="����ѧԺ">����ѧԺ</option>
          </select>
        </p>
        <p align="center">ѧԺѧ�ţ���<input type="text" name="studentID" style="width:140px;height:16px;"/></p>
        <p align="center">���֤�ţ���<input type="text" name="card" style="width:140px;height:16px;"/></p>
        <p align="center">������������<textarea name="readme" cols="45" rows="3" readonly="readonly"">
        ������Ϊ����ʦ����ѧѧ�����ɲ�ѯ,��Ϊ��ο���ϵͳ��������������ʦ����ѧѧҵˮƽ����.
��������</textarea>
        </p>
        <p align="center">����������<input type="checkbox" name="checkbox" value="1">���Ѿ��Ķ�����ϸ��</p>
        <p align="center"><input type="submit" name="sb" value="��ѯ">
    </form></td>
  </tr>
</table>
</body>
</html>
