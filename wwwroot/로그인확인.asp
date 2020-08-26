<%@Language="VBScript" CODEPAGE="65001" %>

<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>
<%
    Set Dbcon = Server.CreateObject("ADODB.Connection")
    Dbcon.Open Application("dbConnect")

    if Dbcon.state<> 1 then
        Response.write
        Response.end
    End if

    Dim uid, upw

    uid = request("username")
    upw = request("password")
    sql = "select count(*) from MEMBER where id = '" & uid & "' and password = '" & upw & "'"

    Set Rs = Dbcon.Execute(sql)

    if  Rs("") = 1 then
	sql="SELECT * FROM MEMBER  WHERE id='" & uid & "'"
       Set Rs = Dbcon.Execute(sql)

        Session("id_session") = Rs("id")
        Session("password_session") = Rs("password")
        Session("Mphone_session") = Rs("Mphone")
        Session("Maddress_session") = Rs("Maddress")
		Session("Mname_session") = Rs("Mname")
		session.timeout = 30
		Response.Write "<script>alert('로그인되었습니다');</script>"
        Response.Write "<script>location.href='home.asp';</script>"
    else
        Response.Write "<script> alert('ID 혹은 비밀번호를 다시 확인해 주세요'); history.back(-1);</script>"
        Response.end
		END if
    



    Dbcon.Close()
    Set Dbcon = Nothing
    Set Rs = Nothing
    
%>