
<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css"> 
 
 #footer{
  position:fixed;
  left:400px;
  bottom:0px;
  width:100%;
  background:orange;
  line-height:10px;
  color:white;
 }
 #footer span{padding-left:20px;}
 /* fur ie6*/
 * html #footer{
  position:absolute;
  top:expression(((footer.offsetHeight)+(document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body.clientHeight)+(ignoreMe = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop))+'px');
 } 
 .Best
{
   position:relative;
   left:400;
}
</style>
</head>

 <body>
 <table class="best">
   <tr>
      <td width="100" height="20">내 동물</td></td>
      <td width="100" height="20">분양여부 변경</td>
      </tr>
</table>
<br/><br/>
<table class="best">

<%
  
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   
   if Dbcon.state<> 1 then
       Response.write
       Response.end
   End if
   Dim rid, pname, padopt
   padopt=request("padopt")
   pname=request("pname")
   rid = session("id_session")
     sql="SELECT count(*) FROM MEMBER AS M, PET AS P WHERE M.id='" & rid & "' AND M.id=P.id"
    Set Rs = Dbcon.Execute(sql)

    if Rs("") =0 then
        Response.Write "<script> alert('당신은 애완동물을 등록하지 않았습니다..'); history.back(-1);</script>"
        Response.end
    End if
   sql ="UPDATE PET SET adopt='"&padopt&"'WHERE  id='"&rid&"' AND Aname='"&pname&"' ;"
   Set Rs=Dbcon.Execute(sql)
   Response.Write "<script> alert('"&padopt&"   "&rid&"  "&pname&"  '); </script>"
   Response.Write "<script> location.href='회원정보.asp';</script>"


   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
   
%>

</body>

