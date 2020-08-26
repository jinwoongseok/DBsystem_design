
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


<form id="registerForm" action="친절수의사.asp" method="post">

<div class="container">
         <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>자신이 위치한 시를 고르시오</h2>
                <hr>
            </div>
        </div>
      
      
        <div class="row">
		<div class="col-md-3"></div>
            <td> </td>
               <td><select name="vvadress"><option>인천광역시</option><option>서울특별시</option><option>광주광역시</option><option>대전광역시</option></select></td>
            </div>
            <div class="col-md-6">
    
		</div>
         
		
						
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <button type="submit" class="btn btn-success"><i class="fa fa-user-plus"></i> 검색</button>
            </div>
        </div>

    </form>
	

</div>
</body>

   <!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->
