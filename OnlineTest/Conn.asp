<%dim db
db="\DBPath\data_manager.mdb"
On Error Resume Next
dim ConnStr,Conn
ConnStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(db)
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open connstr
if Err then
  err.Clear
  Set Conn = Nothing
  Response.Write "���ݿ����ӳ�������Conn.asp�ļ��е����ݿ�������á�"
  Response.End
End if
sub CloseConn()
  On Error Resume Next
  if IsObject(Conn) Then
    conn.Close
    set conn=nothing
  End if
End sub%>