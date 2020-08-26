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
   Dim rid, bgnumber, bgname, bgprice, bgpurpose,bgreview,bgDate
   
   rid = session("id_session")
   bgreview=request("Greview")
   bgname=session("Gname_session")
   sql = "select * from GOODS where Gname = '"&bgname&"';"

    Set Rs = Dbcon.Execute(sql)
	bgnumber= Rs("Gnumber")
	 sql1="SELECT count(*) FROM BUY WHERE id= '"&rid&"' AND Gnumber = '"&bgnumber&"';"
    Set Rs1=Dbcon.Execute(sql1)
	 if Rs1("") = 0 then
	 Response.Write "<script>alert('해당 물품을 구매하신 이력이 없습니다.');history.back(-1);</script>"
	else
	 
    sql2="UPDATE BUY SET Breview = '"&bgreview&"' WHERE id ='"&rid&"' AND Gnumber= '"&bgnumber&"'  ;"
   
   Set Rs2=Dbcon.Execute(sql2)
   Response.Write "<script>alert('입력이 완료 되었습니다.');</script>"
   Response.Write "<script>location.href='home.asp';</script>"  '구매된
    End if
		'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs1=Nothing
	Set Rs2=Nothing

%>