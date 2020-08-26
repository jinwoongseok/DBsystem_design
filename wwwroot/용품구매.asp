
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
      <td width="100" height="20">용품번호</td>
      <td width="300" height="20">이름</td>
      <td width="150" height="20">가격</td>
      <td width="150" height="20">분류</td>
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
   Dim rid, bgnumber, bgname, bgprice, bgpurpose
   
   rid = session("id_session")
   sql ="SELECT * FROM GOODS AS G ORDER BY G.Gnumber ASC"
   Set Rs=Dbcon.Execute(sql)
   do while not(Rs.Eof)
      bgnumber=Rs("Gnumber")
       bgname=Rs("Gname")
      bgprice=Rs("price")
      bgpurpose=Rs("purpose")
      
      Response.write("<form action='용품정보.asp', method = 'get'>")
      Response.write("<tr>")
      Response.write("<td width='100' height='20'> "&bgnumber&" </td>")
      Response.write("</td>")
      Response.write("<td width='300' height='30'> <input type = 'submit' name='bgname' value='"&bgname&"' </td>")
      
	  Response.write("</td>")
      Response.write("<td width='150' height='20'> "&bgprice&" </td>")
      Response.write("</td>")
      Response.write("<td width='150' height='20'> "&bgpurpose&" </td>")
      Response.write("</tr>")
	    
      Response.write("</form>")
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
            <form action="용품결제.asp" method="post">
               <td><input type="text" name="Gnumber" placeholder="용품번호 입력"/></td>
			   <td><input type="text" name="Gcount" placeholder="수량 입력"/></td>
               <td><input type="SUBMIT" value="구매하기"></td>   
            </form>      
                </td> 
         </tr>
      </table>
</span>
</div>

</center>
</center>
</body>

