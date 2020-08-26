<%@Language="VBScript" CODEPAGE="65001" %>
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>
<%
  session.contents.remove("id")
  session.contents.remove("password_session")
  session.contents.remove("Mphone_session")
  session.contents.remove("Maddress_session")
  session.contents.remove("Mname_session")  
  Session.Contents.RemoveAll()
  Response.Write "<script>alert('로그아웃되었습니다');</script>"
  Response.Write "<script>location.href='login.html';</script>"


  
  
    
%>