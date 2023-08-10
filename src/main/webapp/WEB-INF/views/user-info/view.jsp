<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>유저 상세화면</h3>
이름 : <span id="uiName"></span><br>
생년월일 : <span id="uiBirth"></span><br>
소개 : <span id="uiDesc"></span><br>
가입일 : <span id="credat"></span><br>
<button type="button" onclick="goPage">수정</button>
<button>삭제</button>
<script>
	function goPage(){
		location.href='/views/user-info/update?uiNum=${param.uiNum}';
	}
	window.addEventListener('load',function(){
		const xhr = new XMLHttpRequest();
		xhr.open('GET','/user-info/view?uiNum=${param.uiNum}');
		xhr.onreadystatechange = function() {
			if(xhr.readyState===4){
				if(xhr.status===200){
					const obj = JSON.parse(xhr.responseText);
					for(const key in obj){
						document.querySelector('#' + key).innerText = obj[key];
					}
				}
			}
		}
		xhr.send();
	})
</script>
</body>
</html>