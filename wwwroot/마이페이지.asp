
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


<form id="registerForm" action="수정확인.asp" method="post">

<div class="container">
         <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>애완동물 정보수정</h2>
                <hr>
            </div>
        </div>
      
      
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="user"><%Response.write Session("id_session")%></label>
            </div>
            <div class="col-md-6">
    
		</div>
            </div>   
		
			<div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="petid">애완동물 ID:</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <input type="text" name="petid" class="form-control" id="petid"
                               placeholder="Ex:인자 받아와서 넣어줘야댐" required autofocus>
                    </div>
                </div>
            </div> 
			</div> 
			<div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="sex">성별:  </label>
            </div>
            <div class="col-md-6">
                <td>  </td>
               <td><select name="psex"><option>W</option><option>M</option></select></td>
            </div> 
			</div>
<div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="pettype">애완동물 종: </label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <input type="text" name="pettype" class="form-control" id="pettype"
                               placeholder="" required autofocus>
                    </div>
                </div>
            </div> 
			</div> 
<div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="petname">애완동물 이름: </label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <input type="text" name="petname" class="form-control" id="petname"
                               placeholder="" required autofocus>
                    </div>
                </div>
            </div> 
			</div> 	
             <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="adopt">분양여부: </label>
            </div>
            <div class="col-md-6">
                <td> </td>
               <td><select name="padopt"><option>O</option><option>X</option></select></td>
            </div> 
			</div>			
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <button type="submit" class="btn btn-success"><i class="fa fa-user-plus"></i> 등록</button>
            </div>
        </div>

    </form>
	

</div>
</body>

   <!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->
