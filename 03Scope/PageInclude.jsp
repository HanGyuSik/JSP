<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="common.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Include 페이지</h4>
	<%
	Integer pInteger2 = (Integer) (pageContext.getAttribute("pageInteger"));		// 변수에 2를 붙인 이유 : 이 파일은 main 파일로 삽입되기 때문에 이름이 중복선언으로 판별
	//String pString2 = pageContext.getAttribute("pageInteger").toString();			// 중복선언으로 에러가 발생을 막기위해
	Person pPerson2 = (Person) (pageContext.getAttribute("pagePerson"));
	%>
	<ul>
		<li>Integer 객체 : <%=pInteger2%></li>
		<li>String 객체 : <%=pageContext.getAttribute("pageString")%></li>		<!-- 문자열과 기본타입의 래퍼형 클래스는 그대로 출력 가능 -->
		<li>Person 객체 : <%=pPerson2.getName()%>, <%=pPerson2.getAge()%></li>
	</ul>
</body>
</html>