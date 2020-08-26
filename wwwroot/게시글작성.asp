<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<!DOCTYPE html>
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>

<%  Dim vn
  vn=request("vnum")
  Session("Vnum_session")=vn
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css"> 
 >
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
.result_search
{
   position:relative;
   left : 400;
}
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

<fieldset class="result_search" style="width:600" style="height:200">
<legend><strong font-size="14">게시글 작성</strong></legend>
<table>
<center>
      
         <tr>
            <td colspan="4" align="right">
            <form action="게시글작성완료.asp" method="post">
            <tr>
			<td><textarea  style='width:500; height:50;' name="ft" placeholder = "제목을 입력해주세요" rows="5" cols="5"></textarea></td>
			</tr>
            <tr>
			<td><textarea  style='width:500; height:200;' name="fc" placeholder = "내용을 입력해주세요" rows="5" cols="5"></textarea></td>
			</tr>			
            <td><input type="SUBMIT" value="작성"></td>   
            </form>      
            </td> 
         </tr>
      </table>

</center>

</body>