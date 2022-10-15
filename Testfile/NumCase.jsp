<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ page import="Quest.NumCase"%> --%>
<%
int num = 0;
String snum1 = request.getParameter("num");
if (snum1 != null && snum1.equals("") == false) {
	num = Integer.parseInt(snum1);
 }
// NumCase a = new NumCase(num);
// int b = a.sum();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%=b %> --%>
<!-- <br> -->
<%-- <%=a.sum() %> --%>
</body>
</html>