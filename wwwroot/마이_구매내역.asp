
<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css"> 
 
 #footer{
  position:fixed;
  left:400px;
  bottom:0px;
  width:100%;
  background:orange;
  line-height:10px;
  color:white;
 }
 #footer span{padding-left:20px;}
 /* fur ie6*/
 * html #footer{
  position:absolute;
  top:expression(((footer.offsetHeight)+(document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body.clientHeight)+(ignoreMe = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop))+'px');
 } 
 .Best
{
   position:relative;
   left:400;
}
</style>
</head>

 <body>
 <table class="best">
   <tr>
      <td width="400" height="20">용품이름</td>
      <td width="100" height="20">가격</td>
      <td width="200" height="20">구매일시</td>
      <td width="100" height="20">구매번호</td>
   </tr>
</table>
<br/><br/>
<table class="best">

<%
  
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   
   if Dbcon.state<> 1 then
       Response.write
       Response.end
   End if
   Dim rid, bgname, gprice, bquantity, bdate, bnum, payment
   
   rid = session("id_session")
   sql ="SELECT * FROM BUY AS B, GOODS AS G WHERE B.id='"&rid&"' AND B.Gnumber=G.Gnumber ORDER BY BuyDate DESC"
   Set Rs=Dbcon.Execute(sql)
   do while not(Rs.Eof)
      bgname=Rs("Gname")
      gprice=Rs("price")
      bquantity=Rs("Quantity")
	  bdate=Rs("BuyDate")
	  bnum=Rs("Bnumber")
	  
	  payment=gprice*bquantity
      Response.write("<tr>")
      Response.write("<td width='400' height='20'> "&bgname&" </td>")
      Response.write("</td>")
      Response.write("<td width='100' height='20'> "&payment&" </td>")
      
	  Response.write("</td>")
      Response.write("<td width='200' height='20'> "&bdate&" </td>")
      Response.write("</td>")
      Response.write("<td width='100' height='20'> "&bnum&" </td>")
      Response.write("</tr>")
	  
      Rs.Movenext
   Loop


   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
   
%>

<center>
<div id="footer"><span>
      <table class= "best">
         <tr>
            <td colspan="4" align="right">
			</td> 
         </tr>
      </table>
</span>
</div>

</center>
</center>
</body>

