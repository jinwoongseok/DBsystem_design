


  <!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->

<%
    Set Dbcon = Server.CreateObject("ADODB.Connection")
    Dbcon.Open Application("dbConnect")

    if Dbcon.state<> 1 then
        Response.write
        Response.end
    End if

    Dim rid, padopt
    rid = session("id_session")
    padopt = request("padopt")
	
    sql="SELECT count(*) FROM MEMBER AS M, PET AS P WHERE M.id='" & rid & "' AND M.id=P.id"
    Set Rs = Dbcon.Execute(sql)

    if Rs("") =0 then
        Response.Write "<script> alert('당신은 애완동물을 등록하지 않았습니다..'); history.back(-1);</script>"
        Response.end
    End if

    sql= "UPDATE PET SET adopt= '"& padopt&"' WHERE id='"&rid&"';"
    
    Set Rs = Dbcon.Execute(sql)

    Response.Write "<script> alert('완료되었습니다!');</script>"
    Response.Write "<script> location.href='home.asp';</script>"

    Dbcon.Close()
    Set Dbcon = Nothing
    Set Rs = Nothing
    
%>
   <!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->
