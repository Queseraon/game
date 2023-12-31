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
			<th>이름</th>
			<th>나이</th>
			<th>주소</th>
		</tr>
		<tbody id="tBody"></tbody>
	</table>
	<script>
		function getList(){
			const xhr = new XMLHttpRequest();
			xhr.open('GET','/list');
			xhr.onreadystatechange = function(){
				if(xhr.readyState === 4){
					if(xhr.status === 200){
						const obj = JSON.parse(xhr.responseText);
						let html="";
						for(const list of obj){
							html+='<tr>';
							html+='<td>' + list.name + '</td>';
							html+='<td>' + list.age + '</td>';
							html+='<td>' + list.address + '</td>';
							html+='</tr>';
						}
						document.querySelector("#tBody").innerHTML = html;
					}
				}
			}
			xhr.send();
		}
		window.addEventListener('load', getList);
	</script>
</body>
</html>