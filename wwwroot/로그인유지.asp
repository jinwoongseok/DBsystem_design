<&
Response.write("<div align='right'>")
Response.Write("<table border='1'>")
Response.write("<tr>")
Response.Write("<td><a href='로그인후_홈페이지.asp'>")
Response.Write("홈으로")
Response.Write("</a></td>")
Response.Write("<td>")
Response.Write(session("id_session"))
Response.Write("님")
Response.Write("</td>")
Response.Write("<td>")
Response.Write("My point: ")
Response.Write(session("point_session"))
Response.Write("</td>")
Response.Write("<td><a href='로그아웃.asp'>")
Response.Write("로그아웃")
Response.Write("</a></td>")
Response.Write("</tr>")
Response.Write("</table>")
Response.Write("</div>")
Response.write("<br/><br/><br/>")
end if
%>