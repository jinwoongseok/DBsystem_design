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

    Dim id, pw, rpw2, name, address, phoneNumber, blank
    id = request("id")
    pw = request("pw")
   pw_ok = request("pw_ok")
   Mname = request("name")
   Mphone = request("phoneNumber")
   Maddress = request("address")

   ' if id = ""  then
        ' Response.Write "<script> alert('ID는 필수 입력 항목입니다.'); history.back();</script>"
        ' Response.end
    ' End if
   
    ' if pw = "" then
        ' Response.Write "<script> alert('비밀번호는 필수 입력 항목입니다.'); history.back();</script>"
        ' Response.end
    ' End if
   
   ' if name = "" then
      ' Response.Write "<script> alert('이름은 필수 입력 항목입니다.'); history.back();</script>"
        ' Response.end
    ' End if

    ' if pw <> pw_ok then
        ' Response.Write "<script> alert('비밀번호가 일치하지 않습니다.'); history.back();</script>"
        ' Response.end
    ' End if
    
    sql = "select count(*) from MEMBER where id = '" & id & "'"

    Set Rs = Dbcon.Execute(sql)

    if Rs("") <> 0 then
        Response.Write "<script> alert('이미 등록된 ID입니다.'); history.back();</script>"
        Response.end
    End if

    sql = "insert into MEMBER (id, password, Mphone, Maddress, Mname) values ( '{id}', '{pw}', '{phoneNumber}', '{address}', '{name}')"
    sql = Replace(sql, "{id}", id)
    sql = Replace(sql, "{pw}", pw)
    sql = Replace(sql, "{phoneNumber}", phoneNumber)
    sql = Replace(sql, "{address}", address)
   sql = Replace(sql, "{name}", name)

  

    Set Rs = Dbcon.Execute(sql)

   sql="select count(*) from MEMBER where id LIKE '% %'"
   
   Set Rs = Dbcon.Execute(sql)

   if Rs("") <>0 then
      sql="delete from MEMBER where id = '" & id & "'"
        Response.Write "<script> alert('ID에 공백은 허용되지 않습니다.'); history.back();</script>"
        Response.end
  
    End if
     Response.Write "<script> alert('회원가입 성공'); </script>"
    Response.Write "<script> location.href='login.html';</script>"

    Dbcon.Close()
    Set Dbcon = Nothing
    Set Rs = Nothing
    
%>