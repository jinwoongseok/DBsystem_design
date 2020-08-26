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
   Dim rid, new_cnum, ccom, fnum, wid
   wid=session("wid_session")
   rid = session("id_session")
   ccom=request("com")
   fnum=session("fpnum_session")
    if ccom = ""  then
        Response.Write "<script> alert('댓글 내용이 없습니다.'); history.back(-1);</script>"
        Response.end
    End if
	
   sql1="select count(*)+1 from COMMENT"
   Set Rs1=Dbcon.Execute(sql1)
   new_cnum=Rs1("")
   sql2="insert into COMMENT values('"&new_cnum&"','"&ccom&"','"&fnum&"','"&wid&"','"&rid&"')"

   
   Set Rs2=Dbcon.Execute(sql2)
    Response.Write "<script> location.href='자유게시판.asp';</script>"
		'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs1=Nothing
	Set Rs2=Nothing

%>