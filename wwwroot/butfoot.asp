
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css"> 
 

 #footer{
  position:fixed;
  left:0px;
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
</style>
</head>



<center>
<div id="footer">
      <table>
         <tr>
            <td colspan="4" align="right">
            <form action="용품결제.asp" method="post">
               <td><input type="text" name="용품번호" placeholder="용품번호 입력"/></td>
			   <td><input type="text" name="수량" placeholder="수량 입력"/></td>
               <td><input type="SUBMIT" value="구매하기"></td>   
            </form>      
                </td> 
         </tr>
      </table>

</div>

</center>