<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 - request</title>
</head>

<body>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<a href="./RequestWebInfo.jsp?eng=Hello&han=안녕"> Get방식 전송</a>
	<br />
	<!--주소창에 정보를 담고 전송-->
	<form action="RequestWebInfo.jsp" method="post">
		<!--정보를 숨겨서 보냄-->
		영어 : <input type="text" name="eng" value="bye" /><br /> 한글 : <input
			type="text" name="han" value="잘가" /><br /> <input type="submit"
			value="POST 방식 전송" />
	</form>

	<h2>2. 클라이언트의 요청 매개변수 읽기</h2>
	<form method="post" action="RequestParameter.jsp">
		<!--post로 숨겨서 데이터 송출-->
		아이디 : <input type="text" name="id" value="" /><br /> 성별 : <input
			type="radio" name="sex" value="man" />남자<br /> <input type="radio"
			name="sex" value="woman" checked="checked" />여자<br />
		<!--초기값으로 체크-->
		<!--radio타입에 같은 이름일 경우 하나의 토글로 묶임-->
		관심사항 : <input type="checkbox" name="favo" value="eco" />경제<br /> <input
			type="checkbox" name="favo" value="pol" checked="checked" />정치<br />
		<input type="checkbox" name="favo" value="ent" />연예<br /> 자기소개 :
		<textarea name="intro" cols="30" rows="4"></textarea>
		<br /> <input type="submit" value="전송하기" />
	</form>
	<h2>3. HTTP 요청 헤더 정보읽기</h2>
	<a href="RequestHeader.jsp">요청헤더 정보읽기</a>
</body>
</html>