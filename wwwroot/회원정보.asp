<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<html lang="en">
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- Site Properties -->
    <title>Bootstrap 4 Register Form</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

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
</head>
<body>
<ul class="Bsearch">
	<li><a href="마이_상담기록.asp">상담기록</a></li>
	<li><a href="마이_구매내역.asp">구매내역</a></li>
	<li><a href="마이_기부내역.asp">기부내역</a></li>
</ul>

<form id="registerForm" action="수정확인.asp" method="post">

<div class="container">
         <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>마이페이지</h2>
                <hr>
            </div>
        </div>
      
      
        <div class="row">
            <div class="col-md-3 field-label-responsive">
            </div>
            <div class="col-md-6">
                <label for="user">ID:<%Response.write Session("id_session")%></label>
    
		</div>
            </div>   
		
			<div class="row">
            <div class="col-md-3 field-label-responsive">
            </div>
            <div class="col-md-6">
                <label for="petid">Name:<%Response.write Session("Mname_session")%></label>
               
            </div>
			<div class="col-md-3">
               
            </div>
			
			</div> 
			<div class="row">
            <div class="col-md-3 field-label-responsive">
            </div>
            <div class="col-md-6">
			
                <label for="user">Phone:<%Response.write Session("Mphone_session")%></label>
            </div><div class="col-md-3">
               
            </div>
			 
			</div>
            <div class="row">
            <div class="col-md-3 field-label-responsive">
            </div>
            <div class="col-md-6">
                  <label for="user">Address: <%Response.write Session("Maddress_session")%></label>
            </div>
            <div class="col-md-3">
               
            </div>
						 <div class="row">
            <div class="col-md-3 field-label-responsive">
            </div>
            <div class="col-md-6">
		

            </div>
            <div class="col-md-3">
               
            </div>
						
			</div>  
			</div>  
			
			
</div> 
    </form>
	

</div>                
	<%  Response.write("<div class='row'>  <div class='col-md-4'> </div><div class='col-md-6'> ---------애완동물 정보---------  </div><div class='col-md-3'> </div> </div>")
	
Set Dbcon = Server.CreateObject("ADODB.Connection")
    Dbcon.Open Application("dbConnect")

    if Dbcon.state<> 1 then
        Response.write
        Response.end
    End if

    Dim rid, PRegNumber,Pname,Ptype,Psex,padopt
    rid = session("id_session")

	
    sql="SELECT count(*) FROM MEMBER AS M, PET AS P WHERE M.id='" & rid & "' AND M.id=P.id"
    Set Rs = Dbcon.Execute(sql)
	
    if Rs("") >0 then
	sql="SELECT * FROM MEMBER AS M, PET AS P WHERE M.id='" & rid & "' AND M.id=P.id"
    Set Rs = Dbcon.Execute(sql)
	do while not(Rs.Eof)
	PRegNumber=Rs("RegNumber")
	Pname=Rs("Aname")
	Ptype=Rs("sex")
	Padopt=Rs("adopt")
	Response.write("<div class='row'>  <div class='col-md-4'> </div><div class='col-md-6'> -------------------------------  </div><div class='col-md-3'> </div> </div>")
		Response.write("<div class='row'>  <div class='col-md-4'> </div><div class='col-md-6'>   애완동물이름:"& PRegNumber &"  </div><div class='col-md-3'> </div> </div>")
		Response.write("<div class='row'>  <div class='col-md-4'> </div><div class='col-md-6'>   동물이름:"& Pname &"  </div><div class='col-md-2'> </div> </div>")
		Response.write("<div class='row'>  <div class='col-md-4'> </div><div class='col-md-6'>   동물종:"& Ptype &"  </div><div class='col-md-2'> </div> </div>")
		Response.write("<div class='row'>  <div class='col-md-4'> </div><div class='col-md-6'>   분양여부:"& Padopt &"  </div><div class='col-md-2'> </div> </div>")
		
		' Response.write("<div class='col-md-6'> <Pet ID: "& PRegNumber &" </div><div class='col-md-3'> </div> </div>")
		' Response.write(" </div>")
		' Response.write("<div class='row'>")
		' Response.write("애완동물이름: "& Pname &"")
		' Response.write(" </div>")
		' Response.write("<div class='row'>")
		' Response.write("동물 종:"& Ptype &"")
		' Response.write(" </div>")
		' Response.write("<div class='row'>")
		' Response.write("분양여부: "& Padopt &"")
		' Response.write(" </div>")

		
		Rs.Movenext
	Loop
	Response.write("<div class='row'>  <div class='col-md-4'> </div><div class='col-md-6'> -------------------------------  </div><div class='col-md-2'> </div> </div>")
	
	' Session("Reg_session")=Rs("RegNumber")
    ' Session("sex_session") = Rs("sex")
    ' Session("type_session") = Rs("type")
    ' Session("Aname_session") = Rs("Aname")
    ' Session("Adopt_session") = Rs("adopt")
    
    ' else
	 ' Session("Reg_session")="Empty"
    ' Session("sex_session") = "Empty"
    ' Session("type_session") = "Empty"
    ' Session("Aname_session") = "Empty"
    ' Session("Adopt_session") = "Empty"
	End if
	Dbcon.Close()
    Set Dbcon = Nothing
    Set Rs = Nothing
%> 
</body>

   <!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->
