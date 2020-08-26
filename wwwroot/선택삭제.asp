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

     Dim rid
     rid = request("PetID")

	 sql="DELETE FROM PET WHERE RegNumber='" & rid & "'"
	 Set Rs = Dbcon.Execute(sql)
	
  
     Response.Write "<script> alert('해당 동물 정보가 삭제되었습니다.'); </script>"
	  Response.Write "<script>location.href='전체삭제.asp';</script>"
        Response.end

	 Dbcon.Close()
    Set Dbcon = Nothing
     Set Rs = Nothing
 %> 