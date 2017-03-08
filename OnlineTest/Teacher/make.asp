<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../conn.asp"-->
<html>
<head>
<script language="javascript" src="../JS/jquery-1.4.3.min.js"></script>
<script>
function getURL(sValue)
{
window.location.href = sValue+".asp";
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>在线出卷</title>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body topmargin="0" leftmargin="0">
<form name="chose" action="action_make.asp" method="post">
<table cellpadding="0" cellspacing="0" border=0 bordercolor="#FFFFFF" bordercolordark="#1985DB" bordercolorlight="#FFFFFF" align="center" width="100%"> 
                                      <tr align=center> 
                                        <td width="10%"height="24" nowrap>考试题型</td>
                                        <td width="15%" nowrap>问题</td> 
                                      </tr> 
                                      <tr align=center> 
                                        <td height="25" nowrap>
                                        <select name="style_exam" onChange="getURL(this.value)">
                                        <option value="chose">选择题
                                        <option value="ture">判断题
                                        <option value="make" selected>填空题
                                        </select>
                                        </td> 
                                        <td><input type="text" name="problem" align="middle"></td> 
   									 </tr>                                  
</table>
<p align="center"><input type="submit" name="submit" align="middle" value="&nbsp;提&nbsp;交&nbsp;题&nbsp;目">　　　　<input type="reset" name="reset" align="middle" value="完&nbsp;成&nbsp;试&nbsp;卷&nbsp;" onClick="window.location.href='exam_paper.asp'
"></p>
</form>
</body>
</html>
