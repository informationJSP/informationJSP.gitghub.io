function checkValue(){
	var regphone =  /^01([0|1|6|7|8|9])-([0-9]{4})-([0-9]{4})$/;
	var regrade = /^([A-C]{1})$/;
	if(!Add.custname.value){
		alert("회원성명이 입력되지 않았습니다.");
		Add.custname.focus();
		return false;
	}else if(!Add.phone.value  || regphone.test(Add.phone.value) == false){
		alert("회원전화가 입력이 안됐거나 형식이 맞지 않습니다.\n\n (전화번호 입력시 -을 추가해야함)");
		Add.phone.focus();
		return false;
	}else if(!Add.address.value){
		alert("회원주소가 입력되지 않았습니다.");
		Add.address.focus();
		return false;
	}else if(!Add.joindate.value){
		alert("가입일자가 입력되지 않았습니다.");
		Add.joindate.focus();
		return false;
	}else if(!Add.grade.value || regrade.test(Add.grade.value) == false){
		alert("고객등급이 입력되지 않았습니다.");
		Add.grade.focus();
		return false;
	}else if(!Add.city.value){
		alert("도시코드가 입력되지 않았습니다.");
		Add.city.focus();
		return false;
	}else{
		alert("회원등록이 완료 되었습니다!");
		return true;
	}
}
function checkSearch(custno){
	var recustno = /^([1-9]{1})([0-9]{5})$/
	msg="조회 하시겠습니까?";
	if(searchF.custno.value && recustno.test(searchF.custno.value) == true){
		switch(confirm(msg)){
			case true:
				alert("조회");
				location.href="search.jsp?custno="+custno;
				return true;
			default:
				alert("취소");
				return false;
		}
	} else {
		alert("입력형식이 올바르지 않습니다.");
		return false;
	}
}
function checkDel(custno) {
	msg="삭제하시겠습니까?";
	if(confirm(msg) == true){
		alert("삭제");
		location.href="delete.jsp?custno="+custno;
		return true;
	} else {
		alert("취소");
		return false;
	}
}
function checkUpdate(){
	var regphone =  /^01([0|1|6|7|8|9])-([0-9]{4})-([0-9]{4})$/;
	var regrade = /^([A-C]{1})$/;
	if(!update.custname.value){
		alert("회원성명이 입력되지 않았습니다.");
		Add.custname.focus();
		return false;
	}else if(!update.phone.value  || regphone.test(update.phone.value) == false){
		alert("회원전화가 입력이 안됐거나 형식이 맞지 않습니다.\n\n (전화번호 입력시 -을 추가해야함)");
		Add.phone.focus();
		return false;
	}else if(!update.address.value){
		alert("회원주소가 입력되지 않았습니다.");
		Add.address.focus();
		return false;
	}else if(!update.joindate.value){
		alert("가입일자가 입력되지 않았습니다.");
		Add.joindate.focus();
		return false;
	}else if(!update.grade.value || regrade.test(Add.grade.value) == false){
		alert("고객등급이 입력되지 않았습니다.");
		Add.grade.focus();
		return false;
	}else if(!update.city.value){
		alert("도시코드가 입력되지 않았습니다.");
		Add.city.focus();
		return false;
	}else{
		alert("회원수정이 완료 되었습니다!");
		return true;
	}
}