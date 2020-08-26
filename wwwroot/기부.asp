
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
<fieldset class="result_search" style="width:600" style="height:200">
<legend><strong font-size="14">유기동물 단체</strong></legend>
 <table class="best">
   <tr>
      <td width="100" height="20">단체번호</td>
      <td width="180" height="20">단체명</td>
      <td width="150" height="20">번호</td>
      <td width="200" height="20">위치</td>
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
   Dim rid, spnumber, spphone,spname , spaddress
   
   rid = session("id_session")
   sql ="SELECT * FROM PROTECTIONORGANIZATION; "
   Set Rs=Dbcon.Execute(sql)
   do while not(Rs.Eof)
      spnumber=Rs("Pnumber")
       spphone=Rs("Pname")
      spname=Rs("Pphone")
      spaddress=Rs("Paddress")
      
      Response.write("<form action='유기동물기부.asp' method = 'get'>")
      Response.write("<tr>")
      Response.write("<td width='100' height='20'> "&spnumber&" </td>")
      Response.write("</td>")
      Response.write("<td width='180' height='30'>'"&spphone&"' </td>")
      
	  Response.write("</td>")
      Response.write("<td width='150' height='20'> "&spname&" </td>")
      Response.write("</td>")
      Response.write("<td width='250' height='20'> "&spaddress&" </td>")
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
            <form action="유기동물기부.asp" method="post">
               <td><input type="text" name="ppnumber" placeholder="단체번호 입력"/></td>
			   <td><input type="text" name="pmoney" placeholder="금액 입력"/></td>
               <td><input type="SUBMIT" value="기부하기"></td>   
            </form>      
                </td> 
         </tr>
      </table>
</span>
</div>

</center>
</center>
</body>

