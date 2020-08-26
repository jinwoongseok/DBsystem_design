

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<html>
<head>
<style>
.Bsearch
{
	position : absolute;
	top : 150;
	left : 20;
	width : 150;
	height : 300;
	list-style : none;
}

.Bsearch li
{
	padding : 10px;
	border : 1;
	background-color : white;
}
.Bsearch li a
{	
	width:130;
	height:70;
	text-decoration : none;
	font-size : 20;
	color : black;
	background-color:#dddddd;
}
.Bsearch li a: hover
{
	background-color : blue;
}
.searchW
{
	position:absolute;
	left:400;
	top:100;
}
.Best
{
	position:relative;
	left:400;
}
</style>
<script>

</script>
</head>

<body>



<table class="best">
	<tr>
		<td width="250" height="20">삭제할 동물번호</td>
		<td width="150" height="20">이름</td>
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
	
    Dim rid, PRegNumber,Pname,Ptype,Psex,padopt
    rid = session("id_session")

	sql ="SELECT * FROM MEMBER AS M, PET AS P WHERE M.id='" & rid & "' AND M.id=P.id"
	set Rs = Dbcon.Execute(sql)
	do while not(Rs.Eof)
		PRegNumber=Rs("RegNumber")
	    Pname=Rs("Aname")
		
		Response.write("<form action='선택삭제.asp' method = 'get'>")
		Response.write("<tr>")
		Response.write("<td width='250' height='20'><input type = 'submit' name='PetID' value='"&PRegNumber&"'>")
		Response.write("</td>")
		Response.write("<td width='150' height='20'> "&Pname&" </td>")
		Response.write("</tr>")
		Response.write("</form>")
		Rs.Movenext
	Loop
	sql = ""
%>
</table>
<%
    Dbcon.Close()
    Set Dbcon = Nothing
    Set Rs = Nothing
%>
</body>
</html>
   <!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->