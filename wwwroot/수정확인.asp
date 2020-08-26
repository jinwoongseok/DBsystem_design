
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

    Dim rid, pid,psex,ptype,pname,padopt
    rid = session("id_session")
    pid = request("petid")
	psex = request("psex")
	ptype = request("pettype")
	pname = request("petname")
	padopt = request("padopt")
	
	if pid = ""  then
        Response.Write "<script> alert('동물ID는 필수 입력 항목입니다.'); history.back();</script>"
        Response.end
    End if

    if psex = "" then
        Response.Write "<script> alert('성별는 필수 입력 항목입니다.'); history.back();</script>"
        Response.end
    End if
	
	if ptype = "" then
		Response.Write "<script> alert('종은 필수 입력 항목입니다.'); history.back();</script>"
        Response.end
    End if

	if pname = "" then
		Response.Write "<script> alert('이름은 필수 입력 항목입니다.'); history.back();</script>"
        Response.end
    End if	
	if padopt = "" then
		Response.Write "<script> alert('입양여부은 필수 입력 항목입니다.'); history.back();</script>"
        Response.end
    End if
    
    sql = "select count(*) from PET where RegNumber = '" & pid & "'"

    Set Rs = Dbcon.Execute(sql)

    if Rs("") <> 0 then
        Response.Write "<script> alert('이미 등록된 등록번호입니다.'); history.back();</script>"
        Response.end
    End if

    sql = "insert into PET (RegNumber,id,sex,type,Aname,adopt) values ('{pid}', '{rid}', '{psex}', '{ptype}', '{pname}', '{padopt}')"
	sql = Replace(sql, "{pid}", pid)
    sql = Replace(sql, "{rid}", rid)
    sql = Replace(sql, "{psex}", psex)
    sql = Replace(sql, "{ptype}", ptype)
	sql = Replace(sql, "{pname}", pname)
    sql = Replace(sql, "{padopt}", padopt)
    Set Rs = Dbcon.Execute(sql)

    Response.Write "<script> alert('애완동물 등록이 완료되었습니다!');</script>"
    Response.Write "<script> location.href='home.asp';</script>"

    Dbcon.Close()
    Set Dbcon = Nothing
    Set Rs = Nothing
    
%>
   <!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->
