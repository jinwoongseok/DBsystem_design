
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
      <td width="150" height="20">게시물번호</td>
      <td width="300" height="20">제목</td>
      <td width="250" height="20">작성일</td>
      <td width="150" height="20">작성자</td>
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
   Dim rid, fpnumber, fptitle, fpdate, fpwriter
   
   rid = session("id_session")

   sql ="SELECT * FROM FREEPOST AS F, MEMBER AS M WHERE M.id=F.id ORDER BY F.WriteDate DESC"
   Set Rs=Dbcon.Execute(sql)
   do while not(Rs.Eof)
	  fpnumber=Rs("Fnumber")
      fptitle=Rs("Ftilte")
      fpdate=Rs("WriteDate")
      fpwriter=Rs("id")
      Response.write("<form action='게시글내용.asp', method = 'get'>")
      Response.write("<tr>")
      Response.write("<td width='150' height='20'> <input type = 'submit' name='fpnumber' value='"&fpnumber&"' </td>")
      Response.write("</td>")
      Response.write("<td width='300' height='20'> "&fptitle&" </td>")
	  Response.write("</td>")
      Response.write("<td width='250' height='20'> "&fpdate&" </td>")
      Response.write("</td>")
      Response.write("<td width='150' height='20'> "&fpwriter&" </td>")
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
            <form action="게시글검색.asp" method="post">
               <td><input type="text" name="fptitle" placeholder="제목 입력"/></td>
               <td><input type="SUBMIT" value="검색"></td>
            </form>      
            </td> 
			<td>
            <form action="게시글작성.asp" method="post">
               <td><input type="SUBMIT" value="작성"></td>
            </form>      
            </td>
         </tr>
      </table>
</span>
</div>

</center>
</center>
</body>

