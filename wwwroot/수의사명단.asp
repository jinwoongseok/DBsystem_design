
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
<legend><strong font-size="14">수의사 상담</strong></legend>
 
<table class="best">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<center>

<%
  
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim Vaddress, inte
   Vaddress=request("vvadress")
   
   sql="select * from VET ;"
   Set Rs=Dbcon.Execute(sql)
   
   response.write("<b>수의사 명단</b>")
   response.write("<div id='우리동네 수의사'>")
   response.write("<table border=1px>")
	
   response.write("<tr>") 
   response.write("<td><b>수의사번호</b></td>")
   response.write("<td><b>수의사이름</b></td>")
   response.write("<td><b>비상연락처</b></td>")   
   response.write("<td><b>병원위치</b></td>")
     
	'SQL 실행
	do while not(Rs.Eof)
	    
		response.write("<tr>")
		response.write("<td>" & Rs("Vnumber") & "</td>")
		response.write("<td>" & Rs("Vname") & "</td>")
		
		response.write("<td>" & Rs("Vphone") & "</td>")
		response.write("<td>" & Rs("HospitalAddr") & "</td>")
		
		Rs.movenext
	Loop
	response.write("<div id='footer'><span>  <table class= 'best'> <tr> <td colspan='4' align='right'> <form action='수의사상담.asp' method='post' <td><input type='text' name='Vnum' placeholder='수의사번호입력하세요'/></td>   <td><input type='SUBMIT' value='상담신청'></td></form> </td></tr></table></span></div>")
	response.write("</table>")
	response.write("</div>")

	
   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
   
%>

</center>





</center>
</body>

