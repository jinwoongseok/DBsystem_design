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
	
    Dim rid, Cquestion,Canswer,Creview,vid,Datetime,Cid
	
    Datetime=date()&" "&Hour(Time())&":"&Minute(Time())
    rid = session("id_session")
    Cquestion = request("qq")
    vid = session("Vnum_session")
   
   if Cquestion = ""  then
        Response.Write "<script> alert('내용을 입력하세요'); history.back(-1);</script>"
        Response.end
    End if
   
  sql="select count(*)+1 from CONSULT"
   Set Rs=Dbcon.Execute(sql)
   Cid=Rs("")
 sql="insert into CONSULT(id,Vnumber,question,ConsultDate,Cnumber) values('{rid}','{vid}','{Cquestion}','{Datetime}','{Cid}')"
    
   sql=Replace(sql,"{rid}",rid)
   sql=Replace(sql,"{vid}",vid)
   sql=Replace(sql,"{Cquestion}",Cquestion)  
   sql=Replace(sql,"{Cid}",Cid)
  
   sql=Replace(sql,"{Datetime}",Datetime)
   
   Set Rs=Dbcon.Execute(sql)
   Response.Write "<script>alert('상담 신청완료 ');</script>"
   Response.Write "<script>location.href='home.asp';</script>"  '구매된거 보여준거 하는게 좋으듯
  
    Dbcon.Close()
    Set Dbcon = Nothing
    Set Rs = Nothing
    
%>