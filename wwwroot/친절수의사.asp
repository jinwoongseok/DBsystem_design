
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<center>

<%
  
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim Vaddress, inte
   Vaddress=request("vvadress")
   
   sql="SELECT TOP(5) V.Vnumber, V.Vname,V.HospitalAddr, COUNT(*) FROM CONSULT AS C, VET AS V WHERE C.Creview='친절한 상담에 만족합니다.' AND V.HospitalAddr LIKE '%"&Vaddress&"%' AND C.Vnumber=V.Vnumber GROUP BY V.Vnumber, V.Vname,V.HospitalAddr ORDER BY COUNT(*) DESC;"
   Set Rs=Dbcon.Execute(sql)
   
   response.write("<b>우리동네 친절 수의사</b>")
   response.write("<div id='우리동네 수의사'>")
   response.write("<table border=1px>")
	
   response.write("<tr>") 
   response.write("<td><b>순위</b></td>")
   response.write("<td><b>수의사이름</b></td>")
   response.write("<td><b>수의사번호</b></td>")
   response.write("<td><b>병원위치</b></td>")
     inte=0
	'SQL 실행
	do while not(Rs.Eof)
	    inte=inte+1
		response.write("<tr>")
		response.write("<td>" & inte & "</td>")
		response.write("<td>" & Rs("Vname") & "</td>")
		response.write("<td>" & Rs("Vnumber") & "</td>")
		response.write("<td>" & Rs("HospitalAddr") & "</td>")
		
		Rs.movenext
	Loop
    response.write("<div id='footer'><span>  <table class= 'best'> <tr> <td colspan='4' align='right'> <form action='수의사상담.asp' method='post' <td><input type='text' name='vnum' placeholder='수의사번호입력하세요'/></td>   <td><input type='SUBMIT' value='상담신청'></td></form> </td></tr></table></span></div>")
	
	response.write("</table>")
	response.write("</div>")

	
   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
   
%>
</center>



