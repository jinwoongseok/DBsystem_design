<%@Language="VBScript" CODEPAGE="65001" %>

<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	</head>
	<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">수의사 상담</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">반려백과</a>
      </li>     
	  <li class="nav-item">
        <a class="nav-link" href="#">기부</a>
      </li>     
	  <li class="nav-item">
        <a class="nav-link" href="#">용품구매</a>
      </li>      
	  <li class="nav-item">
        <a class="nav-link" href="#">분양</a>
      </li>
	
     
    </ul>


	 <ul class="nav navbar-nav navbar-right">
   
	  <li class="nav-item">
        <a class="nav-link" href="#">마이페이지</a>
      </li> 
	    	  <li class="nav-item">
        <a class="nav-link" href="#">로그아웃</a>
      </li>
      </ul>
  </div>
  
</nav>

		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">.hello</div>
			<div class="col-md-3"></div>
		</div>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<table class="table">
					<th>1</th>
					<th>2</th>
					<tr>
						<td>1</td>
						<td>2</td>
					</tr>
				</table>
			</div>
			<div class="col-md-3"></div>
		</div>
		<div class ="row">
		<div class ="col-md-3"></div>
		<div class ="col-md-6">
			<form>
				<div class ="row">
					<div class ="col-md-6">
						<div class="form-group">
							<label for="exampleInputEmail1">이메일 주소</label>
							<input type="email" class="form-control" id="exampleInputEmail1" placeholder="이메일을 입력하세요">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">암호</label>
					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="암호">
				</div>
				
				<div class="form-group">
					<label for="exampleInputFile">파일 업로드</label>
					<input type="file" id="exampleInputFile">
					<p class="help-block">여기에 블록레벨 도움말 예제</p>
				</div>
				
				<div class="checkbox">
					<label>
					<input type="checkbox"> 입력을 기억합니다
					</label>
				</div>
				
				<button type="submit" class="btn btn-primary">제출</button>
			
			</form>
	
		</div>
		<div class ="col-md-3"></div>
		</div>
	</body>
</html>