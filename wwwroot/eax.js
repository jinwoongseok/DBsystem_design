

window.onload = function (){
document.registerForm.submitbuton.onclick = function(){
	var registerForm= document.registerForm
	var id= registerForm.id.value;
	var pw= registerForm.pw.value;
	var pw_ok=registerForm.pw_ok.value;
	var name= registerForm.name.value;
	var phoneNumber = registerForm.phoneNumber.value;
	var address = registerForm.address.value;
	var submitbuton=registerForm.submitbuton.value;
	var regex;
    var re = /^[a-zA-Z0-9]{6,15}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
    var re2 = /^[a-zA-Z0-9]{6,15}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
    var re3 =/^[가-힣a-zA-Z]+$/;
	if( id=="")  {alert ("ID를 입력해주세요 js"); return false;}
	if( pw=="")  {alert ("비밀번호를 입력해주세요sa"); return false;}
	if( pw_ok=="")  {alert ("비밀번호 확인을 입력해주세요js"); return false;}
	if( name=="")  {alert ("이름을 확인하시오 js"); return false;}
	if( phoneNumber=="")  {alert ("전화번호를 입력해주세요 js"); return false;}
	if( address=="")  {alert ("주소를 입력해 주세요 js"); return false; }
	
	if( pw!=pw_ok)  {alert ("비밀번호와 비밀번호 확인이 다릅니다. js");  return false; }
	
	regex=/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
    if(regex.test(phoneNumber) === false){
	alert("잘못된 전화번호입니다.");
	return false;
	 
	}
	if(re.test(id)===false){
		alert("잘못된 ID양식 입니다.");
		
		return false;
	}
	if(re2.test(pw)===false){
	alert("잘못된 비밀번호 양식입니다.");
	
	return false;
	}
	if( re3.test(name)=== false){
	alert("잘못된 이름 양식입니다.");
	return false;
	
	}

    alert("회원 가입 완료");

}
}
