<%@Language="VBScript" CODEPAGE="65001" %>
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <script src="eax.js"></script>
    <!-- Site Properties -->
    <title>회원가입</title>
    
    <!-- Stylesheets -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
</head>
<body>


<form id="registerForm" name="registerForm" action="register_ok.asp" method="post">

<div class="container">
         <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>회원가입</h2>
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="user">ID</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
                        <input type="text" name="id" class="form-control" id="id"
                               placeholder="영문숫자4~8" required>
                    </div>
                </div>
            </div>
        </div>
		
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="pw">Password</label>
            </div>
            <div class="col-md-6">
                <div class="form-group has-danger">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
                        <input type="password" name="pw" class="form-control" id="pw"
                               placeholder="영문숫자4~10" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="pw_ok">Confirm Password</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem">
                            <i class="fa fa-repeat"></i>
                        </div>
                        <input type="password" name="pw_ok" class="form-control"
                               id="pw_ok" placeholder="영문숫자4~10" required>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="name">이름</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <input type="text" name="name" class="form-control" id="name"
                               placeholder="홍길동" required autofocus>
                    </div>
                </div>
		</div>
            </div>   
			
			<div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="phoneNumber">연락처</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <input type="text" name="phoneNumber" class="form-control" id="phoneNumber"
                               placeholder="010-0000-0000" required autofocus>
                    </div>
                </div>
            </div> 
			</div> 
             <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="address">주소</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <input type="text" name="address" class="form-control" id="address"
                               placeholder="서울특별시~" required autofocus>
                    </div>
                </div>
            </div> 
			</div> 
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
              <button name="submitbuton"id="submitbuton"><i class="fa fa-user-plus"></i> 회원가입</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>