<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题文档</title>
</head>
<body>
	<Script Language=JavaScript>
	function doSubmit()
	{
		if (document.form_chaxun.college.value=="")
		{
			alert("请选择所在学院！");
			document.form_chaxun.college.focus();
			return false;
		}
		if (document.form_chaxun.studentID.value=="")
		{
				alert("请输入学院学号!");
				document.form_chaxun.studentID.focus();
				return false;
		}
		if (document.form_chaxun.card.value=="")
		{
			alert("请输入身份证号!");
			document.form_chaxun.card.focus();
			return false;
			
		}
		if (document.form_chaxun.checkbox.checked==false)
		{
			alert("请阅读完细则后在前面打勾");
			document.form_register.checkbox.focus();
			return false;
		}
	}
	</Script>
<table width="960" border="0" cellspacing="0" cellpadding="0" align="center">
		<tr>
		<td height="30" colspan="2" align="center"><strong>考 生 查 询</strong></td>
		</tr>
  	<tr>
    <td><form id="form_register" name="form_chaxun" method="post" action="Check\CheckChaxun.asp" onsubmit="return doSubmit();">
     	<p align="center">所在学院：　<select name="college" style="width:140px;height:23px;">
        	<option value="" selected="selected">...</option>
            <option value="计算机学院">计算机学院</option>
            <option value="运筹与管理学院">运筹与管理学院</option>
            <option value="东方语言学院">东方语言学院</option>
            <option value="音乐学院">音乐学院</option>
            <option value="美术学院">美术学院</option>
          </select>
        </p>
        <p align="center">学院学号：　<input type="text" name="studentID" style="width:140px;height:16px;"/></p>
        <p align="center">身份证号：　<input type="text" name="card" style="width:140px;height:16px;"/></p>
        <p align="center">　　　　　　<textarea name="readme" cols="45" rows="3" readonly="readonly"">
        您必须为曲阜师范大学学生方可查询,因为这次考试系统仅仅被用于曲阜师范大学学业水平测试.
　　　　</textarea>
        </p>
        <p align="center">　　　　　<input type="checkbox" name="checkbox" value="1">我已经阅读上述细则</p>
        <p align="center"><input type="submit" name="sb" value="查询">
    </form></td>
  </tr>
</table>
</body>
</html>
