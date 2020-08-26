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
        <a class="nav-link" href="home.asp">Home <span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item">
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          수의사
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="우리동네수의사.asp">우리동네 추천 수의사</a>
          <a class="dropdown-item" href="수의사명단.asp">수의사 상담</a>
          
        </div>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="동물백과.asp">반려백과</a>
      </li>     
     <li class="nav-item">
        <a class="nav-link" href="기부.asp">기부</a>
      </li>     
     <li class="nav-item">
        <a class="nav-link" href="용품구매.asp">용품구매</a>
      </li>      
     <li class="nav-item">
        <a class="nav-link" href="분양.asp">분양</a>
      </li>
     <li class="nav-item">
        <a class="nav-link" href="자유게시판.asp">자유게시판</a>
      </li>   
     
    </ul>


    <ul class="nav navbar-nav navbar-right">
   
     <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          My pet
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="마이페이지.asp">등록</a>
          <a class="dropdown-item" href="분양여부.asp">분양여부변경</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="전체삭제.asp">동물정보삭제</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="회원정보.asp">마이페이지</a>
      </li>
            <li class="nav-item">
        <a class="nav-link" href="로그아웃.asp">로그아웃</a>
      </li>
      </ul>
  </div>
  
</nav>
   </body>
</html>