<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// 금액 입력란
int num = 0; 

// 파라미터로 입력받음
String snum1 = request.getParameter("num");
if (snum1 != null && snum1.equals("") == false) {
	num = Integer.parseInt(snum1);
}

int a = num/50000; // 5만원단위
int b = (num - (a*50000))/10000; // 1만원단위
int c = (num - (a*50000 + b*10000))/5000; // 5천원단위 
int d = (num - (a*50000 + b*10000 + c*5000))/1000;; // 1천원 단위

System.out.println(a);
System.out.println(b);
System.out.println(c);
System.out.println(d);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>금액계산</h2>
각 금액의 장수는
50000 =<%=a %>
10000 =<%=b %>
5000 =<%=c %>
1000 =<%=d %>
 
</body>
</html>