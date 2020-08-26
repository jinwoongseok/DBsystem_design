
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<!DOCTYPE html>
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
</head>
<body>


<form id="registerForm" action="분양검색결과.asp" method="post">

<div class="container">
         <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>분양 가능한 애완동물 검색</h2>
                <hr>
            </div>
        </div>
      
      
        <div class="row">
		<div class="col-md-3"></div>
            <td> 종류 </td>
               <td><select name="ptype"><option>개</option><option>고양이</option><option>고슴도치</option><option>햄스터</option></select></td>
            
            <div class="col-md-2">
              <td> 성별 </td>
               <td><select name="psex"><option>M</option><option>W</option></select></td>
              </div>
			  <div class="col-md-2">                <button type="submit" class="btn btn-success"><i class="fa fa-user-plus"></i> 검색</button>
            </div>
		</div>
        
		
    </form>
	

</div>
</body>

   <!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->
