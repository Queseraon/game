<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/common/head.jsp"/>
</head>
<body>
<div class="container">
		<h3>유저 리스트</h3>
		<form method="GET">
		<select name="searchType">
			<option value="1">제목</option>
			<option value="2">아이디</option>
		</select>
		<input type="text" name="searchStr" placeholder="검색어">
		<button>검색</button>
		</form>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">이름</th>
					<th scope="col">아이디</th>
					<th scope="col">비밀번호</th>
				</tr>
			</thead>
			<tbody id="tBody">
			</tbody>
				<tr>
					<td colspan="4" align="right">
						<button type="button" class="btn btn-primary" onclick="goPage('/board-info/insert')">등록</button>
					</td>
				</tr>
		</table>
	</div>
<script>
	const loadFunc = function() {
		const xhr = new XMLHttpRequest();
		xhr.open('GET', '/user-info/list?');
		xhr.onreadystatechange = function(){
			if(xhr.readyState === 4){
				if(xhr.status === 200){
					
					const obj = JSON.parse(xhr.responseText);
					let html=''; 
					for(const user of obj){
						html += '<tr>';
						html += '<td>'+ user.uiNum +'</td>';
						html += '<td>'+ user.uiName +'</td>';
						html += '<td>'+ user.uiId +'</td>';
						html += '<td>'+ user.uiPwd +'</td>';
						html += '</tr>';
					}
					document.querySelector('#tBody').innerHTML = html;
				}
			}
		}
		xhr.send();
	}
	window.addEventListener('load', loadFunc);
</script>
</body>
</html>