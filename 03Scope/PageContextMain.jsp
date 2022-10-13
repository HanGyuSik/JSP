<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="common.Person"%>
<%
pageContext.setAttribute("pageInteger", 1000); 	//	오타가 날 경우 밑에 null값을 넣을려고 하는 경우 발생
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));	//pageContext라는 객체에 setAttribute메서드 적용(Stringname + object값)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 영역</title>
</head>
<body>
	<h2>page 영역의 속성값 읽기</h2>
	<%	// 속성값 읽기
	Integer pInteger = (Integer) (pageContext.getAttribute("pageInteger"));
// int = 자료형 데이터를 넣어야하지만 위의 오타로 인해 null값을 강제로 넣을려고 하는 경우 발생, 미리 대비하기 위해 객체형으로 선언
	String pString = pageContext.getAttribute("pageString").toString();
	Person pPerson = (Person) (pageContext.getAttribute("pagePerson"));
	%>
	<ul>
		<li>Integer 객체 : <%=pInteger%></li>		<!-- 위의 값 호출 -->
		<li>String 객체 : <%=pString%></li>
		<li>Person 객체 : <%=pPerson.getName()%>, <%=pPerson.getAge()%></li>
	</ul>
	
	<h2>include된 파일에서 페이지 영역읽어오기</h2>
	<%@ include file = "PageInclude.jsp" %>
	
	<h2>페이지 이동 후 page영역 읽어오기</h2>
	<a href = "PageLocation.jsp">PageLocation.jsp 바로가기</a>
</body>
</html>