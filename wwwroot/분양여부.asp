
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
      <td width="100" height="20">내 동물</td></td>
      <td width="200" height="20">분양여부 변경</td>
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
   Dim rid, pname, padopt,i
   
   rid = session("id_session")
   sql ="SELECT * FROM PET  WHERE id='"&rid&"';"
   i=0
   Set Rs=Dbcon.Execute(sql)
   do while not(Rs.Eof)
      i=i+1
      pname=Rs("Aname")
      padopt=Rs("adopt")
      
      Response.write("<form action='분양여부변경확인.asp', method = 'get'>")
      Response.write("<tr>")
	  Response.write("<td width='150' height='20'><input type='radio' name='pname' value="&pname&"> '"&pname&"'<br>")	   
  
      Response.write("</tr>")
	    
  
      Rs.Movenext
   Loop
    Response.write("</td>")
      Response.write("<td width='100' height='20'>  <td><select name='padopt'><option>O</option><option>X</option></select></td>") 
	  Response.write("</td>")
      Response.write(" <td> <button type='submit' class='btn btn-success'><i class='fa fa-user-plus'></i> 변경</button>")
      Response.write("</td>")
    
     Response.write("</form>")
   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
   
%>

</body>

