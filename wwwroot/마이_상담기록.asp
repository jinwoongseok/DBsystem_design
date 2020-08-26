
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
   left:200;
}
</style>
</head>

 <body>
 <table class="best">
   <tr>
      <td width="100" height="20">수의사 번호</td>
      <td width="100" height="20">수의사 이름</td>
      <td width="500" height="20">질문내용</td>
      <td width="500" height="20">답변내용</td>
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
   Dim rid, vnum, vnam, vq, va
   
   rid = session("id_session")
   sql ="SELECT * FROM CONSULT AS C, MEMBER AS M, VET AS V WHERE M.id='"&rid&"' AND C.id=M.id AND V.Vnumber=C.Vnumber"
   Set Rs=Dbcon.Execute(sql)
   do while not(Rs.Eof)
      vnum=Rs("Vnumber")
      vnam=Rs("Vname")
      vq=Rs("question")
	  va=Rs("answer")
	  Response.write("<form action='상담후기작성.asp', method = 'get'>")
      Response.write("<tr>")
	Response.write("<td width='100' height='30'> <input type = 'submit' name='vnum' value='"&vnum&"' </td>")
      Response.write("</td>")
      Response.write("<td width='100' height='20'> "&vnam&" </td>")
      
	  Response.write("</td>")
      Response.write("<td width='500' height='100'> "&vq&" </td>")
      Response.write("</td>")
      Response.write("<td width='500' height='100'> "&va&" </td>")
	  Response.write("</tr>")
	  Response.write("</form>")
      Rs.Movenext
   Loop


   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
   
%>
</table>

</center>
</center>
</body>

