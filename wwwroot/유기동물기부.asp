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

    Dim rid, Pnum, newDonate_num, Dprice, Datetime
   
    Datetime=date()&" "&Hour(Time())&":"&Minute(Time())
    rid = session("id_session")
    Pnum = request("ppnumber")
    Dprice = request("pmoney")

   
    if  Pnum = ""  then
        Response.Write "<script> alert('유기동물 보호기관 번호는 필수 입력 항목입니다.'); history.back(-1);</script>"
        Response.end
    End if

    if  Dprice = "" then
        Response.Write "<script> alert('기부금액은 필수 입력 항목입니다.'); history.back(1);</script>"
        Response.end
    End if
    
    sql = "select count(*) from PROTECTIONORGANIZATION where Pnumber = '" & Pnum & "'"

    Set Rs = Dbcon.Execute(sql)

    if Rs("") = 0 then
        Response.Write "<script> alert('일치하는 보호기관 번호가 없습니다.'); history.back(-1);</script>"
        Response.end
    End if
    sql1="select count(*)+1 from DONATE"
    Set Rs1=Dbcon.Execute(sql1)
    newDonate_num=Rs1("")
    sql2="insert into Donate(id, Pnumber, DonatePrice, DonateDate, Dnumber) values('{rid}','{Pnum}','{Dprice}','{Datetime}','{newDonate_num}')"
    sql2=Replace(sql2,"{rid}",rid)
    sql2=Replace(sql2,"{Pnum}",Pnum)
    sql2=Replace(sql2,"{Dprice}", Dprice)
    sql2=Replace(sql2,"{Datetime}",Datetime)
    sql2=Replace(sql2,"{newDonate_num}",newDonate_num)
   
    Set Rs2=Dbcon.Execute(sql2)
    Response.Write "<script>alert('기부해주셔서 감사합니다. 기부금액은 "&Dprice&"입니다.');</script>"
    Response.Write "<script>location.href='home.asp';</script>"  '구매된거 보여준거 하는게 좋으듯
  
    Dbcon.Close()
    Set Dbcon = Nothing
    Set Rs = Nothing
    
%>