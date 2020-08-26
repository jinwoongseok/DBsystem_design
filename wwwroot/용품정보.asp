
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

<fieldset class="result_search" style="width:600" style="height:200">
<legend><strong font-size="14">상품의 후기</strong></legend>
<table>
     <tr>
		<td width="300" height="10">  <%Dim bbgname
		bbgname=request("bgname")
		Response.write (""&bbgname&"")%></label></td>
		
	</tr>
	<tr>	<td width="300" height="40">  <%Response.write (" ")%></label></td>
		</tr>
	<tr>
		<td width="100" height="20">ID</td>
		<td width="300" height="20">후기내용</td>
		<td width="200" height="20">구매날짜</td>
	</tr>
	<br/>
<br/><br/>

<%
  
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   
   if Dbcon.state<> 1 then
       Response.write
       Response.end
   End if 
   Dim rid, bgnumber, bgname,bgreview,bgDate
   
   rid = session("id_session")
   bgname=request("bgname")
   Session("Gname_session")=bgname
   sql= "SELECT * FROM GOODS WHERE Gname= '"&bgname&"';"
   Set Rs=Dbcon.Execute(sql)
   bgnumber=Rs("Gnumber")
   sql= "SELECT * FROM BUY WHERE Gnumber='"&bgnumber&"' AND Breview IS NOT NULL ORDER BY BuyDate DESC;"
   Set Rs=Dbcon.Execute(sql)
    
   do while not(Rs.Eof)
     bgreview=Rs("Breview")
     bgDate=Rs("BuyDate")
     uid=Rs("id")
      Response.write("<tr>")

      Response.write("<td width='100' height='20'> "&uid&" </td>")
      Response.write("</td>")
      Response.write("<td width='300' height='20'> "&bgreview&" </td>")
      Response.write("</td>")
      Response.write("<td width='200' height='20'> "&bgDate&" </td>")
      Response.write("</td>")
     Response.write("</tr>")
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
            <form action="용품후기_입력.asp" method="post">
               <td><input type="text" name="Greview" placeholder="후기를 남겨주세요"/></td>
            
               <td><input type="SUBMIT" value="입력"></td>   
            </form>      
                </td> 
         </tr>
      </table>
</span>
</div>

</center>
</center>
</body>
