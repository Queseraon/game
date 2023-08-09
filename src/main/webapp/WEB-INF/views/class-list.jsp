<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>성적</th>
		</tr>
		<tbody id="tBody"></tbody>
	</table>
	<script>
		function getList() {
			const xhr = new XMLHttpRequest();
			xhr.open('GET','/class-info/list');
			xhr.onreadystatechange = function(){
				if(xhr.readyState === 4){
					if(xhr.status === 200){
						const list = JSON.parse(xhr.responseText);
						let html='';
						for(const map of list){
							html += '<tr>';
							html += '<td>'+map.ciNum+'</td>';
							html += '<td>'+map.ciName+'</td>';
							html += '<td>'+map.ciAge+'</td>';
							html += '<td>'+map.ciGrade+'</td>';
							html += '</tr>';
						}
						document.querySelector('#tBody').innerHTML = html;
					}
				}
			}
			xhr.send();
		}
		window.addEventListener('load',getList);
	</script>
</body>
</html>