
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
      <td width="400" height="20">보호단체이름</td>
      <td width="100" height="20">기부금액</td>
      <td width="200" height="20">기부날짜</td>
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
   Dim rid, pname, dprice, ddate, pnum
   
   rid = session("id_session")
   sql ="SELECT * FROM PROTECTIONORGANIZATION AS P, MEMBER AS M, DONATE AS D WHERE M.id='"&rid&"' AND D.id=M.id AND P.Pnumber=D.Pnumber ORDER BY DonateDate DESC"
   Set Rs=Dbcon.Execute(sql)
   do while not(Rs.Eof)
      pname=Rs("Pname")
      gprice=Rs("DonatePrice")
	  ddate=Rs("DonateDate")
	  
      Response.write("<tr>")
      Response.write("<td width='400' height='20'> "&pname&" </td>")
      Response.write("</td>")
      Response.write("<td width='100' height='20'> "&gprice&" </td>")
      
	  Response.write("</td>")
      Response.write("<td width='200' height='20'> "&ddate&" </td>")
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

