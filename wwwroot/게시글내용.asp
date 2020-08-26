
<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css"> 
 >
.Bsearch
{
	position : absolute;
	top : 150;
	left : 20;
	width : 150;
	height : 300;
	list-style : none;
}

.Bsearch li
{
	padding : 10px;
	border : 1;
	background-color : white;
}
.Bsearch li a
{	
	width:130;
	height:70;
	text-decoration : none;
	font-size : 20;
	color : black;
	background-color:#dddddd;
}
.Bsearch li a: hover
{
	background-color : blue;
}
.searchW
{
	position:absolute;
	left:400;
	top:100;
}
.result_search
{
	position:relative;
	left : 400;
}
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

<fieldset class="result_search" style="width:600" style="height:100">
<legend><strong font-size="14">게시물 내용</strong></legend>
<table>
		<td width="300" height="20">제목</td>
		<td width="100" height="20">ID</td>

<%
  
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   
   if Dbcon.state<> 1 then
       Response.write
       Response.end
   End if 
   Dim rid, fnum, fptitle, fpcontents, fpwriter,com
   
   rid = session("id_session")
   fnum=request("fpnumber")
   Session("fpnum_session")=fnum
   sql= "SELECT * FROM FREEPOST WHERE Fnumber= '"&fnum&"';"
   Set Rs=Dbcon.Execute(sql)
   'do while not(Rs.Eof)
     fpwriter=Rs("id")
	 Session("wid_session")=fpwriter
	 fptitle=Rs("Ftilte")
     fpcontents=Rs("Fcontents")
      Response.write("<tr>")
      Response.write("<td width='300' height='20'> "&fptitle&" </td>")
      Response.write("</td>")
      Response.write("<td width='150' height='20'> "&fpwriter&" </td>")
      Response.write("</td>")
	  
	  Response.write("<tr>")
	  Response.write("</tr>")
	  Response.write("<table border='1' width='600' height='600'>")
	Response.write("<tr>")
      Response.write("<td width='600' height='20'> "&fpcontents&" </td>")
	Response.write("</tr>")
	Response.write("</table>")
	 Response.write("</tr>")
    'Rs.Movenext
    'Loop
	Response.write("<div class='row'>  <div class='col-md-4'> </div><div class='col-md-4'> 댓글정보 </div><div class='col-md-4'> </div> </div>")
   sql= "SELECT * FROM COMMENT WHERE Fnumber= '"&fnum&"';"
   Set Rs=Dbcon.Execute(sql)
    do while not(Rs.Eof)
	CMcontents=Rs("CMcontents")
    writerID=Rs("writerID")

    Response.write("<div class='row'>  <div class='col-md-1'> </div><div class='col-md-7'>  "&CMcontents&"  </div><div class='col-md-4'> ID : "&writerID&" </div> </div>")
    Rs.Movenext
    Loop
      'DB닫기
   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing

%>
<table class="best">

<center>
<div id="footer"><span>
      <table class= "best">
         <tr>
            <td colspan="4" align="right">
            <form action="게시글댓글_입력.asp" method="post">
               <td><input type="text" name="com" placeholder="댓글달기"/></td>
            
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
