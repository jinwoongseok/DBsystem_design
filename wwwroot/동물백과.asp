
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<center>

<%
  
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim rid,rsex,rtype
 
   
   sql="select * from ENCYCLOPEDIA AS E , VET AS V WHERE E.Vnumber=V.Vnumber;"
   Set Rs=Dbcon.Execute(sql)
   response.write("<b>반려백과</b>")
	response.write("<div id='반려백과'>")
	response.write("<table border=1px>")
	
	 response.write("<tr>")
   response.write("<td><b>백과번호</b></td>")
   response.write("<td><b>제목</b></td>")
   response.write("<td><b>내용</b></td>")
   response.write("<td><b>수의사 이름</b></td>")
   response.write("<td><b>병원위치</b></td>")
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr>")
		response.write("<td>" & Rs("Enumber") & "</td>")
		response.write("<td>" & Rs("Etitle") & "</td>")
		response.write("<td>" & Rs("Econtents") & "</td>")
		response.write("<td>" & Rs("Vname") & "</td>")
		response.write("<td>" & Rs("HospitalAddr") & "</td>")
		
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	
   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
   
%>
</center>



