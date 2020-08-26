
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<center>

<%
  
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim rid,rsex,rtype
 
 
   rid = session("id_session")
   rsex = request("psex")
    rtype = request("ptype")
    sql="select * from  PET AS P , MEMBER AS M  WHERE P.sex='"&rsex&"' AND P.type='"&rtype&"' AND  adopt='O'  AND P.id=M.id;"
   Set Rs=Dbcon.Execute(sql)
   response.write("<b>분양가능 동물</b>")
	response.write("<div id='분양가능 동물'>")
	response.write("<table border=1px>")
	
	 response.write("<tr>")
   response.write("<td><b>성별</b></td>")
   response.write("<td><b>종류</b></td>")
   response.write("<td><b>동물이름</b></td>")
   response.write("<td><b>주인이름</b></td>")
   response.write("<td><b>주인연락처</b></td>")
	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr>")
		response.write("<td>" & Rs("sex") & "</td>")
		response.write("<td>" & Rs("type") & "</td>")
		response.write("<td>" & Rs("Aname") & "</td>")
		response.write("<td>" & Rs("Mname") & "</td>")
		response.write("<td>" & Rs("Mphone") & "</td>")
		
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	
   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
   
%>
</center>



