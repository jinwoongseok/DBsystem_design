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

    Dim rid, Bquantity, bgnumber, payment, gprice, newBuy_num, Datetime
	
    Datetime=date()&" "&Hour(Time())&":"&Minute(Time())
    rid = session("id_session")
    bgnumber = request("Gnumber")
   Bquantity = request("Gcount")

   sql= "select price from goods where Gnumber= '" & bgnumber & "'"
   Set Rs=Dbcon.Execute(sql)
   gprice=Rs("price")
   payment=gprice*Bquantity
   
   if bgnumber = ""  then
        Response.Write "<script> alert('용품번호는 필수 입력 항목입니다.'); history.back(-1);</script>"
        Response.end
    End if

    if Bquantity = "" then
        Response.Write "<script> alert('수량은 필수 입력 항목입니다.'); history.back(1);</script>"
        Response.end
    End if
    
    sql1 = "select count(*) from GOODS where Gnumber = '" & bgnumber & "'"

    Set Rs1 = Dbcon.Execute(sql1)

    if Rs1("") = 0 then
        Response.Write "<script> alert('일치하는 물품번호가 없습니다.'); history.back(-1);</script>"
        Response.end
    End if
   sql2="select count(*)+1 from BUY"
   Set Rs2=Dbcon.Execute(sql2)
   newBuy_num=Rs2("")
   sql3="insert into BUY(Gnumber, id, Bnumber, BuyDate, Quantity) values('{bgnumber}','{rid}','{newBuy_num}','{BuyDate}','{Bquantity}')"
   sql3=Replace(sql3,"{bgnumber}",bgnumber)
   sql3=Replace(sql3,"{rid}",rid)
   sql3=Replace(sql3,"{newBuy_num}", newBuy_num)
   sql3=Replace(sql3,"{BuyDate}",Datetime)
   sql3=Replace(sql3,"{Bquantity}",Bquantity)
   
   Set Rs3=Dbcon.Execute(sql3)
   Response.Write "<script>alert('용품구매 성공! 결제금액은 "&payment&" ');</script>"
   Response.Write "<script>location.href='home.asp';</script>"  '구매된거 보여준거 하는게 좋으듯
  
    Dbcon.Close()
    Set Dbcon = Nothing
    Set Rs = Nothing
    
%>