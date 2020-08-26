<%@Language="VBScript" CODEPAGE="65001" %>

<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>
<%
  
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   
   if Dbcon.state<> 1 then
       Response.write
       Response.end
   End if 
   Dim rid, vvnum, cre
   
   rid = session("id_session")
   vvnum=session("vnum_session")
   cre=request("cr")
	 
   sql="UPDATE CONSULT SET Creview = '"&cre&"' WHERE id ='"&rid&"' AND Vnumber= '"&vvnum&"'  ;"
   
   Set Rs=Dbcon.Execute(sql)
   Response.Write "<script>alert('입력이 완료 되었습니다.');</script>"
   Response.Write "<script>location.href='마이_상담기록.asp';</script>"  '구매된
		'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing

%>