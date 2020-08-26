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
	
    Dim rid, Datetime, ftit, fcon, new_fnum
	
    Datetime=date()&" "&Hour(Time())&":"&Minute(Time())
    rid = session("id_session")
    ftit = request("ft")
    fcon = request("fc")
    if ftit = ""  then
        Response.Write "<script> alert('제목을 입력하세요'); history.back(-1);</script>"
        Response.end
    End if
    if fcon = ""  then
        Response.Write "<script> alert('내용을 입력하세요'); history.back(-1);</script>"
        Response.end
    End if
  sql="select count(*)+1 from FREEPOST"
   Set Rs=Dbcon.Execute(sql)
   new_fnum=Rs("")
   sql="insert into FREEPOST(Fnumber,Fcontents,id,WriteDate,Ftilte) values('{new_fnum}','{fcon}','{rid}','{Datetime}','{ftit}')"
    
   sql=Replace(sql,"{new_fnum}",new_fnum)
   sql=Replace(sql,"{fcon}",fcon)
   sql=Replace(sql,"{rid}",rid)  
   sql=Replace(sql,"{Datetime}",Datetime)
   sql=Replace(sql,"{ftit}",ftit)
   
   Set Rs=Dbcon.Execute(sql)
   Response.Write "<script>alert('게시글 작성완료 ');</script>"
   Response.Write "<script>location.href='자유게시판.asp';</script>"  '구매된거 보여준거 하는게 좋으듯
  
    Dbcon.Close()
    Set Dbcon = Nothing
    Set Rs = Nothing
    
%>